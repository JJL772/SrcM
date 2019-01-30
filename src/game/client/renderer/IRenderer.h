/*

IRenderer.h

Renderer base class

*/
#pragma once

#define RENDER_STATUS_ACTIVE 0
#define RENDER_STATUS_INACTIVE 1
#define RENDER_STATUS_ERR (1 << 1)
#define RENDER_STATUS_ERR_NOT_SUPPORTED (1 << 2)

class IRenderer
{
private:
public:

	virtual void Initialize() = 0;

	virtual void Shutdown() = 0;

	virtual const char* GetName() = 0;

	virtual unsigned GetStatus() = 0;
};

