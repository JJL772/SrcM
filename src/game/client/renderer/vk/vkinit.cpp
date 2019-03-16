/*

vkinit.cpp

Vulkan initialization code

*/
#include "vk.h"
#include "cbase.h"
#include "renderer/window.h"

//////////////////////////////
// X11 includes
#include <X11/Xlib.h>
//////////////////////////////

/////////////////////////////
// Vulkan includes
#include <vulkan/vulkan.h>
#include <vulkan/vulkan_xlib.h>
#include <vulkan/vk_layer.h>
#include <vulkan/vk_platform.h>
#include <vulkan/vk_sdk_platform.h>
////////////////////////////

//I am so sorry
#define CHECK_VK_RESULT(x)	if(x != VK_SUCCESS) { ConColorMsg(Color(0, 255, 0), "Error during initialization of Vulkan renderer!"); 	\
								this->ReportError(x);	\
								return; }


void VkRenderer::Initialize()
{
	Msg("==================================");
	Msg("Initializing Vulkan renderer...");

	uint32_t count = 0;

	//
	// Gets the validation layers that will be used for debug mode
	//
	//
	CHECK_VK_RESULT(vkEnumerateInstanceLayerProperties(&count, NULL));
	VkLayerProperties* layerProps = (VkLayerProperties*)malloc(sizeof(VkLayerProperties) * count);
	CHECK_VK_RESULT(vkEnumerateInstanceLayerProperties(&count, layerProps));

	DevMsg("Supported layers:");
	for(int i = 0; i < count; i++)
	{
		DevMsg("\t%s: version %u", layerProps[i].layerName, layerProps[i].specVersion);
		if(layerProps[i].layerName == "VK_LAYER_LUNARG_core_validation")
			SupportedLayers.vk_lunarg_basic = true;
	}

	uint32_t layerCount;

#ifdef _DEBUG
	//
	// Enable the basic validation layer if possible
	//
	layerCount = 1;
	const char* enabledLayers[] = {
			"VK_LAYER_LUNARG_core_validation"
	};
#else
	layerCount = 0;
	const char* enabledLayers[] = {};
#endif

	//
	// Gets and verifies that the gpu supports the required extensions
	// For now we need the surface and swapchain extensions + win32 surface for windows or xlib for linux
	//
	CHECK_VK_RESULT(vkEnumerateInstanceExtensionProperties(NULL, &count, NULL));
	VkExtensionProperties* props = (VkExtensionProperties*)malloc(sizeof(VkExtensionProperties) * count);
	CHECK_VK_RESULT(vkEnumerateInstanceExtensionProperties(NULL, &count, props));

	Msg("Supported extensions:");
	for(int i = 0; i < count; i++)
	{
		Msg("\t%s: version %u", props[i].extensionName, props[i].specVersion);
	}

	for(int i = 0; i < count; i++)
	{
		if(memcmp(props[i].extensionName, VK_KHR_SURFACE_EXTENSION_NAME, sizeof(VK_KHR_surface)) == 0)
			SupportedExtensions.vk_khr_surface = true;
#ifdef _POSIX
		else if(memcmp(props[i].extensionName, VK_KHR_XLIB_SURFACE_EXTENSION_NAME, sizeof(VK_KHR_SURFACE_EXTENSION_NAME)) == 0)
			SupportedExtensions.vk_khr_xlib_surface = true;
#endif
		else if(memcmp(props[i].extensionName, VK_KHR_SWAPCHAIN_EXTENSION_NAME, sizeof(VK_KHR_SWAPCHAIN_EXTENSION_NAME) == 0))
			SupportedExtensions.vk_khr_swapchain = true;
#ifdef _WINDOWS
		else if(memcmp(props[i].extensionName, VK_KHR_WIN32_SURFACE_EXTENSION_NAME, sizeof(VK_KHR_WIN32_SURFACE_EXTENSION_NAME)) == 0)
			supportedExtensions.vk_khr_win32_surface = true;
#endif
	}

#ifdef _WINDOWS
	if(!supportedExtensions.vk_khr_win32_surface)
	{
		Error("Device doesn't support the necessary extensions. Is your driver up to date?");
		status = (RENDER_STATUS_INACTIVE | RENDER_STATUS_ERR_NOT_SUPPORTED);
		return;
	}
#endif

#ifdef _POSIX
	if(!SupportedExtensions.vk_khr_xlib_surface)
	{
		Error("Device doesn't support the necessary extensions. Is your driver up to date?");
		status = (RENDER_STATUS_INACTIVE | RENDER_STATUS_ERR_NOT_SUPPORTED);
		return;
	}
#endif

	if(!SupportedExtensions.vk_khr_surface || !SupportedExtensions.vk_khr_swapchain)
	{
		Error("Device doesn't support the necessary extensions. Is your driver up to date?");
		status = (RENDER_STATUS_INACTIVE | RENDER_STATUS_ERR_NOT_SUPPORTED);
		return;
	}

	free(props);

	VkApplicationInfo applicationInfo;
	applicationInfo.engineVersion = ENGINE_VERSION;
	applicationInfo.pEngineName = ENGINE_NAME;
	applicationInfo.pApplicationName = APPLICATION_NAME;
	applicationInfo.apiVersion = API_VERSION;
	applicationInfo.applicationVersion = APPLICATION_VERSION;
	applicationInfo.pNext = NULL;

	VkInstanceCreateInfo createInfo;
	createInfo.pNext = NULL;
	createInfo.pApplicationInfo = &applicationInfo;
	createInfo.sType = VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO;
	createInfo.flags = 0;
	createInfo.enabledExtensionCount = 3;
	createInfo.enabledLayerCount = layerCount;
	createInfo.ppEnabledLayerNames = enabledLayers;

	const char* enabledExtensions[] = {
			VK_KHR_SURFACE_EXTENSION_NAME,
#ifdef _POSIX
			VK_KHR_XLIB_SURFACE_EXTENSION_NAME,
#elif defined(_WINDOWS)
			VK_KHR_WIN32_SURFACE_EXTENSIONS_NAME,
#endif
			VK_KHR_SWAPCHAIN_EXTENSION_NAME,
	};

	createInfo.ppEnabledExtensionNames = enabledExtensions;

	//Create the instance
	VkResult result = vkCreateInstance(&createInfo, NULL, &this->Instance);
	if(result != VK_SUCCESS)
	{
		this->ReportError(result);
		return;
	}

	if(pPhysicalDevices)
		free(pPhysicalDevices);


	CHECK_VK_RESULT(vkEnumeratePhysicalDevices(this->Instance, &count, NULL));
	this->pPhysicalDevices = (SPhysicalDevice*)calloc(count, sizeof(SPhysicalDevice));
	VkPhysicalDevice* pDevices = (VkPhysicalDevice*)malloc(sizeof(VkPhysicalDevice) * count);
	CHECK_VK_RESULT(vkEnumeratePhysicalDevices(this->Instance, &count, pDevices));

	this->PhysicalDeviceCount = count;

	for(int i = 0; i < count; i++)
	{
		//Set properties
		vkGetPhysicalDeviceProperties(pDevices[i], &this->pPhysicalDevices[i].properties);
		this->pPhysicalDevices[i].device = pDevices[i];
		this->pPhysicalDevices[i].score = 1;

		this->pPhysicalDevices[i].score *= this->pPhysicalDevices[i].properties.apiVersion;

		//Dedicated cards get precedence AMD == 0x1002 NVIDIA == 0x10DE
		if(this->pPhysicalDevices[i].properties.deviceType == VkPhysicalDeviceType::VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU)
			this->pPhysicalDevices[i].score *= 10;
	}

	//Search devices and choose a device that is best
	uint32_t best_score = 0, best_index = 0;

	for(uint32_t i = 0; i < count; i++)
	{
		if(this->pPhysicalDevices[i].score > best_score)
		{
			best_index = i;
			best_score = this->pPhysicalDevices[i].score;
		}
	}

	//Now we got the best device index!
	this->PhysicalDeviceIndex = best_index;

	free(pDevices); //free temp devices

	//Current device
	SPhysicalDevice* pCurrentDevice = &this->pPhysicalDevices[this->PhysicalDeviceIndex];

	//
	// Specifiy queues
	//
	vkGetPhysicalDeviceQueueFamilyProperties(this->pPhysicalDevices[this->PhysicalDeviceIndex].device, &count, NULL);

	//Init everything we need
	pCurrentDevice->QueueFamilies = (VkQueueFamilyProperties*)malloc(sizeof(VkQueueFamilyProperties) * count);
	vkGetPhysicalDeviceQueueFamilyProperties(this->pPhysicalDevices[this->PhysicalDeviceIndex].device, &count, pCurrentDevice->QueueFamilies);

	VkDeviceQueueCreateInfo* deviceQueueCreateInfo = (VkDeviceQueueCreateInfo*)malloc(sizeof(VkDeviceQueueCreateInfo) * count);
	uint32_t queueCount = count;
	pCurrentDevice->QueueCount = count;

	Msg("******************");
	Msg("Device Queue info:");
	Msg("Type        Count");
	for(int i = 0; i < count; i++)
	{

		VkDeviceQueueCreateInfo tempInfo;

		if(pCurrentDevice->QueueFamilies[i].queueFlags & VK_QUEUE_COMPUTE_BIT) {
			Msg("COMPUTE     %u", pCurrentDevice->QueueFamilies[i].queueCount);
			tempInfo.flags |= VK_QUEUE_COMPUTE_BIT;
		}
		else if(pCurrentDevice->QueueFamilies[i].queueFlags & VK_QUEUE_GRAPHICS_BIT) {
			Msg("GRAPHICS    %u", pCurrentDevice->QueueFamilies[i].queueCount);
			tempInfo.flags |= VK_QUEUE_GRAPHICS_BIT;
		}
		else if(pCurrentDevice->QueueFamilies[i].queueFlags & VK_QUEUE_TRANSFER_BIT) {
			Msg("TRANSFER    %u", pCurrentDevice->QueueFamilies[i].queueCount);
			tempInfo.flags |= VK_QUEUE_TRANSFER_BIT;
		}

		//Specify queue create info for this
		float* priorities = (float*)malloc(sizeof(float) * pCurrentDevice->QueueFamilies[i].queueCount);
		for(int u = 0; u < pCurrentDevice->QueueFamilies[i].queueCount; u++)
			priorities[u] = 1.0f;


		tempInfo.sType = VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO;
		tempInfo.queueCount = pCurrentDevice->QueueFamilies[i].queueCount;
		tempInfo.pNext = NULL;
		tempInfo.queueFamilyIndex = i;
		tempInfo.pQueuePriorities = priorities;

		deviceQueueCreateInfo[i] = tempInfo;

	}
	Msg("******************");

	//
	// Get physical device features
	//
	VkPhysicalDeviceFeatures features;
	vkGetPhysicalDeviceFeatures(pCurrentDevice->device, &pCurrentDevice->Features);

	//Lets just output some stuff here
	//TODO: Implement some type of error checking here. Do we need certain features?
	Msg("******************");
	Msg("DEVICE FEATURES FOR:");
	Msg("%s", pCurrentDevice->properties.deviceName);
	Msg("TESSELATION:    %u", pCurrentDevice->Features.tessellationShader);
	Msg("GEOM SHADER:    %u", pCurrentDevice->Features.geometryShader);
	Msg("DIST CULLING:   %u", pCurrentDevice->Features.shaderCullDistance);
	Msg("******************");

	//
	// Create the device
	//
	VkDeviceCreateInfo deviceCreateInfo;
	deviceCreateInfo.pNext = NULL;
	deviceCreateInfo.ppEnabledLayerNames = enabledLayers;
	deviceCreateInfo.enabledLayerCount = 1;
	deviceCreateInfo.ppEnabledExtensionNames = enabledExtensions;
	deviceCreateInfo.enabledExtensionCount = 3;
	deviceCreateInfo.sType = VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO;
	deviceCreateInfo.pEnabledFeatures = &pCurrentDevice->Features;
	deviceCreateInfo.pQueueCreateInfos = deviceQueueCreateInfo;
	deviceCreateInfo.queueCreateInfoCount = queueCount;


	result = vkCreateDevice(pCurrentDevice->device, &deviceCreateInfo, NULL, &this->Device);

	if(result != VK_SUCCESS)
	{
		Error("\nError while creating vulkan device.\n");
		status = (RENDER_STATUS_ERR | RENDER_STATUS_INACTIVE);
		this->ReportError(result);
		return;
	}

	Msg("Vulkan logical device created.");

	//
	// Get queue handles
	//
	this->pQueues = (VkQueue*)malloc(sizeof(VkQueue) * queueCount);
	for(int i = 0; i < pCurrentDevice->QueueCount; i++)
	{
		//vkGetDeviceQueue(this->Device, i, )
	}
	//TODO: Find some way of getting queue handles for queues so we dont have to do a bunch of calls into vulkan during runtime


	VkSwapchainCreateInfoKHR swapchainCreateInfoKHR;

	ConColorMsg(Color(0, 255, 0), "Finished initializing renderer!");
	Msg("==================================");
}

void VkRenderer::InitDisplay()
{
	//Guaranteed to set window handle by the end of the call
	InitWindow();

	//TODO: Implement for windows
#ifdef _POSIX

	VkXlibSurfaceCreateInfoKHR surfaceCreateInfo;
	surfaceCreateInfo.pNext = NULL;
	surfaceCreateInfo.dpy = XOpenDisplay(NULL);
	surfaceCreateInfo.window = *(unsigned long*)&hWindow;
	surfaceCreateInfo.flags = 0;
	surfaceCreateInfo.sType = VK_STRUCTURE_TYPE_XLIB_SURFACE_CREATE_INFO_KHR;

	vkCreateXlibSurfaceKHR(this->Instance, &surfaceCreateInfo, NULL, &this->RenderSurface);
#endif


}

void VkRenderer::InitSwapchain()
{
	VkSwapchainCreateInfoKHR SwapchainCreateInfo;
	SwapchainCreateInfo.pNext = NULL;
	SwapchainCreateInfo.sType = VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR;
	SwapchainCreateInfo.flags = VK_SWAPCHAIN_CREATE_MUTABLE_FORMAT_BIT_KHR;
	//SwapchainCreateInfo.
}

VkRenderer::~VkRenderer()
{
	if(this->pQueues)
		free(pQueues);
	if(this->pPhysicalDevices)
	{
		for(int i = 0; i < this->PhysicalDeviceCount; i++)
			free(pPhysicalDevices[i].QueueFamilies);
	}
}

#undef CHECK_VK_RESULT