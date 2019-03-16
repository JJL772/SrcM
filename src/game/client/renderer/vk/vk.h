/*

vk.h

Prototypes for the vulkan renderer

Bugs/Notes:
TODO: Can we remove dependencies on vulkan.h?

*/
#pragma once

#include "renderer/IRenderer.h"

#include <memory>

#define VK_RENDERER_NAMESPACE vkrender
#define VK_HEADER_START namespace VK_RENDERER_NAMESPACE {
#define VK_HEADER_END }
#define VK_SOURCEFILE using namespace VK_RENDERER_NAMESPACE;

//Some defines for stuff
#define ENGINE_VERSION 1
#define ENGINE_NAME "SourceVulkan"
#define APPLICATION_NAME "HL2-Vulkan"
#define API_VERSION 1
#define APPLICATION_VERSION 1

/////////////////////////////
// Vulkan includes
#include <vulkan/vulkan.h>
#ifdef _POSIX
#include <vulkan/vulkan_xlib.h>
#endif
/////////////////////////////


struct SSupportedExtensions
{
	bool vk_khr_win32_surface;
	bool vk_khr_swapchain;
	bool vk_khr_surface;
	bool vk_khr_xlib_surface;
	bool vk_ext_pci_bus_info;
};

//TODO: NV Linux driver doesn't seem to support any of these?
struct SSupportedValidationLayers
{
	bool vk_lunarg_basic;
	bool vk_steam32;
	bool vk_steam64;
};

//TODO: Better way to do this without depending on vulkan.h?
struct SPhysicalDevice
{
	VkPhysicalDevice device;
	VkPhysicalDeviceProperties properties;
	VkQueueFamilyProperties* QueueFamilies;
	VkPhysicalDeviceFeatures Features;
	uint32_t score;
	uint32_t QueueCount;

	~SPhysicalDevice()
	{
		std::free(QueueFamilies);
	}
};


//
//
// The vulkan renderer!
//
// Pretty much just a container for some globals (I know they are bad)
//
//
class VkRenderer final : IRenderer
{
private:

	static const char* EngineName;

	VkInstance Instance;

	VkDevice Device;

	VkSurfaceKHR RenderSurface;

	uint32_t PhysicalDeviceCount = 0;

	uint32_t PhysicalDeviceIndex; //index in devices list

	SPhysicalDevice* pPhysicalDevices;

	SSupportedExtensions SupportedExtensions;

	SSupportedValidationLayers SupportedLayers;

	uint32_t status;

	/*

	Execution environment

	*/
	VkQueue* pQueues;

	uint32_t QueueCount;

public:
	~VkRenderer();

	virtual void Initialize();

	void InitDisplay();

	virtual void Shutdown();

	void ReportError(unsigned errcode);

	virtual const char* GetName() { return ENGINE_NAME; }

	virtual unsigned GetStatus() { return status; };

private:
	void InitSwapchain(); //INTERNAL DO NOT CALL EXTERNALLY
};

//
//
// Vulkan utils
//
//
class VkUtils
{
public:
	static void ReportError(unsigned errcode);

	static const char* GetErrorString(unsigned errcode);
};