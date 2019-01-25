#
#
# Tier1
#
# CMake project for valve's tier1 lib
#
# Written by Jeremy L.
#
#
project(tier1 C CXX)

message("Generating Tier1 Project...")

#Search for all source files
set(Src
    ./byteswap.cpp
    ./characterset.cpp
    ./checksum_crc.cpp
    ./checksum_md5.cpp
    ./checksum_sha1.cpp
    ./convar.cpp
    ./datamanager.cpp
    ./diff.cpp
    ./generichash.cpp
    ./ilocalize.cpp
    ./interface.cpp
    ./KeyValues.cpp
    ./kvpacker.cpp
    ./lzmaDecoder.cpp
    ./NetAdr.cpp
    ./processor_detect.cpp
    ./rangecheckedvar.cpp
    ./reliabletimer.cpp
    ./snappy-sinksource.cpp
    ./snappy-stubs-internal.cpp
    ./snappy.cpp
    ./splitstring.cpp
    ./strtools.cpp
    ./strtools_unicode.cpp
    ./threadpool.cpp
    ./tier1.cpp
    ./tokenreader.cpp
    ./uniqueid.cpp
    ./bitbuf.cpp
    ./commandbuffer.cpp
    ./mempool.cpp
    ./memstack.cpp
    ./newbitbuf.cpp
    ./sparsematrix.cpp
    ./stringpool.cpp
    ./utlbinaryblock.cpp
    ./utlbuffer.cpp
    ./utlbufferutil.cpp
    ./utlstring.cpp
    ./utlsymbol.cpp
)

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

target_compile_definitions(tier1 PRIVATE 	TIER1_STATIC_LIB=1
											LIBNAME=tier1
											PROJECTDIR=${SOURCE_TIER1_SRC_DIR}
											DISABLE_PROTECTED_THINGS=1)
											
set_property(TARGET tier1 PROPERTY CXX_STANDARD 11)

#########################################
#Include source base stuff
include("${CMAKE_HOME_DIRECTORY}/CMakeScripts/SourceLibrary.cmake")
#########################################



