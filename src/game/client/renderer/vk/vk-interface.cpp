/*

vk-interface.cpp

Builds the interface between the client dll and vulkan renderer dll

*/
#include "vk-interface.h"
#include "cbase.h"

#ifdef _POSIX
#include <dlfcn.h>
#elif defined(_WINDOWS)
#include <Windows.h>
#endif

#define VK_DLL_INIT_SYM "Vk_Initialize"
#define VK_DLL_SHUTDOWN_SYM "Vk_Shutdown"

//Connects to the vulkan renderer
bool CVkRenderDLL::Connect()
{
#ifdef _POSIX
	this->pDLLHandle = dlopen(VK_RENDER_DLL, RTLD_NOW);

	if(!pDLLHandle)
		return false;

	ResolveSymbols();

#elif defined(_WINDOWS)

#endif
}

//Disposes of everything
void CVkRenderDLL::Disconnect()
{
#ifdef _POSIX
	if(pDLLHandle)
		dlclose(this->pDLLHandle);

	this->Initialize = NULL;
	this->Shutdown = NULL;
#elif defined(_WINDOWS)

#endif
}

//Loads symbols
void CVkRenderDLL::ResolveSymbols()
{
#ifdef _POSIX
	this->Initialize = (Initialize_t)dlsym(this->pDLLHandle, VK_DLL_INIT_SYM);
	this->Shutdown = (Shutdown_t)dlsym(this->pDLLHandle, VK_DLL_SHUTDOWN_SYM);
#elif defined(_WINDOWS)

#endif
}