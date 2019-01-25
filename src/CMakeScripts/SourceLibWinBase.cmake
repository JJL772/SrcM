#
#
# Base for windows libraries
#
#

add_compile_definitions(COMPILER_MSVC _DLL_EXT=.dll)
	
if(DEFINED WIN32)
	add_compile_definitions(COMPILER_MSVC32)
endif(DEFINED WIN32)

if(DEFINED WIN64)
	add_compile_definitions(COMPILER_MSVC64 PLATFORM_64BITS WIN64 _WIN64)
endif(DEFINED WIN64)

if(DEFINED DEBUG)



endif(DEFINED DEBUG)

if(DEFINED RELEASE)



endif(DEFINED RELEASE)

#DEBUG:
#_DEBUG DEBUG 
