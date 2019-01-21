#
# Makefile
#
# Builds stuff!
#

all:
	make -f "src/mathlib/mathlib_linux32.mak"
	make -f "src/tier1/tier1_linux32.mak"
	make -f "src/vgui2/vgui_controls/vgui_controls_linux32.mak"
	make -f "src/raytrace/raytrace_linux32.mak"
	make -f "src/game/server/server_linux32_hl2mp.mak"
	make -f "src/game/client/client_linux32_hl2mp.mak"
