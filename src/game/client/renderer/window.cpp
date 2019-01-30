/*


window.h

Some hacky stuff to obtain the handle to the current window


*/
#include "window.h"

#include "cbase.h"

#ifdef _POSIX
//#include <X11/Xwindows.h>
#include <X11/Xlib.h>
#include <X11/Xatom.h>

#elif defined(_WINDOWS)
#include <Windows.h>
#endif

void InitWindow()
{
#ifdef _POSIX
	//Windows is so much simpler...
	Msg("#============================================#");
	Msg("X11: Preparing to get window handle");

	Display* display = XOpenDisplay(NULL);

	Atom at = XInternAtom(display,"_NET_ACTIVE_WINDOW", True);

	while(at == None) {
		usleep(100000); //Sleep so we dont generate a ton of CPU usage
		at = XInternAtom(display, "_NET_ACTIVE_WINDOW", true);
		DevMsg("X11: Window not in focus, waiting to obtain handle...");
	}

	int screen = XDefaultScreen(display);
	Window window = XRootWindow(display, screen);
	Window current_window = window;

	Atom prop_ret = 0;
	int actual_format = 0;
	unsigned long returned_items = 0, returned_bytes = 0;
	unsigned char* returned_data = (unsigned char*)calloc(8,1);

	int result = XGetWindowProperty(display, window, at, 0, 8, False, AnyPropertyType, &prop_ret, &actual_format, &returned_items, &returned_bytes, &returned_data);

	if(result != Success)
	{
		Msg("X11: An error occured whilst obtaining a handle to the current window.");
		Msg("#============================================#");
		return;
	}

	Msg("X11: Managed to obtain the handle to the current window.");
	Msg("#============================================#");

	hWindow = (WindowHandle)reinterpret_cast<long*>(&returned_data);

#elif defined(_WINDOWS)

#endif
}

void ShutdownWindow()
{
#ifdef _POSIX
	//Allocated as ptr on posix
	free(hWindow);
#elif defined(_WINDOWS)

#endif
}

WindowHandle GetCurrentWindowHandle()
{
#ifdef _POSIX

#elif defined(_WINDOWS)

#endif
}

const char* GetCurrentWindowName()
{
#ifdef _POSIX
	return NULL;
#elif defined(_WINDOWS)

#endif
}

void SetCurrentWindowName(const char* name)
{
#ifdef _POSIX

#elif defined(_WINDOWS)

#endif
}
