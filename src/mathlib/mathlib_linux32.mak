NAME=mathlib
SRCROOT=..
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
DEFINES += -DVPC -DRAD_TELEMETRY_DISABLED -DDEBUG -D_DEBUG -DGNUC -DPOSIX -DCOMPILER_GCC -D_DLL_EXT=.so -D_LINUX -DLINUX -DPOSIX -D_POSIX -DBINK_VIDEO -DGL_GLEXT_PROTOTYPES -DDX_TO_GL_ABSTRACTION -DUSE_SDL -DDEV_BUILD -DFRAME_POINTER_OMISSION_DISABLED -DMATHLIB_LIB -D_EXTERNAL_DLL_EXT=.so -DVPCGAMECAPS=HL2MP -DPROJECTDIR=/home/jeremy/Desktop/Projects/SrcM/src/mathlib -D_DLL_EXT=.so -DSOURCE1=1 -DVPCGAME=hl2mp -D_LINUX=1 -D_POSIX=1 -DLINUX=1 -DPOSIX=1 
else
DEFINES += -DVPC -DRAD_TELEMETRY_DISABLED -DNDEBUG -DGNUC -DPOSIX -DCOMPILER_GCC -D_DLL_EXT=.so -D_LINUX -DLINUX -DPOSIX -D_POSIX -DBINK_VIDEO -DGL_GLEXT_PROTOTYPES -DDX_TO_GL_ABSTRACTION -DUSE_SDL -DDEV_BUILD -DFRAME_POINTER_OMISSION_DISABLED -DMATHLIB_LIB -D_EXTERNAL_DLL_EXT=.so -DVPCGAMECAPS=HL2MP -DPROJECTDIR=/home/jeremy/Desktop/Projects/SrcM/src/mathlib -D_DLL_EXT=.so -DSOURCE1=1 -DVPCGAME=hl2mp -D_LINUX=1 -D_POSIX=1 -DLINUX=1 -DPOSIX=1 
endif
INCLUDEDIRS += ../common ../public ../public/tier0 ../public/tier1 ../thirdparty/SDL2 ../public/mathlib 
CONFTYPE=lib
OUTPUTFILE=../lib/public/linux32/mathlib.a


POSTBUILDCOMMAND=true



CPPFILES= \
    3dnow.cpp \
    almostequal.cpp \
    anorms.cpp \
    bumpvects.cpp \
    color_conversion.cpp \
    halton.cpp \
    IceKey.cpp \
    imagequant.cpp \
    lightdesc.cpp \
    mathlib_base.cpp \
    polyhedron.cpp \
    powsse.cpp \
    quantize.cpp \
    randsse.cpp \
    simdvectormatrix.cpp \
    sparse_convolution_noise.cpp \
    spherical.cpp \
    sse.cpp \
    sseconst.cpp \
    ssenoise.cpp \
    vector.cpp \
    vmatrix.cpp \


LIBFILES = \


LIBFILENAMES = \


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


$(OBJ_DIR)/3dnow.o : $(PWD)/3dnow.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/almostequal.o : $(PWD)/almostequal.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/anorms.o : $(PWD)/anorms.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/bumpvects.o : $(PWD)/bumpvects.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/color_conversion.o : $(PWD)/color_conversion.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/halton.o : $(PWD)/halton.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/IceKey.o : $(PWD)/IceKey.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/imagequant.o : $(PWD)/imagequant.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/lightdesc.o : $(PWD)/lightdesc.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/mathlib_base.o : $(PWD)/mathlib_base.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/polyhedron.o : $(PWD)/polyhedron.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/powsse.o : $(PWD)/powsse.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/quantize.o : $(PWD)/quantize.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/randsse.o : $(PWD)/randsse.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/simdvectormatrix.o : $(PWD)/simdvectormatrix.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/sparse_convolution_noise.o : $(PWD)/sparse_convolution_noise.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/spherical.o : $(PWD)/spherical.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/sse.o : $(PWD)/sse.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/sseconst.o : $(PWD)/sseconst.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ssenoise.o : $(PWD)/ssenoise.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/vector.o : $(PWD)/vector.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/vmatrix.o : $(PWD)/vmatrix.cpp $(PWD)/mathlib_linux32.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)
