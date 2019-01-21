#
#
# Tier1
#
# CMake project for valve's tier1 lib
#
#
project(tier1 C CXX)

#Search for all source files
FILE(GLOB_RECURSE Src RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}"
	*.cpp *.h *.c *.hpp *.s *.S *.asm *.def)

#Create a new source group
source_group(Source FILES)

#Search for source files
foreach(source IN LISTS Src)
	get_filename_component(source_path "${source}" PATH)
	string(REPLACE "/" "\\" source_path_msvc "${source_path}")
	source_group("${source_path_msvc}" FILES "${source}")
endforeach()

#Used to get all public headers
include("${CMAKE_HOME_DIRECTORY}/CMakeScripts/PublicHeaders.cmake")

get_public_headers(PublicHeaders)

list(APPEND Src ${PublicHeaders})

source_group("Public Headers" FILES ${PublicHeaders})
source_group(Source FILES ${Src})


#########################################
#Create lib
add_library(tier1 SHARED ${Src})
#########################################


#Set props
set_target_properties(tier1 PROPERTIES ARCHIVE_OUTPUT_NAME "tier1")
set_target_properties(tier1 PROPERTIES LIBRARY_OUTPUT_NAME "tier1")
set_target_properties(tier1 PROPERTIES ENABLE_EXPORTS 1)
set_target_properties(tier1 PROPERTIES LINKER_LANGUAGE CXX)

target_compile_definitions(tier1 PRIVATE TIER1_STATIC_LIB=1)
set_property(TARGET tier1 PROPERTY CXX_STANDARD 11)

#########################################
#Include source base stuff
include("${CMAKE_HOME_DIRECTORY}/CMakeScripts/SourceLibrary.cmake")
#########################################



