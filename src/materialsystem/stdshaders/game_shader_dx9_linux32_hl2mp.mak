NAME=shaders_hl2mp
SRCROOT=../..
TARGET_PLATFORM=linux32
TARGET_PLATFORM_EXT=
USE_VALVE_BINDIR=0
PWD:=$(shell pwd)
# If no configuration is specified, "release" will be used.
ifeq "$(CFG)" ""
	CFG = release
endif

GCC_ExtraCompilerFlags=
GCC_ExtraLinkerFlags=
SymbolVisibility=hidden
OptimizerLevel=-gdwarf-4 -g2 $(OptimizerLevel_CompilerSpecific)
SystemLibraries=
DLL_EXT=.so
SYM_EXT=.dbg
FORCEINCLUDES= 
ifeq "$(CFG)" "debug"
DEFINES += -DVPC -DRAD_TELEMETRY_DISABLED -DDEBUG -D_DEBUG -DGNUC -DPOSIX -DCOMPILER_GCC -D_DLL_EXT=.so -D_LINUX -DLINUX -DPOSIX -D_POSIX -DDLLNAME=game_shader_dx9 -DBINK_VIDEO -DGL_GLEXT_PROTOTYPES -DDX_TO_GL_ABSTRACTION -DUSE_SDL -DDEV_BUILD -DFRAME_POINTER_OMISSION_DISABLED -DSTDSHADER_DX9_DLL_EXPORT -DFAST_MATERIALVAR_ACCESS -DGAME_SHADER_DLL -D_EXTERNAL_DLL_EXT=.so -DVPCGAMECAPS=HL2MP -DPROJECTDIR=/home/jeremy/Desktop/Projects/SrcM/src/materialsystem/stdshaders -D_DLL_EXT=.so -DSOURCE1=1 -DVPCGAME=hl2mp -D_LINUX=1 -D_POSIX=1 -DLINUX=1 -DPOSIX=1 
else
DEFINES += -DVPC -DRAD_TELEMETRY_DISABLED -DNDEBUG -DGNUC -DPOSIX -DCOMPILER_GCC -D_DLL_EXT=.so -D_LINUX -DLINUX -DPOSIX -D_POSIX -DDLLNAME=game_shader_dx9 -DBINK_VIDEO -DGL_GLEXT_PROTOTYPES -DDX_TO_GL_ABSTRACTION -DUSE_SDL -DDEV_BUILD -DFRAME_POINTER_OMISSION_DISABLED -DSTDSHADER_DX9_DLL_EXPORT -DFAST_MATERIALVAR_ACCESS -DGAME_SHADER_DLL -D_EXTERNAL_DLL_EXT=.so -DVPCGAMECAPS=HL2MP -DPROJECTDIR=/home/jeremy/Desktop/Projects/SrcM/src/materialsystem/stdshaders -D_DLL_EXT=.so -DSOURCE1=1 -DVPCGAME=hl2mp -D_LINUX=1 -D_POSIX=1 -DLINUX=1 -DPOSIX=1 
endif
INCLUDEDIRS += ../../common ../../public ../../public/tier0 ../../public/tier1 ../../thirdparty/SDL2 fxctmp9 vshtmp9 
CONFTYPE=dll
IMPORTLIBRARY=
GAMEOUTPUTFILE=../../../game/mod_hl2mp/bin/game_shader_dx9.so
OUTPUTFILE=$(OBJ_DIR)/game_shader_dx9.so


POSTBUILDCOMMAND=true



CPPFILES= \
    ../../public/tier0/memoverride.cpp \
    BaseVSShader.cpp \
    Bloom.cpp \
    example_model_dx9.cpp \
    example_model_dx9_helper.cpp \
    screenspace_general.cpp \


LIBFILES = \
    ../../lib/public/linux32/tier1.a \
    ../../lib/public/linux32/mathlib.a \
    ../../lib/public/linux32/shaderlib.a \
    -L../../lib/public/linux32 -ltier0 \
    -L../../lib/public/linux32 -lvstdlib \


LIBFILENAMES = \
    ../../lib/public/linux32/libtier0.so \
    ../../lib/public/linux32/libvstdlib.so \
    ../../lib/public/linux32/mathlib.a \
    ../../lib/public/linux32/shaderlib.a \
    ../../lib/public/linux32/tier1.a \


# Include the base makefile now.
include $(SRCROOT)/devtools/makefile_base_posix.mak



OTHER_DEPENDENCIES = \


$(OBJ_DIR)/_other_deps.P : $(OTHER_DEPENDENCIES)
	$(GEN_OTHER_DEPS)

-include $(OBJ_DIR)/_other_deps.P


ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
PFILES = $(OBJS:.o=.P)
-include $(PFILES)
endif


$(OBJ_DIR)/memoverride.o : $(PWD)/../../public/tier0/memoverride.cpp $(PWD)/game_shader_dx9_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/BaseVSShader.o : $(PWD)/BaseVSShader.cpp $(PWD)/game_shader_dx9_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/Bloom.o : $(PWD)/Bloom.cpp $(PWD)/game_shader_dx9_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/example_model_dx9.o : $(PWD)/example_model_dx9.cpp $(PWD)/game_shader_dx9_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/example_model_dx9_helper.o : $(PWD)/example_model_dx9_helper.cpp $(PWD)/game_shader_dx9_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/screenspace_general.o : $(PWD)/screenspace_general.cpp $(PWD)/game_shader_dx9_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)
