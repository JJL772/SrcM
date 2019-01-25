#
#
# Base for all source engine things
#
#

include("${CMAKE_HOME_DIRECTORY}/CMakeScripts/PublicHeaders.cmake")
include("${CMAKE_HOME_DIRECTORY}/CMakeScripts/SourceDirectories.cmake")

set(CMAKE_SHARED_LIBRARY_PREFIX	"")
set(CMAKE_STATIC_LIBRARY_PREFIX "")

#ALWAYS DISABLE RAD TELEMETRY
add_definitions(-DRAD_TELEMETRY_DISABLED
				-DVERSION_SAFE_STEAM_API
				-DPROTECTED_THINGS_ENABLE
				-DSOURCE1=1)

if(DEFINED WIN32 OR DEFINED WIN64)
	add_definitions(-DCOMPILER_MSVC 
					-D_DLL_EXT=.dll
					-D_EXTERNAL_DLL_EXT=.dll)
elseif(DEFINED POSIX OR DEFINED LINUX32 OR DEFINED LINUX64)
	add_definitions(-DGNUC
					-DCOMPILER_GCC 
					-D_DLL_EXT=.so
					-D_EXTERNAL_DLL_EXT=.so)
	add_definitions(-DPOSIX -D_POSIX)
	add_definitions(-D_LINUX -DLINUX)
endif(DEFINED WIN32 OR DEFINED WIN64)



#Set compiler/platform specific defines
if(DEFINED WIN32)
	add_definitions(-DCOMPILER_MSVC32 -D_WIN32 -DWIN32)
	link_directories(	"${WIN32_PUBLIC_LIB_DIR}" 
				"${WIN32_COMMON_LIB_DIR}")

	set_target_properties(${PROJECT_NAME} PROPERTIES LIBRARY_OUTPUT_DIRECTORY "${WIN32_DLL_OUTPUT_DIR}")
	set_target_properties(${PROJECT_NAME} PROPERTIES ARCHIVE_OUTPUT_DIRECTORY "${WIN32_LIB_OUTPUT_DIR}")

	#set(CMAKE_BINARY_OUTPUT_DIRECTORY
elseif(DEFINED WIN64)
	add_definitions(-DCOMPILER_MSVC64 -D_WIN64 WIN64 -DPLATFORM_64BITS)
	link_directories(	"${WIN64_PUBLIC_LIB_DIR}" 
				"${WIN64_COMMON_LIB_DIR}")

	set_target_properties(${PROJECT_NAME} PROPERTIES LIBRARY_OUTPUT_DIRECTORY "${WIN64_DLL_OUTPUT_DIR}")
	set_target_properties(${PROJECT_NAME} PROPERTIES ARCHIVE_OUTPUT_DIRECTORY "${WIN64_LIB_OUTPUT_DIR}")
elseif(DEFINED LINUX32)
	link_directories(	"${LINUX32_COMMON_LIB_DIR}" 
				"${LINUX32_PUBLIC_LIB_DIR}")

	set_target_properties(${PROJECT_NAME} PROPERTIES LIBRARY_OUTPUT_DIRECTORY "${LINUX32_DLL_OUTPUT_DIR}")
	set_target_properties(${PROJECT_NAME} PROPERTIES ARCHIVE_OUTPUT_DIRECTORY "${LINUX32_LIB_OUTPUT_DIR}")
elseif(DEFINED LINUX64)
	link_directories(	"${LINUX64_COMMON_LIB_DIR}" 
				"${LINUX64_PUBLIC_LIB_DIR}")

	add_definitions(-DPLATFORM_64BITS)
	set_target_properties(${PROJECT_NAME} PROPERTIES LIBRARY_OUTPUT_DIRECTORY "${LINUX64_DLL_OUTPUT_DIR}")
	set_target_properties(${PROJECT_NAME} PROPERTIES ARCHIVE_OUTPUT_DIRECTORY "${LINUX64_LIB_OUTPUT_DIR}")
endif(DEFINED WIN32)

#Set include dirs [LEGACY Do NOT USE]
#INCLUDE_DIRECTORIES(	"${CMAKE_CURRENT_SOURCE_DIR}" 
#			"${CMAKE_HOME_DIRECTORY}/common/" 
#			"${CMAKE_HOME_DIRECTORY}/public/" 
#			"${CMAKE_HOME_DIRECTORY}/public/tier0/" 
#			"${CMAKE_HOME_DIRECTORY}/public/tier1/")

target_include_directories(${PROJECT_NAME} PRIVATE 
			"${CMAKE_CURRENT_SOURCE_DIR}" 
			"${SOURCE_PUBLIC_INCLUDE_DIR}" 
			"${SOURCE_TIER0_INCLUDE_DIR}" 
			"${SOURCE_TIER1_INCLUDE_DIR}" 
			"${SOURCE_COMMON_INCLUDE_DIR}"
			"${SOURCE_UTILS_COMMON_INCLUDE_DIR}")

#Setup compiler basics if we use clang
if(DEFINED USE_CLANG)
	set(CMAKE_C_COMPILER "clang")
	set(CMAKE_C_FLAGS "-std=c11 -msse -msse2 -msse3 -arch=x86 -w -Wno-pointer-to-int-cast -m32")
	set(CMAKE_C_FLAGS_DEBUG "-gdwarf-4 -D_DEBUG -DDEBUG")
	set(CMAKE_C_FLAGS_MINSIZEREL "")
	set(CMAKE_C_FLAGS_RELEASE "-gdwarf-4 -DNDEBUG -D_RELEASE")
	set(CMAKE_C_FLAGS_RELWITHDEBINFO "")

	set(CMAKE_CXX_COMPILER "clang++")
	set(CMAKE_CXX_FLAGS "-std=c++11 -msse -msse2 -msse3 -arch=x86 -w -Wno-pointer-to-int-cast -m32 -Wno-c++11-narrowing")
	set(CMAKE_CXX_FLAGS_DEBUG "-wno-everything -gdwarf-4 -D_DEBUG -DDEBUG")
	set(CMAKE_CXX_FLAGS_MINSIZEREL "")
	set(CMAKE_CXX_FLAGS_RELEASE "-gdwarf-4 -DNDEBUG -D_RELEASE")
	set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "")
else()
	set(CMAKE_C_COMPILER "gcc")
	set(CMAKE_C_FLAGS "-std=c11 -msse -msse2 -msse3 -march=i386 -w -m32 -fpermissive")
	set(CMAKE_C_FLAGS_DEBUG "-gdwarf-4 -D_DEBUG -DDEBUG")
	set(CMAKE_C_FLAGS_MINSIZEREL "")
	set(CMAKE_C_FLAGS_RELEASE "-gdwarf-4 -DNDEBUG -D_RELEASE")
	set(CMAKE_C_FLAGS_RELWITHDEBINFO "")

	set(CMAKE_CXX_COMPILER "g++")
	set(CMAKE_CXX_FLAGS "-std=c++11 -msse -msse2 -msse3 -march=i386 -w -m32 -Wno-c++11-narrowing -fpermissive")
	set(CMAKE_CXX_FLAGS_DEBUG "-wno-everything -gdwarf-4 -D_DEBUG -DDEBUG")
	set(CMAKE_CXX_FLAGS_MINSIZEREL "")
	set(CMAKE_CXX_FLAGS_RELEASE "-gdwarf-4 -DNDEBUG -D_RELEASE")
	set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "")
endif(DEFINED USER_CLANG)

#Debug config
if(DEFINED DEBUG)

	add_definitions(-DDEBUG -D_DEBUG)

	#add_compile_definitions(VPC)
	if(DEFINED TF_BETA)
		add_definitions(-DTF_BETA)
	endif(DEFINED TF_BETA)

	#Should always be disabled
	#if(DEFINED SOURCESDK)
	#	add_definitions(-DRAD_TELEMETRY_DISABLED)
	#endif(DEFINED SOURCESDK)

	if(DEFINED RETAIL)
		add_definitions(-D_RETAIL)
	endif(DEFINED RETAIL)

	if(DEFINED STAGING_ONLY)
		add_definitions(-DSTAGING_ONLY)
	endif(DEFINED STAGING_ONLY)


endif(DEFINED DEBUG)

#Release config
if(DEFINED RELEASE)

	add_definitions(-DNDEBUG -D_RELEASE -DRELEASEASSERTS)


	if(DEFINED TF_BETA)
		add_definitions(-DTF_BETA)
	endif(DEFINED TF_BETA)

	if(DEFINED SOURCESDK)
		add_definitions(-DRAD_TELEMETRY_DISABLED)
	endif(DEFINED SOURCESDK)

	if(DEFINED RETAIL)
		add_definitions(-D_RETAIL)
	endif(DEFINED RETAIL)

	if(DEFINED STAGING_ONLY)
		add_definitions(-DSTAGING_ONLY)
	endif(DEFINED STAGING_ONLY)

endif(DEFINED RELEASE)


#Controls video build
if(DEFINED WIN32 AND NOT DEFINED QUICKTIME_WIN32)

	add_definitions(-DBINK_VIDEO -DAVI_VIDEO WMV_VIDEO)

elseif(DEFINED WIN32 AND QUICKTIME_WIN32)

	add_definitions(-DAVI_VIDEO -DWMV_VIDEO QUICKTIME_VIDEO)

elseif(DEFINED LINUX32 OR DEFINED LINUX64)

	add_definitions(-DBINK_VIDEO)

elseif(DEFINED OPEN_GL)
	
	add_definitions(-DGL_GLEXT_PROTOTYPES -DDX_TO_GL_ABSTRACTION USE_SDL)
	include_directories(../thirdparty/SDL2/)

endif(DEFINED WIN32 AND NOT DEFINED QUICKTIME_WIN32)









