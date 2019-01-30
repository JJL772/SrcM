/*

RenderSystem.h

Contols the game's rendering system

*/
#pragma once

#include "IRenderer.h"

class CGameRenderingSystem
{
private:
	static CGameRenderingSystem* pRenderingSystem;

	IRenderer* m_pRenderer;
public:

	static CGameRenderingSystem* GetGameRenderingSystem()
	{
		if(!pRenderingSystem)
			pRenderingSystem = new CGameRenderingSystem();
		return pRenderingSystem;
	}

	void SetRenderingSystem(IRenderer* pRenderer, bool initialize = true);

	void Shutdown();

	void Initialize();

	IRenderer* GetActiveRenderer() const {return m_pRenderer;}

};

class IRendererDLL
{
public:
	virtual bool Connect() = 0;

	virtual void Disconnect() = 0;
};