/*


window.h

Some hacky stuff to obtain the handle to the current window


*/
#pragma once

#include <stdlib.h>

typedef void* WindowHandle;

static WindowHandle hWindow = NULL;

void InitWindow();

void ShutdownWindw();

WindowHandle GetCurrentWindowHandle();

const char* GetCurrentWindowName();

void SetCurrentWindowName(const char* name);