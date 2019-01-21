#
# 
# Base definitions for source engine libraries
#
# Summary:
#	WIN32- Win32 build
#	WIN64- Win64 build
#	POSIX- Posix compliant os
#	LINUX32- Linux 32bit build
#	LINUX64- Linux 64bit build
#	PUBLISH- If build is to be published
#	RETAIL- If build is to be sold
#	PROFILE- To include profile stuff?
#
#	Check included files for more options
#

include("${CMAKE_HOME_DIRECTORY}/CMakeScripts/SourceBase.cmake")

if(NOT DEFINED PUBLISH)
	add_definitions(-DDEV_BUILD)
endif(NOT DEFINED PUBLISH)

if(NOT DEFINED RETAIL AND DEFINED PROFILE)
	add_definitions(-D_PROFILE)
endif(NOT DEFINED RETAIL AND DEFINED PROFILE)

if(DEFINED RETAIL)
	add_definitions(-DRETAIL_ASSERTS)
endif(DEFINED RETAIL)

add_definitions(-DFRAME_POINTER_OMISSION_DISABLED)
