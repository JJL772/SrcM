#
#
# Utilities for getting all public headers
#
#

include("${CMAKE_HOME_DIRECTORY}/CMakeScripts/SourceDirectories.cmake")

function(get_public_headers outlist)

	file(GLOB_RECURSE PublicHeaders RELATIVE "{SOURCE_PUBLIC_INCLUDE_DIR}"/ *.h *.hpp *.hxx)

	list(APPEND outlist ${PublicHeaders})

	file(GLOB_RECURSE CommonHeaders RELATIVE "{SOURCE_COMMON_INCLUDE_DIR}"/ *.h *.hpp *.hxx)

	list(APPEND outlist ${CommonHeaders})

	file(GLOB_RECURSE UtilCommonHeaders RELATIVE "{SOURCE_UTILS_COMMON_INCLUDE_DIR}"/ *.h *.hpp *.hxx)

	list(APPEND outlist ${UtilCommonHeaders})

endfunction(get_public_headers)
