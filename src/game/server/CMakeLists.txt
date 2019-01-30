#
#
# Server
#
# CMake project for Source SDK server
#
#

#========================================#
# WARNING: AVOID MODIFYING THIS FILE
#========================================#
project(server C CXX)

include("CMakeScripts/ServerSources.cmake")

#Used to get all public headers
include("${CMAKE_HOME_DIRECTORY}/CMakeScripts/PublicHeaders.cmake")

get_public_headers(PublicHeaders)

#list(APPEND Src ${PublicHeaders})

source_group("Public Headers" FILES ${PublicHeaders})
source_group(Source FILES ${SERVER_SOURCES})


#========================================#
# This fixes visual studio structure
#========================================#
foreach(SOURCEFILE IN LISTS SERVER_SOURCES)
	get_filename_component(src_path "${SOURCEFILE}" PATH)
	string(REPLACE "/" "\\" new_src_path "${src_path}")
	source_group("${new_src_path" FILES "${SOURCEFILE}")
endforeach()

#########################################
#Create lib
add_library(server SHARED ${SERVER_SOURCES})
#########################################


#Set props
set_target_properties(server PROPERTIES ARCHIVE_OUTPUT_NAME "server")
set_target_properties(server PROPERTIES LIBRARY_OUTPUT_NAME "server")
set_target_properties(server PROPERTIES LINKER_LANGUAGE CXX)

#WARNING THIS IS TEMPORARY
target_compile_definitions(server PRIVATE HL2MP HL2_DLL)

target_include_directories(server PRIVATE 	"${SERVER_DIRECTORY}"
						"${SHARED_DIRECTORY}"
						"${SOURCE_UTILS_COMMON_INCLUDE_DIR}"
						"${SERVER_DIRECTORY}/NextBot"
						"${SERVER_DIRECTORY}/econ"
						"${SERVER_DIRECTORY}/hl2"
						"${SHARED_DIRECTORY}/hl2"
						"${SHARED_DIRECTORY}/hl2mp"
						"${SERVER_DIRECTORY}/hl2mp"
						"${SERVER_DIRECTORY}/episodic")
						
#Link libs for things we've actually compiled
target_link_libraries(server PRIVATE tier0 mathlib)

#Linked libs [externals]
# We need to link against:
#	- tier0
#	- tier1
#	- tier2
#	- tier3
#	- particles
#	- mathlib
#	- dmxloader
#	- choreoobjects
#	- libprotobuf
target_link_libraries(server PRIVATE 	"${PLATFORM_PUBLIC_LIB_DIR}/dmxloader.a"
										"${PLATFORM_PUBLIC_LIB_DIR}/choreoobjects.a"
										"${PLATFORM_PUBLIC_LIB_DIR}/particles.a"
										"${PLATFORM_PUBLIC_LIB_DIR}/tier2.a"
										"${PLATFORM_PUBLIC_LIB_DIR}/tier3.a"
										"${PLATFORM_PUBLIC_LIB_DIR}/libprotobuf.a")

target_compile_options(server PRIVATE -lsteam_api)

target_compile_definitions(server PRIVATE GAME_DLL VECTOR VERSION_SAFE_STEAM_API_INTERFACES USE_NAV_MESH HL2_EPISODIC HL2_DLL SWDS
									COMPILER_GCC
									VECTOR
									SOURCE_SDK
									VALVE_NO_AUTO_P4
									DISABLE_PROTECTED_THINGS)
set_property(TARGET server PROPERTY CXX_STANDARD 11)

#########################################
#Include source base stuff
include("${CMAKE_HOME_DIRECTORY}/CMakeScripts/SourceLibrary.cmake")
#########################################



