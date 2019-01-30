/*

vk-interface.h

Interface for vulkan renderer dll

Bugs/Notes:

Currently unused, prototyping will be done via the client dll

*/
#pragma once

#include "../RenderSystem.h"

#ifdef _POSIX
#define VK_RENDER_DLL "VulkanRenderer.so"
#elif defined(_WINDOWS)
#define VK_RENDER_DLL "VulkanRenderer.dll"
#endif

class CVkRenderDLL : IRendererDLL
{
private:
	void* pDLLHandle;

	void ResolveSymbols();
public:
	virtual bool Connect();

	virtual void Disconnect();
public:

	//Function prototypes
	typedef void(*Initialize_t)();
	typedef void(*Shutdown_t)();


	//Actual functions
	Initialize_t Initialize;
	Shutdown_t  Shutdown;
};