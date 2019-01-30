/*

RenderSystem.cpp

Controls the game's rendering system

*/

#include "RenderSystem.h"
#include "cbase.h"

void CGameRenderingSystem::Initialize()
{
	if(!m_pRenderer)
	{
		Warning("Attempted to initialize renderer, but none active.");
		return;
	}

	Msg("Initializing rendering system: %s", m_pRenderer->GetName());
	m_pRenderer->Initialize();

	if(m_pRenderer->GetStatus() != RENDER_STATUS_ACTIVE)
	{
		Error("Failed to initialize renderer.");
		return;
	}

	Msg("Initialized renderer: %s", m_pRenderer->GetName());
}

void CGameRenderingSystem::Shutdown()
{
	if(!m_pRenderer)
	{
		Warning("Attempted to shutdown renderer, but none active.");
		return;
	}

	Msg("Shutting down render system: %s", m_pRenderer->GetName());

	m_pRenderer->Shutdown();

	if(m_pRenderer->GetStatus() == RENDER_STATUS_ACTIVE)
	{
		Error("Failed to shutdown render system: %s", m_pRenderer->GetName());
		return;
	}

	Msg("Shutdown render system: %s", m_pRenderer->GetName());
}

void CGameRenderingSystem::SetRenderingSystem(IRenderer *pRenderer, bool initialize)
{
	Assert(pRenderer);

	if(!pRenderer)
	{
		Error("Failed to set new render system NULL. Previous render system will remain active.");
		return;
	}

	//Shutdown old
	this->Shutdown();

	m_pRenderer = pRenderer;

	if(initialize)
		this->Initialize();

}