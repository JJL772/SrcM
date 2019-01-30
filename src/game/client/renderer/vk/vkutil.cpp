/*

vkutil.cpp

Some utils for vulkan stuff

*/

#include "vk.h"
#include "cbase.h"

/////////////////////////////
// Vulkan includes
#include <vulkan/vulkan.h>
/////////////////////////////


void VkUtils::ReportError(unsigned errcode)
{
	Error("[VK RENDERER] An error has occured: ", VkUtils::GetErrorString(errcode));
}

const char* VkUtils::GetErrorString(unsigned errcode)
{
	switch(errcode)
	{
		case VK_ERROR_DEVICE_LOST:
			return "VK_ERROR_DEVICE_LOST";
		case VK_ERROR_OUT_OF_HOST_MEMORY:
			return "VK_ERROR_OUT_OF_HOST_MEMORY";
		case VK_ERROR_EXTENSION_NOT_PRESENT:
			return "VK_ERROR_EXTENSTION_NOT_PRESENT";
		case VK_ERROR_FEATURE_NOT_PRESENT:
			return "VK_ERROR_FEATURE_NOT_PRESENT";
		case VK_ERROR_FORMAT_NOT_SUPPORTED:
			return "VK_ERROR_FORMAT_NOT_SUPPORTED";
		case VK_ERROR_FRAGMENTATION_EXT:
			return "VK_ERROR_FRAGMENTATION_EXT";
			//TODO: More later lol
		default:
			return "VK_SUCCESS";
	}
}