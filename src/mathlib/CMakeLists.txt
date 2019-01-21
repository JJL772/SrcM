#
#
# Mathlib
#
# CMake project for valve's mathlib
#
#
project(mathlib C CXX)

#########################################
#Includes
include("${CMAKE_HOME_DIRECTORY}/CMakeScripts/PublicHeaders.cmake")
#########################################



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


get_public_headers(PublicHeaders)

source_group("Public Headers" FILES ${PublicHeaders})
source_group(Source FILES ${Src})


#########################################
#Create target
add_library(mathlib STATIC ${Src})
#########################################


#########################################
#Extra include dirs
target_include_directories(mathlib PRIVATE "${SOURCE_MATHLIB_INCLUDE_DIR}")
#########################################


#########################################
#Link libs
target_link_libraries(mathlib PUBLIC tier0)
#########################################


#Set props
set_target_properties(mathlib PROPERTIES ARCHIVE_OUTPUT_NAME "mathlib")
set_target_properties(mathlib PROPERTIES LIBRARY_OUTPUT_NAME "mathlib")
set_target_properties(mathlib PROPERTIES LINKER_LANGUAGE CXX)
set_property(TARGET mathlib PROPERTY CXX_STANDARD 11)

#Source library stuff
#should be included after target is created
include("${CMAKE_HOME_DIRECTORY}/CMakeScripts/SourceLibrary.cmake")


