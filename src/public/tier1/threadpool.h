//==========================================================//
// Name: threadpool.h
// Purpose: Implements a threadpool
// Authors: Jeremy L.
// Notes:
//		- I dont like including this in an existing library
//		  eventually this should move to another new util lib
//==========================================================//
#pragma once

#include <thread>
#include <stddef.h>
#include <stdint.h>
#include <list>
#include <atomic>

typedef void(*fnThreadWorkPtr)();

//Thread job to be submitted to the thread pool
//You can derive from this to implement all your little fancy stuffs!
struct CThreadJobBase
{
public:
	virtual void Run() = 0;
};

//
// Thread job domains, helps keep thread queue times down for certain operations
// Basically, we don't want to delay simple, semi-speedy operations because we have some greedy compute operations running
// For example, if I want to parse a file without freezing the client for a few hundred ms, I will submit my job as a THRD_SIMPLE job
// and I will avoid having to wait for my long boring "calculate the mass of a weird shape" to complete in the THRD_COMPUTE job threads
//
enum class EThreadJobDomain
{
	THRD_SIMPLE,
	THRD_COMPUTE,
};

enum class EThreadJobState
{
	STATE_DNE,
	STATE_QUEUED,
	STATE_RUNNING,
	STATE_UNKNOWN,
};

class IThreadPool
{
public:
	//
	// Creates a number of job threads
	//
	virtual void ReserveThreads(uint32_t num) = 0;

	//
	// Gets the total number of free threads
	//
	virtual uint32_t GetFreeThreads() = 0;

	//
	// Gets the total number of active threads
	//
	virtual uint32_t GetTotalThreads() = 0;

	//
	// Destroys all threads waiting for jobs to do
	//
	virtual void DestroyThreads() = 0;

	//
	// Submits a job and returns the index in the queue, 0 if the item does not sit in the queue 
	//
	virtual uint32_t SubmitJob(const CThreadJobBase& job, EThreadJobDomain domain = EThreadJobDomain::THRD_COMPUTE) = 0;

	//
	// Returns the jobs state. If the job cannot be found anywhere STATE_DNE is returned.
	//
	virtual EThreadJobState GetJobState(const CThreadJobBase& job) = 0;

	//
	// Cancels the specified job. Aborts execution or removes from queue
	//
	virtual void CancelJob(const CThreadJobBase& job) = 0;
};


struct SThreadState
{
	bool bDirty;
	CThreadJobBase* pJob;
};

class CThreadPool final : public IThreadPool
{
private:
	std::list<std::atomic<SThreadState>> ThreadStates;

	

public:

};