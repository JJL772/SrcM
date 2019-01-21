#
#
# raytrace
#
# CMake project for valve's raytrace
#
#
project(raytrace C CXX)

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

#list(APPEND Src ${PublicHeaders})

source_group("Public Headers" FILES ${PublicHeaders})
source_group(Source FILES ${Src})


#########################################
#Create lib
add_library(raytrace STATIC ${Src})
#########################################

#########################################
#Additional libs/includes
target_link_libraries(raytrace PUBLIC mathlib tier0)
target_include_directories(raytrace PRIVATE "${SOURCE_MATHLIB_INCLUDE_DIR}")
#########################################

#########################################
#Set target props
set_target_properties(raytrace PROPERTIES ARCHIVE_OUTPUT_NAME "raytrace")
set_target_properties(raytrace PROPERTIES LIBRARY_OUTPUT_NAME "raytrace")
set_property(TARGET raytrace PROPERTY CXX_STANDARD 11)
set_target_properties(raytrace PROPERTIES LINKER_LANGUAGE CXX)
#########################################

#########################################
#Include source base stuff
include("${CMAKE_HOME_DIRECTORY}/CMakeScripts/SourceLibrary.cmake")
#########################################




