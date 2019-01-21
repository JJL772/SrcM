#
#
# Posix library
#
# Summary:
#	DEBUG- Defines debug build config
#	RELEASE- Defines release build config
#	LINUX32- Defines linux32 platform
#	LINUX64- Defines linux64 platform
#	POSIX- Defines POSIX compliant OS
#

if(DEFINED DEBUG)

	add_compile_definitions(DEBUG _DEBUG)

endif(DEFINED DEBUG)

if(DEFINED RELEASE)

	add_compile_definitions(NDEBUG _RELEASE)

	if(DEFINED RELEASE_ASSERTS)
		add_compile_definitions(RELEASEASSERTS)
	endif(DEFINED RELEASE_ASSERTS)

endif(DEFINED RELEASE)

#Unconditional defs

include_directories(../common ../public ../public/tier0 ../public/tier1)

if(DEFINED LINUX32)
	link_directories(../lib/public/linux32 ../lib/common/linux32)
elseif(DEFINED LINUX64)
	link_directories(../lib/public/linux64 ../lib/common/linux64)
endif(DEFINED LINUX32)

add_compile_definitions(GNUC COMPILER_GCC _DLL_EXT=.so)

if(DEFINED POSIX OR DEFINED LINUX32 OR DEFINED LINUX64)

	add_compile_definitions(POSIX _POSIX)

endif(DEFINED POSIX)

if(DEFINED LINUX32 OR DEFINED LINUX64)

	add_compile_definitions(_LINUX LINUX)

endif(DEFINED LINUX32 OR DEFINED LINUX64)

if(DEFINED LINUX64)

	add_compile_definitions(PLATFORM_64BITS)

endif(DEFINED LINUX64)
