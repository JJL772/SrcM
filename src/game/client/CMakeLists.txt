#
#
# Client
#
# CMake project for Source SDK client
#
#

#========================================#
# WARNING: AVOID MODIFYING THIS FILE
#========================================#
project(client C CXX)

include("CMakeScripts/ClientSources.cmake")

#Used to get all public headers
include("${CMAKE_HOME_DIRECTORY}/CMakeScripts/PublicHeaders.cmake")

get_public_headers(PublicHeaders)

#list(APPEND Src ${PublicHeaders})

source_group("Public Headers" FILES ${PublicHeaders})
source_group(Source FILES ${CLIENT_SOURCES})

#========================================#
# This fixes visual studio structure
#========================================#
foreach(SOURCEFILE IN LISTS CLIENT_SOURCES)
	get_filename_component(src_path "${SOURCEFILE}" PATH)
	string(REPLACE "/" "\\" new_src_path "${src_path}")
	source_group("${new_src_path}" FILES "${SOURCEFILE}")
endforeach()


#########################################
#Create lib
add_library(client SHARED ${CLIENT_SOURCES} renderer/window.cpp renderer/window.h renderer/vk/vk.h renderer/vk/vkinit.cpp renderer/vk/vkutil.cpp renderer/IRenderer.h renderer/RenderSystem.cpp renderer/RenderSystem.h renderer/vk/vk-interface.h renderer/vk/vk-interface.cpp)
#########################################


#Set props
set_target_properties(client PROPERTIES ARCHIVE_OUTPUT_NAME "client")
set_target_properties(client PROPERTIES LIBRARY_OUTPUT_NAME "client")
set_target_properties(client PROPERTIES LINKER_LANGUAGE CXX)

#WARNING THIS IS TEMPORARY
target_compile_definitions(client PRIVATE HL2MP HL2_CLIENT_DLL)

target_include_directories(client PRIVATE 	"${CLIENT_DIRECTORY}"
						"${SHARED_DIRECTORY}"
						"${SOURCE_UTILS_COMMON_INCLUDE_DIR}"
						"${CLIENT_DIRECTORY}/sdk"
						"${CLIENT_DIRECTORY}/replay"
						"${CLIENT_DIRECTORY}/game_controls"
						"${CLIENT_DIRECTORY}/sixense"
						"${CLIENT_DIRECTORY}/hl2"
						"${SHARED_DIRECTORY}/hl2"
						"${SHARED_DIRECTORY}/hl2mp"
						"${CLIENT_DIRECTORY}/hl2mp"
						"${CLIENT_DIRECTORY}/hl2mp/ui"
						"${CLIENT_DIRECTORY}/episodic"
						"${VULKAN_INCLUDE_DIRECTORY}")
						
#Link libs for things we've actually compiled
target_link_libraries(client PRIVATE tier0 mathlib)

#Linked libs [externals]
# We need to link against:
#	- tier0 !
#	- tier1 !
#	- tier2 ! 
#	- tier3 !
#	- particles !
#	- mathlib !
#	- dmxloader !
#	- choreoobjects !
#	- libprotobuf !
#	- vtf !
#	- bitmap !
#	- libz !
#	- libcurl
#	- libcurlssl
#	- libssl
#	- libcrypto
#	- vgui_controls !
#	- matsys_controls !
target_link_libraries(client PRIVATE 	"${PLATFORM_PUBLIC_LIB_DIR}/dmxloader.a"
										"${PLATFORM_PUBLIC_LIB_DIR}/choreoobjects.a"
										"${PLATFORM_PUBLIC_LIB_DIR}/particles.a"
										"${PLATFORM_PUBLIC_LIB_DIR}/tier2.a"
										"${PLATFORM_PUBLIC_LIB_DIR}/tier3.a"
										"${PLATFORM_PUBLIC_LIB_DIR}/libprotobuf.a"
										"${PLATFORM_PUBLIC_LIB_DIR}/libz.a"
										"${PLATFORM_PUBLIC_LIB_DIR}/vtf.a"
										"${PLATFORM_PUBLIC_LIB_DIR}/vgui_controls.a"
										"${PLATFORM_PUBLIC_LIB_DIR}/bitmap.a"
										"${PLATFORM_PUBLIC_LIB_DIR}/matsys_controls.a"
										"${PLATFORM_COMMON_LIB_DIR}/libssl.a"
										"${PLATFORM_COMMON_LIB_DIR}/libcurl.a"
										"${PLATFORM_COMMON_LIB_DIR}/libcrypto.a"
										"${PLATFORM_COMMON_LIB_DIR}/libcurlssl.a"
										)

target_compile_options(client PRIVATE -lsteam_api -ldl -lm -static-libgcc -lpthread -fvisibility=hidden)

target_compile_definitions(client PRIVATE 
									CLIENT_DLL 
									VECTOR 
									VERSION_SAFE_STEAM_API_INTERFACES 
									USE_NAV_MESH 
									HL2_EPISODIC 
									SWDS
									COMPILER_GCC
									VECTOR
									SOURCE_SDK
									VALVE_NO_AUTO_P4
									GL_EXT_PROTOTYPES
									DX_TO_GL_ABSTRACTION
									USE_SDL
									NO_STRING_T
									USE_WEBM_FOR_REPLAY
									DISABLE_PROTECTED_THINGS
									DLLNAME=client
									SOURCE1=1
									BINK_VIDEO)

set_property(TARGET client PROPERTY CXX_STANDARD 11)

#########################################
#Include source base stuff
include("${CMAKE_HOME_DIRECTORY}/CMakeScripts/SourceLibrary.cmake")
#########################################



