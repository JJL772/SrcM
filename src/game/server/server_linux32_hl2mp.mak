NAME=server_hl2mp
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
DEFINES += -DVPC -DRAD_TELEMETRY_DISABLED -DDEBUG -D_DEBUG -DGNUC -DPOSIX -DCOMPILER_GCC -D_DLL_EXT=.so -D_LINUX -DLINUX -DPOSIX -D_POSIX -DDLLNAME=server -DBINK_VIDEO -DGL_GLEXT_PROTOTYPES -DDX_TO_GL_ABSTRACTION -DUSE_SDL -DDEV_BUILD -DFRAME_POINTER_OMISSION_DISABLED -DGAME_DLL -DVECTOR -DVERSION_SAFE_STEAM_API_INTERFACES -DPROTECTED_THINGS_ENABLE -Dsprintf=use_Q_snprintf_instead_of_sprintf -Dstrncpy=use_Q_strncpy_instead -D_snprintf=use_Q_snprintf_instead -DSWDS -DUSE_NAV_MESH -DHL2MP -DHL2_DLL -D_EXTERNAL_DLL_EXT=.so -DVPCGAMECAPS=HL2MP -DPROJECTDIR=/home/jeremy/Desktop/Projects/SrcM/src/game/server -D_DLL_EXT=.so -DSOURCE1=1 -DVPCGAME=hl2mp -D_LINUX=1 -D_POSIX=1 -DLINUX=1 -DPOSIX=1 
else
DEFINES += -DVPC -DRAD_TELEMETRY_DISABLED -DNDEBUG -DGNUC -DPOSIX -DCOMPILER_GCC -D_DLL_EXT=.so -D_LINUX -DLINUX -DPOSIX -D_POSIX -DDLLNAME=server -DBINK_VIDEO -DGL_GLEXT_PROTOTYPES -DDX_TO_GL_ABSTRACTION -DUSE_SDL -DDEV_BUILD -DFRAME_POINTER_OMISSION_DISABLED -DGAME_DLL -DVECTOR -DVERSION_SAFE_STEAM_API_INTERFACES -DPROTECTED_THINGS_ENABLE -Dsprintf=use_Q_snprintf_instead_of_sprintf -Dstrncpy=use_Q_strncpy_instead -D_snprintf=use_Q_snprintf_instead -DSWDS -DUSE_NAV_MESH -DHL2MP -DHL2_DLL -D_EXTERNAL_DLL_EXT=.so -DVPCGAMECAPS=HL2MP -DPROJECTDIR=/home/jeremy/Desktop/Projects/SrcM/src/game/server -D_DLL_EXT=.so -DSOURCE1=1 -DVPCGAME=hl2mp -D_LINUX=1 -D_POSIX=1 -DLINUX=1 -DPOSIX=1 
endif
INCLUDEDIRS += ../../common ../../public ../../public/tier0 ../../public/tier1 ../../thirdparty/SDL2 ../../game/server/generated_proto_mod_hl2mp ../../thirdparty/protobuf-2.3.0/src ./ ../../game/shared ../../utils/common ../../game/shared/econ ../../game/server/NextBot ../../game/shared/hl2 ./hl2 ./hl2mp ../../game/shared/hl2mp 
CONFTYPE=dll
IMPORTLIBRARY=
GAMEOUTPUTFILE=../../../game/mod_hl2mp/bin/server.so
OUTPUTFILE=$(OBJ_DIR)/server.so


POSTBUILDCOMMAND=true



CPPFILES= \
    ../../common/language.cpp \
    ../../common/randoverride.cpp \
    ../../game/server/serverbenchmark_base.cpp \
    ../../game/server/vote_controller.cpp \
    ../../game/shared/achievementmgr.cpp \
    ../../game/shared/achievements_hlx.cpp \
    ../../game/shared/achievement_saverestore.cpp \
    ../../game/shared/activitylist.cpp \
    ../../game/shared/ammodef.cpp \
    ../../game/shared/animation.cpp \
    ../../game/shared/baseachievement.cpp \
    ../../game/shared/basecombatcharacter_shared.cpp \
    ../../game/shared/basecombatweapon_shared.cpp \
    ../../game/shared/baseentity_shared.cpp \
    ../../game/shared/basegrenade_shared.cpp \
    ../../game/shared/baseparticleentity.cpp \
    ../../game/shared/baseplayer_shared.cpp \
    ../../game/shared/baseprojectile.cpp \
    ../../game/shared/baseviewmodel_shared.cpp \
    ../../game/shared/base_playeranimstate.cpp \
    ../../game/shared/beam_shared.cpp \
    ../../game/shared/collisionproperty.cpp \
    ../../game/shared/death_pose.cpp \
    ../../game/shared/debugoverlay_shared.cpp \
    ../../game/shared/decals.cpp \
    ../../game/shared/effect_dispatch_data.cpp \
    ../../game/shared/ehandle.cpp \
    ../../game/shared/entitylist_base.cpp \
    ../../game/shared/EntityParticleTrail_Shared.cpp \
    ../../game/shared/env_detail_controller.cpp \
    ../../game/shared/env_wind_shared.cpp \
    ../../game/shared/eventlist.cpp \
    ../../game/shared/func_ladder.cpp \
    ../../game/shared/gamemovement.cpp \
    ../../game/shared/gamerules.cpp \
    ../../game/shared/gamerules_register.cpp \
    ../../game/shared/GameStats.cpp \
    ../../game/shared/gamestringpool.cpp \
    ../../game/shared/gamevars_shared.cpp \
    ../../game/shared/hintmessage.cpp \
    ../../game/shared/hintsystem.cpp \
    ../../game/shared/hl2/basehlcombatweapon_shared.cpp \
    ../../game/shared/hl2/env_headcrabcanister_shared.cpp \
    ../../game/shared/hl2/hl2_gamerules.cpp \
    ../../game/shared/hl2/hl2_usermessages.cpp \
    ../../game/shared/hl2/hl_gamemovement.cpp \
    ../../game/shared/hl2/survival_gamerules.cpp \
    ../../game/shared/hl2mp/hl2mp_gamerules.cpp \
    ../../game/shared/hl2mp/hl2mp_player_shared.cpp \
    ../../game/shared/hl2mp/hl2mp_weapon_parse.cpp \
    ../../game/shared/hl2mp/weapon_357.cpp \
    ../../game/shared/hl2mp/weapon_ar2.cpp \
    ../../game/shared/hl2mp/weapon_crossbow.cpp \
    ../../game/shared/hl2mp/weapon_crowbar.cpp \
    ../../game/shared/hl2mp/weapon_frag.cpp \
    ../../game/shared/hl2mp/weapon_hl2mpbase.cpp \
    ../../game/shared/hl2mp/weapon_hl2mpbasebasebludgeon.cpp \
    ../../game/shared/hl2mp/weapon_hl2mpbasehlmpcombatweapon.cpp \
    ../../game/shared/hl2mp/weapon_hl2mpbase_machinegun.cpp \
    ../../game/shared/hl2mp/weapon_physcannon.cpp \
    ../../game/shared/hl2mp/weapon_pistol.cpp \
    ../../game/shared/hl2mp/weapon_rpg.cpp \
    ../../game/shared/hl2mp/weapon_shotgun.cpp \
    ../../game/shared/hl2mp/weapon_slam.cpp \
    ../../game/shared/hl2mp/weapon_smg1.cpp \
    ../../game/shared/hl2mp/weapon_stunstick.cpp \
    ../../game/shared/igamesystem.cpp \
    ../../game/shared/interval.cpp \
    ../../game/shared/mapentities_shared.cpp \
    ../../game/shared/ModelSoundsCache.cpp \
    ../../game/shared/movevars_shared.cpp \
    ../../game/shared/mp_shareddefs.cpp \
    ../../game/shared/multiplay_gamerules.cpp \
    ../../game/shared/obstacle_pushaway.cpp \
    ../../game/shared/particlesystemquery.cpp \
    ../../game/shared/particle_parse.cpp \
    ../../game/shared/physics_main_shared.cpp \
    ../../game/shared/physics_saverestore.cpp \
    ../../game/shared/physics_shared.cpp \
    ../../game/shared/point_bonusmaps_accessor.cpp \
    ../../game/shared/point_posecontroller.cpp \
    ../../game/shared/precache_register.cpp \
    ../../game/shared/predictableid.cpp \
    ../../game/shared/predicted_viewmodel.cpp \
    ../../game/shared/props_shared.cpp \
    ../../game/shared/querycache.cpp \
    ../../game/shared/ragdoll_shared.cpp \
    ../../game/shared/rope_helpers.cpp \
    ../../game/shared/saverestore.cpp \
    ../../game/shared/SceneCache.cpp \
    ../../game/shared/sceneentity_shared.cpp \
    ../../game/shared/script_intro_shared.cpp \
    ../../game/shared/sequence_Transitioner.cpp \
    ../../game/shared/sheetsimulator.cpp \
    ../../game/shared/simtimer.cpp \
    ../../game/shared/singleplay_gamerules.cpp \
    ../../game/shared/SoundEmitterSystem.cpp \
    ../../game/shared/soundenvelope.cpp \
    ../../game/shared/Sprite.cpp \
    ../../game/shared/SpriteTrail.cpp \
    ../../game/shared/studio_shared.cpp \
    ../../game/shared/takedamageinfo.cpp \
    ../../game/shared/teamplayroundbased_gamerules.cpp \
    ../../game/shared/teamplay_gamerules.cpp \
    ../../game/shared/teamplay_round_timer.cpp \
    ../../game/shared/test_ehandle.cpp \
    ../../game/shared/usercmd.cpp \
    ../../game/shared/usermessages.cpp \
    ../../game/shared/util_shared.cpp \
    ../../game/shared/vehicle_viewblend_shared.cpp \
    ../../game/shared/voice_gamemgr.cpp \
    ../../game/shared/weapon_parse.cpp \
    ../../game/shared/weapon_proficiency.cpp \
    ../../public/bone_setup.cpp \
    ../../public/collisionutils.cpp \
    ../../public/dt_send.cpp \
    ../../public/dt_utlvector_common.cpp \
    ../../public/dt_utlvector_send.cpp \
    ../../public/editor_sendcommand.cpp \
    ../../public/filesystem_helpers.cpp \
    ../../public/haptics/haptic_msgs.cpp \
    ../../public/interpolatortypes.cpp \
    ../../public/keyframe/keyframe.cpp \
    ../../public/map_utils.cpp \
    ../../public/networkvar.cpp \
    ../../public/registry.cpp \
    ../../public/rope_physics.cpp \
    ../../public/scratchpad3d.cpp \
    ../../public/ScratchPadUtils.cpp \
    ../../public/server_class.cpp \
    ../../public/simple_physics.cpp \
    ../../public/SoundParametersInternal.cpp \
    ../../public/stringregistry.cpp \
    ../../public/studio.cpp \
    ../../public/tier0/memoverride.cpp \
    ai_activity.cpp \
    ai_baseactor.cpp \
    ai_basehumanoid.cpp \
    ai_basenpc.cpp \
    ai_basenpc_flyer.cpp \
    ai_basenpc_flyer_new.cpp \
    ai_basenpc_movement.cpp \
    ai_basenpc_physicsflyer.cpp \
    ai_basenpc_schedule.cpp \
    ai_basenpc_squad.cpp \
    ai_behavior.cpp \
    ai_behavior_assault.cpp \
    ai_behavior_fear.cpp \
    ai_behavior_follow.cpp \
    ai_behavior_lead.cpp \
    ai_behavior_rappel.cpp \
    ai_behavior_standoff.cpp \
    ai_blended_movement.cpp \
    ai_concommands.cpp \
    ai_condition.cpp \
    AI_Criteria.cpp \
    ai_default.cpp \
    ai_dynamiclink.cpp \
    ai_event.cpp \
    ai_goalentity.cpp \
    ai_hint.cpp \
    ai_hull.cpp \
    ai_initutils.cpp \
    AI_Interest_Target.cpp \
    ai_link.cpp \
    ai_localnavigator.cpp \
    ai_looktarget.cpp \
    ai_memory.cpp \
    ai_motor.cpp \
    ai_moveprobe.cpp \
    ai_moveshoot.cpp \
    ai_movesolver.cpp \
    ai_namespaces.cpp \
    ai_navigator.cpp \
    ai_network.cpp \
    ai_networkmanager.cpp \
    ai_node.cpp \
    ai_pathfinder.cpp \
    ai_planesolver.cpp \
    ai_playerally.cpp \
    ai_relationship.cpp \
    AI_ResponseSystem.cpp \
    ai_route.cpp \
    ai_saverestore.cpp \
    ai_schedule.cpp \
    ai_scriptconditions.cpp \
    ai_senses.cpp \
    ai_sentence.cpp \
    ai_speech.cpp \
    ai_speechfilter.cpp \
    ai_squad.cpp \
    ai_squadslot.cpp \
    ai_tacticalservices.cpp \
    ai_task.cpp \
    ai_trackpather.cpp \
    ai_utils.cpp \
    ai_waypoint.cpp \
    baseanimating.cpp \
    BaseAnimatingOverlay.cpp \
    basebludgeonweapon.cpp \
    basecombatcharacter.cpp \
    basecombatweapon.cpp \
    baseentity.cpp \
    baseflex.cpp \
    basegrenade_concussion.cpp \
    basegrenade_contact.cpp \
    basegrenade_timed.cpp \
    basemultiplayerplayer.cpp \
    basetempentity.cpp \
    baseviewmodel.cpp \
    base_transmit_proxy.cpp \
    bitstring.cpp \
    bmodels.cpp \
    buttons.cpp \
    cbase.cpp \
    client.cpp \
    colorcorrection.cpp \
    colorcorrectionvolume.cpp \
    CommentarySystem.cpp \
    controlentities.cpp \
    cplane.cpp \
    CRagdollMagnet.cpp \
    damagemodifier.cpp \
    doors.cpp \
    dynamiclight.cpp \
    effects.cpp \
    EffectsServer.cpp \
    entityblocker.cpp \
    EntityDissolve.cpp \
    EntityFlame.cpp \
    entitylist.cpp \
    EntityParticleTrail.cpp \
    entity_tools_server.cpp \
    EnvBeam.cpp \
    EnvFade.cpp \
    EnvHudHint.cpp \
    EnvLaser.cpp \
    EnvMessage.cpp \
    envmicrophone.cpp \
    EnvShake.cpp \
    EnvSpark.cpp \
    env_debughistory.cpp \
    env_effectsscript.cpp \
    env_entity_maker.cpp \
    env_particlescript.cpp \
    env_player_surface_trigger.cpp \
    env_projectedtexture.cpp \
    env_screenoverlay.cpp \
    env_texturetoggle.cpp \
    env_tonemap_controller.cpp \
    env_zoom.cpp \
    EventLog.cpp \
    event_tempentity_tester.cpp \
    explode.cpp \
    filters.cpp \
    fire.cpp \
    fire_smoke.cpp \
    fish.cpp \
    fogcontroller.cpp \
    fourwheelvehiclephysics.cpp \
    func_areaportal.cpp \
    func_areaportalbase.cpp \
    func_areaportalwindow.cpp \
    func_break.cpp \
    func_breakablesurf.cpp \
    func_dust.cpp \
    func_ladder_endpoint.cpp \
    func_lod.cpp \
    func_movelinear.cpp \
    func_occluder.cpp \
    func_reflective_glass.cpp \
    func_smokevolume.cpp \
    game.cpp \
    gamedll_replay.cpp \
    gamehandle.cpp \
    gameinterface.cpp \
    GameStats_BasicStatsFunctions.cpp \
    gametrace_dll.cpp \
    gameweaponmanager.cpp \
    game_ui.cpp \
    genericactor.cpp \
    genericmonster.cpp \
    gib.cpp \
    globals.cpp \
    globalstate.cpp \
    grenadethrown.cpp \
    guntarget.cpp \
    hierarchy.cpp \
    hl2/ai_allymanager.cpp \
    hl2/ai_behavior_actbusy.cpp \
    hl2/ai_behavior_functank.cpp \
    hl2/ai_behavior_holster.cpp \
    hl2/ai_behavior_police.cpp \
    hl2/ai_goal_police.cpp \
    hl2/ai_spotlight.cpp \
    hl2/antlion_dust.cpp \
    hl2/antlion_maker.cpp \
    hl2/ar2_explosion.cpp \
    hl2/basehlcombatweapon.cpp \
    hl2/cbasehelicopter.cpp \
    hl2/cbasespriteprojectile.cpp \
    hl2/citadel_effects.cpp \
    hl2/combine_mine.cpp \
    hl2/env_alyxemp.cpp \
    hl2/env_headcrabcanister.cpp \
    hl2/env_speaker.cpp \
    hl2/env_starfield.cpp \
    hl2/Func_Monitor.cpp \
    hl2/func_recharge.cpp \
    hl2/func_tank.cpp \
    hl2/grenade_ar2.cpp \
    hl2/grenade_beam.cpp \
    hl2/grenade_bugbait.cpp \
    hl2/grenade_frag.cpp \
    hl2/grenade_homer.cpp \
    hl2/grenade_pathfollower.cpp \
    hl2/hl2_ai_network.cpp \
    hl2/hl2_eventlog.cpp \
    hl2/hl2_player.cpp \
    hl2/hl2_playerlocaldata.cpp \
    hl2/hl2_triggers.cpp \
    hl2/hl_playermove.cpp \
    hl2/info_teleporter_countdown.cpp \
    hl2/item_ammo.cpp \
    hl2/item_battery.cpp \
    hl2/item_dynamic_resupply.cpp \
    hl2/item_healthkit.cpp \
    hl2/item_itemcrate.cpp \
    hl2/item_suit.cpp \
    hl2/look_door.cpp \
    hl2/monster_dummy.cpp \
    hl2/npc_alyx.cpp \
    hl2/npc_antlion.cpp \
    hl2/npc_antlionguard.cpp \
    hl2/npc_apcdriver.cpp \
    hl2/npc_attackchopper.cpp \
    hl2/npc_barnacle.cpp \
    hl2/npc_barney.cpp \
    hl2/npc_basescanner.cpp \
    hl2/npc_BaseZombie.cpp \
    hl2/npc_breen.cpp \
    hl2/npc_bullseye.cpp \
    hl2/npc_citizen17.cpp \
    hl2/npc_combine.cpp \
    hl2/npc_combinecamera.cpp \
    hl2/npc_combinedropship.cpp \
    hl2/npc_combinegunship.cpp \
    hl2/npc_combines.cpp \
    hl2/npc_cranedriver.cpp \
    hl2/npc_crow.cpp \
    hl2/npc_dog.cpp \
    hl2/npc_eli.cpp \
    hl2/npc_enemyfinder.cpp \
    hl2/npc_fisherman.cpp \
    hl2/npc_gman.cpp \
    hl2/npc_headcrab.cpp \
    hl2/npc_ichthyosaur.cpp \
    hl2/npc_kleiner.cpp \
    hl2/npc_launcher.cpp \
    hl2/npc_manhack.cpp \
    hl2/npc_metropolice.cpp \
    hl2/npc_missiledefense.cpp \
    hl2/npc_monk.cpp \
    hl2/npc_mossman.cpp \
    hl2/npc_playercompanion.cpp \
    hl2/npc_PoisonZombie.cpp \
    hl2/npc_rollermine.cpp \
    hl2/npc_scanner.cpp \
    hl2/npc_stalker.cpp \
    hl2/npc_strider.cpp \
    hl2/npc_turret_ceiling.cpp \
    hl2/npc_turret_floor.cpp \
    hl2/npc_turret_ground.cpp \
    hl2/npc_vortigaunt_episodic.cpp \
    hl2/npc_zombie.cpp \
    hl2/point_apc_controller.cpp \
    hl2/prop_combine_ball.cpp \
    hl2/prop_thumper.cpp \
    hl2/proto_sniper.cpp \
    hl2/rotorwash.cpp \
    hl2/script_intro.cpp \
    hl2/te_gaussexplosion.cpp \
    hl2/vehicle_airboat.cpp \
    hl2/vehicle_apc.cpp \
    hl2/vehicle_crane.cpp \
    hl2/vehicle_prisoner_pod.cpp \
    hl2/vehicle_viewcontroller.cpp \
    hl2/weapon_annabelle.cpp \
    hl2/weapon_bugbait.cpp \
    hl2/weapon_cguard.cpp \
    hl2/weapon_flaregun.cpp \
    hl2mp/grenade_satchel.cpp \
    hl2mp/grenade_tripmine.cpp \
    hl2mp/hl2mp_bot_temp.cpp \
    hl2mp/hl2mp_client.cpp \
    hl2mp/hl2mp_cvars.cpp \
    hl2mp/hl2mp_gameinterface.cpp \
    hl2mp/hl2mp_player.cpp \
    hl2mp/te_hl2mp_shotgun_shot.cpp \
    hltvdirector.cpp \
    h_ai.cpp \
    h_cycler.cpp \
    h_export.cpp \
    info_camera_link.cpp \
    info_overlay_accessor.cpp \
    init_factory.cpp \
    intermission.cpp \
    item_world.cpp \
    lightglow.cpp \
    lights.cpp \
    logicauto.cpp \
    logicentities.cpp \
    logicrelay.cpp \
    logic_measure_movement.cpp \
    logic_navigation.cpp \
    mapentities.cpp \
    maprules.cpp \
    MaterialModifyControl.cpp \
    message_entity.cpp \
    modelentities.cpp \
    monstermaker.cpp \
    movehelper_server.cpp \
    movement.cpp \
    movie_explosion.cpp \
    nav_area.cpp \
    nav_colors.cpp \
    nav_edit.cpp \
    nav_entities.cpp \
    nav_file.cpp \
    nav_generate.cpp \
    nav_ladder.cpp \
    nav_merge.cpp \
    nav_mesh.cpp \
    nav_mesh_factory.cpp \
    nav_node.cpp \
    nav_simplify.cpp \
    ndebugoverlay.cpp \
    npc_talker.cpp \
    npc_vehicledriver.cpp \
    particle_fire.cpp \
    particle_light.cpp \
    particle_smokegrenade.cpp \
    particle_system.cpp \
    pathcorner.cpp \
    pathtrack.cpp \
    physconstraint.cpp \
    physics.cpp \
    physics_bone_follower.cpp \
    physics_cannister.cpp \
    physics_fx.cpp \
    physics_impact_damage.cpp \
    physics_main.cpp \
    physics_npc_solver.cpp \
    physics_prop_ragdoll.cpp \
    physobj.cpp \
    phys_controller.cpp \
    plasma.cpp \
    player.cpp \
    playerinfomanager.cpp \
    playerlocaldata.cpp \
    player_command.cpp \
    player_lagcompensation.cpp \
    player_pickup.cpp \
    player_resource.cpp \
    plugin_check.cpp \
    pointanglesensor.cpp \
    PointAngularVelocitySensor.cpp \
    pointhurt.cpp \
    pointteleport.cpp \
    point_camera.cpp \
    point_devshot_camera.cpp \
    point_playermoveconstraint.cpp \
    point_spotlight.cpp \
    point_template.cpp \
    props.cpp \
    RagdollBoogie.cpp \
    ragdoll_manager.cpp \
    recipientfilter.cpp \
    rope.cpp \
    saverestore_gamedll.cpp \
    sceneentity.cpp \
    scratchpad_gamedll_helpers.cpp \
    scripted.cpp \
    scriptedtarget.cpp \
    sendproxy.cpp \
    ServerNetworkProperty.cpp \
    shadowcontrol.cpp \
    SkyCamera.cpp \
    slideshow_display.cpp \
    smokestack.cpp \
    smoke_trail.cpp \
    sound.cpp \
    soundent.cpp \
    soundscape.cpp \
    soundscape_system.cpp \
    spotlightend.cpp \
    sprite_perfmonitor.cpp \
    stdafx.cpp \
    steamjet.cpp \
    subs.cpp \
    sun.cpp \
    tactical_mission.cpp \
    tanktrain.cpp \
    te.cpp \
    team.cpp \
    team_control_point.cpp \
    team_control_point_master.cpp \
    team_control_point_round.cpp \
    team_objectiveresource.cpp \
    team_spawnpoint.cpp \
    team_train_watcher.cpp \
    TemplateEntities.cpp \
    tempmonster.cpp \
    tesla.cpp \
    testfunctions.cpp \
    testtraceline.cpp \
    test_proxytoggle.cpp \
    test_stressentities.cpp \
    textstatsmgr.cpp \
    te_armorricochet.cpp \
    te_basebeam.cpp \
    te_beamentpoint.cpp \
    te_beaments.cpp \
    te_beamfollow.cpp \
    te_beamlaser.cpp \
    te_beampoints.cpp \
    te_beamring.cpp \
    te_beamringpoint.cpp \
    te_beamspline.cpp \
    te_bloodsprite.cpp \
    te_bloodstream.cpp \
    te_breakmodel.cpp \
    te_bspdecal.cpp \
    te_bubbles.cpp \
    te_bubbletrail.cpp \
    te_clientprojectile.cpp \
    te_decal.cpp \
    te_dynamiclight.cpp \
    te_effect_dispatch.cpp \
    te_energysplash.cpp \
    te_explosion.cpp \
    te_fizz.cpp \
    te_footprintdecal.cpp \
    te_glassshatter.cpp \
    te_glowsprite.cpp \
    te_impact.cpp \
    te_killplayerattachments.cpp \
    te_largefunnel.cpp \
    te_muzzleflash.cpp \
    te_particlesystem.cpp \
    te_physicsprop.cpp \
    te_playerdecal.cpp \
    te_projecteddecal.cpp \
    te_showline.cpp \
    te_smoke.cpp \
    te_sparks.cpp \
    te_sprite.cpp \
    te_spritespray.cpp \
    te_worlddecal.cpp \
    timedeventmgr.cpp \
    toolframework_server.cpp \
    trains.cpp \
    triggers.cpp \
    trigger_area_capture.cpp \
    util.cpp \
    variant_t.cpp \
    vehicle_base.cpp \
    vehicle_baseserver.cpp \
    vguiscreen.cpp \
    waterbullet.cpp \
    WaterLODControl.cpp \
    wcedit.cpp \
    weapon_cubemap.cpp \
    weight_button.cpp \
    world.cpp \


LIBFILES = \
    ../../lib/public/linux32/tier1.a \
    ../../lib/public/linux32/libprotobuf.a \
    ../../lib/public/linux32/choreoobjects.a \
    ../../lib/public/linux32/dmxloader.a \
    ../../lib/public/linux32/mathlib.a \
    ../../lib/public/linux32/particles.a \
    ../../lib/public/linux32/tier2.a \
    ../../lib/public/linux32/tier3.a \
    -L../../lib/public/linux32 -ltier0 \
    -L../../lib/public/linux32 -lvstdlib \
    -L../../lib/public/linux32 -lsteam_api \


LIBFILENAMES = \
    ../../lib/public/linux32/choreoobjects.a \
    ../../lib/public/linux32/dmxloader.a \
    ../../lib/public/linux32/libprotobuf.a \
    ../../lib/public/linux32/libsteam_api.so \
    ../../lib/public/linux32/libtier0.so \
    ../../lib/public/linux32/libvstdlib.so \
    ../../lib/public/linux32/mathlib.a \
    ../../lib/public/linux32/particles.a \
    ../../lib/public/linux32/tier1.a \
    ../../lib/public/linux32/tier2.a \
    ../../lib/public/linux32/tier3.a \


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


$(OBJ_DIR)/language.o : $(PWD)/../../common/language.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/randoverride.o : $(PWD)/../../common/randoverride.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/serverbenchmark_base.o : $(PWD)/../../game/server/serverbenchmark_base.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/vote_controller.o : $(PWD)/../../game/server/vote_controller.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/achievementmgr.o : $(PWD)/../../game/shared/achievementmgr.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/achievements_hlx.o : $(PWD)/../../game/shared/achievements_hlx.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/achievement_saverestore.o : $(PWD)/../../game/shared/achievement_saverestore.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/activitylist.o : $(PWD)/../../game/shared/activitylist.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ammodef.o : $(PWD)/../../game/shared/ammodef.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/animation.o : $(PWD)/../../game/shared/animation.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/baseachievement.o : $(PWD)/../../game/shared/baseachievement.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/basecombatcharacter_shared.o : $(PWD)/../../game/shared/basecombatcharacter_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/basecombatweapon_shared.o : $(PWD)/../../game/shared/basecombatweapon_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/baseentity_shared.o : $(PWD)/../../game/shared/baseentity_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/basegrenade_shared.o : $(PWD)/../../game/shared/basegrenade_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/baseparticleentity.o : $(PWD)/../../game/shared/baseparticleentity.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/baseplayer_shared.o : $(PWD)/../../game/shared/baseplayer_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/baseprojectile.o : $(PWD)/../../game/shared/baseprojectile.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/baseviewmodel_shared.o : $(PWD)/../../game/shared/baseviewmodel_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/base_playeranimstate.o : $(PWD)/../../game/shared/base_playeranimstate.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/beam_shared.o : $(PWD)/../../game/shared/beam_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/collisionproperty.o : $(PWD)/../../game/shared/collisionproperty.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/death_pose.o : $(PWD)/../../game/shared/death_pose.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/debugoverlay_shared.o : $(PWD)/../../game/shared/debugoverlay_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/decals.o : $(PWD)/../../game/shared/decals.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/effect_dispatch_data.o : $(PWD)/../../game/shared/effect_dispatch_data.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ehandle.o : $(PWD)/../../game/shared/ehandle.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/entitylist_base.o : $(PWD)/../../game/shared/entitylist_base.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/EntityParticleTrail_Shared.o : $(PWD)/../../game/shared/EntityParticleTrail_Shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/env_detail_controller.o : $(PWD)/../../game/shared/env_detail_controller.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/env_wind_shared.o : $(PWD)/../../game/shared/env_wind_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/eventlist.o : $(PWD)/../../game/shared/eventlist.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/func_ladder.o : $(PWD)/../../game/shared/func_ladder.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/gamemovement.o : $(PWD)/../../game/shared/gamemovement.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/gamerules.o : $(PWD)/../../game/shared/gamerules.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/gamerules_register.o : $(PWD)/../../game/shared/gamerules_register.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/GameStats.o : $(PWD)/../../game/shared/GameStats.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/gamestringpool.o : $(PWD)/../../game/shared/gamestringpool.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/gamevars_shared.o : $(PWD)/../../game/shared/gamevars_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hintmessage.o : $(PWD)/../../game/shared/hintmessage.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hintsystem.o : $(PWD)/../../game/shared/hintsystem.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/basehlcombatweapon_shared.o : $(PWD)/../../game/shared/hl2/basehlcombatweapon_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/env_headcrabcanister_shared.o : $(PWD)/../../game/shared/hl2/env_headcrabcanister_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hl2_gamerules.o : $(PWD)/../../game/shared/hl2/hl2_gamerules.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hl2_usermessages.o : $(PWD)/../../game/shared/hl2/hl2_usermessages.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hl_gamemovement.o : $(PWD)/../../game/shared/hl2/hl_gamemovement.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/survival_gamerules.o : $(PWD)/../../game/shared/hl2/survival_gamerules.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hl2mp_gamerules.o : $(PWD)/../../game/shared/hl2mp/hl2mp_gamerules.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hl2mp_player_shared.o : $(PWD)/../../game/shared/hl2mp/hl2mp_player_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hl2mp_weapon_parse.o : $(PWD)/../../game/shared/hl2mp/hl2mp_weapon_parse.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_357.o : $(PWD)/../../game/shared/hl2mp/weapon_357.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_ar2.o : $(PWD)/../../game/shared/hl2mp/weapon_ar2.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_crossbow.o : $(PWD)/../../game/shared/hl2mp/weapon_crossbow.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_crowbar.o : $(PWD)/../../game/shared/hl2mp/weapon_crowbar.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_frag.o : $(PWD)/../../game/shared/hl2mp/weapon_frag.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_hl2mpbase.o : $(PWD)/../../game/shared/hl2mp/weapon_hl2mpbase.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_hl2mpbasebasebludgeon.o : $(PWD)/../../game/shared/hl2mp/weapon_hl2mpbasebasebludgeon.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_hl2mpbasehlmpcombatweapon.o : $(PWD)/../../game/shared/hl2mp/weapon_hl2mpbasehlmpcombatweapon.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_hl2mpbase_machinegun.o : $(PWD)/../../game/shared/hl2mp/weapon_hl2mpbase_machinegun.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_physcannon.o : $(PWD)/../../game/shared/hl2mp/weapon_physcannon.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_pistol.o : $(PWD)/../../game/shared/hl2mp/weapon_pistol.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_rpg.o : $(PWD)/../../game/shared/hl2mp/weapon_rpg.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_shotgun.o : $(PWD)/../../game/shared/hl2mp/weapon_shotgun.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_slam.o : $(PWD)/../../game/shared/hl2mp/weapon_slam.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_smg1.o : $(PWD)/../../game/shared/hl2mp/weapon_smg1.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_stunstick.o : $(PWD)/../../game/shared/hl2mp/weapon_stunstick.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/igamesystem.o : $(PWD)/../../game/shared/igamesystem.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/interval.o : $(PWD)/../../game/shared/interval.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/mapentities_shared.o : $(PWD)/../../game/shared/mapentities_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ModelSoundsCache.o : $(PWD)/../../game/shared/ModelSoundsCache.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/movevars_shared.o : $(PWD)/../../game/shared/movevars_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/mp_shareddefs.o : $(PWD)/../../game/shared/mp_shareddefs.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/multiplay_gamerules.o : $(PWD)/../../game/shared/multiplay_gamerules.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/obstacle_pushaway.o : $(PWD)/../../game/shared/obstacle_pushaway.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/particlesystemquery.o : $(PWD)/../../game/shared/particlesystemquery.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/particle_parse.o : $(PWD)/../../game/shared/particle_parse.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/physics_main_shared.o : $(PWD)/../../game/shared/physics_main_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/physics_saverestore.o : $(PWD)/../../game/shared/physics_saverestore.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/physics_shared.o : $(PWD)/../../game/shared/physics_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/point_bonusmaps_accessor.o : $(PWD)/../../game/shared/point_bonusmaps_accessor.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/point_posecontroller.o : $(PWD)/../../game/shared/point_posecontroller.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/precache_register.o : $(PWD)/../../game/shared/precache_register.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/predictableid.o : $(PWD)/../../game/shared/predictableid.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/predicted_viewmodel.o : $(PWD)/../../game/shared/predicted_viewmodel.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/props_shared.o : $(PWD)/../../game/shared/props_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/querycache.o : $(PWD)/../../game/shared/querycache.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ragdoll_shared.o : $(PWD)/../../game/shared/ragdoll_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/rope_helpers.o : $(PWD)/../../game/shared/rope_helpers.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/saverestore.o : $(PWD)/../../game/shared/saverestore.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/SceneCache.o : $(PWD)/../../game/shared/SceneCache.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/sceneentity_shared.o : $(PWD)/../../game/shared/sceneentity_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/script_intro_shared.o : $(PWD)/../../game/shared/script_intro_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/sequence_Transitioner.o : $(PWD)/../../game/shared/sequence_Transitioner.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/sheetsimulator.o : $(PWD)/../../game/shared/sheetsimulator.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/simtimer.o : $(PWD)/../../game/shared/simtimer.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/singleplay_gamerules.o : $(PWD)/../../game/shared/singleplay_gamerules.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/SoundEmitterSystem.o : $(PWD)/../../game/shared/SoundEmitterSystem.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/soundenvelope.o : $(PWD)/../../game/shared/soundenvelope.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/Sprite.o : $(PWD)/../../game/shared/Sprite.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/SpriteTrail.o : $(PWD)/../../game/shared/SpriteTrail.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/studio_shared.o : $(PWD)/../../game/shared/studio_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/takedamageinfo.o : $(PWD)/../../game/shared/takedamageinfo.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/teamplayroundbased_gamerules.o : $(PWD)/../../game/shared/teamplayroundbased_gamerules.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/teamplay_gamerules.o : $(PWD)/../../game/shared/teamplay_gamerules.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/teamplay_round_timer.o : $(PWD)/../../game/shared/teamplay_round_timer.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/test_ehandle.o : $(PWD)/../../game/shared/test_ehandle.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/usercmd.o : $(PWD)/../../game/shared/usercmd.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/usermessages.o : $(PWD)/../../game/shared/usermessages.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/util_shared.o : $(PWD)/../../game/shared/util_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/vehicle_viewblend_shared.o : $(PWD)/../../game/shared/vehicle_viewblend_shared.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/voice_gamemgr.o : $(PWD)/../../game/shared/voice_gamemgr.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_parse.o : $(PWD)/../../game/shared/weapon_parse.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_proficiency.o : $(PWD)/../../game/shared/weapon_proficiency.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/bone_setup.o : $(PWD)/../../public/bone_setup.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/collisionutils.o : $(PWD)/../../public/collisionutils.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/dt_send.o : $(PWD)/../../public/dt_send.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/dt_utlvector_common.o : $(PWD)/../../public/dt_utlvector_common.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/dt_utlvector_send.o : $(PWD)/../../public/dt_utlvector_send.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/editor_sendcommand.o : $(PWD)/../../public/editor_sendcommand.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/filesystem_helpers.o : $(PWD)/../../public/filesystem_helpers.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/haptic_msgs.o : $(PWD)/../../public/haptics/haptic_msgs.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/interpolatortypes.o : $(PWD)/../../public/interpolatortypes.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/keyframe.o : $(PWD)/../../public/keyframe/keyframe.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/map_utils.o : $(PWD)/../../public/map_utils.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/networkvar.o : $(PWD)/../../public/networkvar.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/registry.o : $(PWD)/../../public/registry.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/rope_physics.o : $(PWD)/../../public/rope_physics.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/scratchpad3d.o : $(PWD)/../../public/scratchpad3d.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ScratchPadUtils.o : $(PWD)/../../public/ScratchPadUtils.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/server_class.o : $(PWD)/../../public/server_class.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/simple_physics.o : $(PWD)/../../public/simple_physics.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/SoundParametersInternal.o : $(PWD)/../../public/SoundParametersInternal.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/stringregistry.o : $(PWD)/../../public/stringregistry.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/studio.o : $(PWD)/../../public/studio.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/memoverride.o : $(PWD)/../../public/tier0/memoverride.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_activity.o : $(PWD)/ai_activity.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_baseactor.o : $(PWD)/ai_baseactor.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_basehumanoid.o : $(PWD)/ai_basehumanoid.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_basenpc.o : $(PWD)/ai_basenpc.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_basenpc_flyer.o : $(PWD)/ai_basenpc_flyer.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_basenpc_flyer_new.o : $(PWD)/ai_basenpc_flyer_new.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_basenpc_movement.o : $(PWD)/ai_basenpc_movement.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_basenpc_physicsflyer.o : $(PWD)/ai_basenpc_physicsflyer.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_basenpc_schedule.o : $(PWD)/ai_basenpc_schedule.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_basenpc_squad.o : $(PWD)/ai_basenpc_squad.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_behavior.o : $(PWD)/ai_behavior.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_behavior_assault.o : $(PWD)/ai_behavior_assault.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_behavior_fear.o : $(PWD)/ai_behavior_fear.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_behavior_follow.o : $(PWD)/ai_behavior_follow.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_behavior_lead.o : $(PWD)/ai_behavior_lead.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_behavior_rappel.o : $(PWD)/ai_behavior_rappel.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_behavior_standoff.o : $(PWD)/ai_behavior_standoff.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_blended_movement.o : $(PWD)/ai_blended_movement.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_concommands.o : $(PWD)/ai_concommands.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_condition.o : $(PWD)/ai_condition.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/AI_Criteria.o : $(PWD)/AI_Criteria.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_default.o : $(PWD)/ai_default.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_dynamiclink.o : $(PWD)/ai_dynamiclink.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_event.o : $(PWD)/ai_event.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_goalentity.o : $(PWD)/ai_goalentity.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_hint.o : $(PWD)/ai_hint.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_hull.o : $(PWD)/ai_hull.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_initutils.o : $(PWD)/ai_initutils.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/AI_Interest_Target.o : $(PWD)/AI_Interest_Target.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_link.o : $(PWD)/ai_link.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_localnavigator.o : $(PWD)/ai_localnavigator.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_looktarget.o : $(PWD)/ai_looktarget.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_memory.o : $(PWD)/ai_memory.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_motor.o : $(PWD)/ai_motor.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_moveprobe.o : $(PWD)/ai_moveprobe.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_moveshoot.o : $(PWD)/ai_moveshoot.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_movesolver.o : $(PWD)/ai_movesolver.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_namespaces.o : $(PWD)/ai_namespaces.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_navigator.o : $(PWD)/ai_navigator.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_network.o : $(PWD)/ai_network.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_networkmanager.o : $(PWD)/ai_networkmanager.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_node.o : $(PWD)/ai_node.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_pathfinder.o : $(PWD)/ai_pathfinder.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_planesolver.o : $(PWD)/ai_planesolver.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_playerally.o : $(PWD)/ai_playerally.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_relationship.o : $(PWD)/ai_relationship.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/AI_ResponseSystem.o : $(PWD)/AI_ResponseSystem.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_route.o : $(PWD)/ai_route.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_saverestore.o : $(PWD)/ai_saverestore.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_schedule.o : $(PWD)/ai_schedule.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_scriptconditions.o : $(PWD)/ai_scriptconditions.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_senses.o : $(PWD)/ai_senses.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_sentence.o : $(PWD)/ai_sentence.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_speech.o : $(PWD)/ai_speech.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_speechfilter.o : $(PWD)/ai_speechfilter.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_squad.o : $(PWD)/ai_squad.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_squadslot.o : $(PWD)/ai_squadslot.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_tacticalservices.o : $(PWD)/ai_tacticalservices.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_task.o : $(PWD)/ai_task.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_trackpather.o : $(PWD)/ai_trackpather.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_utils.o : $(PWD)/ai_utils.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_waypoint.o : $(PWD)/ai_waypoint.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/baseanimating.o : $(PWD)/baseanimating.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/BaseAnimatingOverlay.o : $(PWD)/BaseAnimatingOverlay.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/basebludgeonweapon.o : $(PWD)/basebludgeonweapon.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/basecombatcharacter.o : $(PWD)/basecombatcharacter.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/basecombatweapon.o : $(PWD)/basecombatweapon.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/baseentity.o : $(PWD)/baseentity.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/baseflex.o : $(PWD)/baseflex.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/basegrenade_concussion.o : $(PWD)/basegrenade_concussion.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/basegrenade_contact.o : $(PWD)/basegrenade_contact.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/basegrenade_timed.o : $(PWD)/basegrenade_timed.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/basemultiplayerplayer.o : $(PWD)/basemultiplayerplayer.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/basetempentity.o : $(PWD)/basetempentity.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/baseviewmodel.o : $(PWD)/baseviewmodel.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/base_transmit_proxy.o : $(PWD)/base_transmit_proxy.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/bitstring.o : $(PWD)/bitstring.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/bmodels.o : $(PWD)/bmodels.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/buttons.o : $(PWD)/buttons.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/cbase.o : $(PWD)/cbase.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/client.o : $(PWD)/client.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/colorcorrection.o : $(PWD)/colorcorrection.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/colorcorrectionvolume.o : $(PWD)/colorcorrectionvolume.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/CommentarySystem.o : $(PWD)/CommentarySystem.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/controlentities.o : $(PWD)/controlentities.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/cplane.o : $(PWD)/cplane.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/CRagdollMagnet.o : $(PWD)/CRagdollMagnet.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/damagemodifier.o : $(PWD)/damagemodifier.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/doors.o : $(PWD)/doors.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/dynamiclight.o : $(PWD)/dynamiclight.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/effects.o : $(PWD)/effects.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/EffectsServer.o : $(PWD)/EffectsServer.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/entityblocker.o : $(PWD)/entityblocker.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/EntityDissolve.o : $(PWD)/EntityDissolve.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/EntityFlame.o : $(PWD)/EntityFlame.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/entitylist.o : $(PWD)/entitylist.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/EntityParticleTrail.o : $(PWD)/EntityParticleTrail.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/entity_tools_server.o : $(PWD)/entity_tools_server.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/EnvBeam.o : $(PWD)/EnvBeam.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/EnvFade.o : $(PWD)/EnvFade.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/EnvHudHint.o : $(PWD)/EnvHudHint.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/EnvLaser.o : $(PWD)/EnvLaser.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/EnvMessage.o : $(PWD)/EnvMessage.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/envmicrophone.o : $(PWD)/envmicrophone.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/EnvShake.o : $(PWD)/EnvShake.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/EnvSpark.o : $(PWD)/EnvSpark.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/env_debughistory.o : $(PWD)/env_debughistory.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/env_effectsscript.o : $(PWD)/env_effectsscript.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/env_entity_maker.o : $(PWD)/env_entity_maker.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/env_particlescript.o : $(PWD)/env_particlescript.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/env_player_surface_trigger.o : $(PWD)/env_player_surface_trigger.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/env_projectedtexture.o : $(PWD)/env_projectedtexture.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/env_screenoverlay.o : $(PWD)/env_screenoverlay.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/env_texturetoggle.o : $(PWD)/env_texturetoggle.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/env_tonemap_controller.o : $(PWD)/env_tonemap_controller.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/env_zoom.o : $(PWD)/env_zoom.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/EventLog.o : $(PWD)/EventLog.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/event_tempentity_tester.o : $(PWD)/event_tempentity_tester.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/explode.o : $(PWD)/explode.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/filters.o : $(PWD)/filters.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/fire.o : $(PWD)/fire.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/fire_smoke.o : $(PWD)/fire_smoke.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/fish.o : $(PWD)/fish.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/fogcontroller.o : $(PWD)/fogcontroller.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/fourwheelvehiclephysics.o : $(PWD)/fourwheelvehiclephysics.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/func_areaportal.o : $(PWD)/func_areaportal.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/func_areaportalbase.o : $(PWD)/func_areaportalbase.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/func_areaportalwindow.o : $(PWD)/func_areaportalwindow.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/func_break.o : $(PWD)/func_break.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/func_breakablesurf.o : $(PWD)/func_breakablesurf.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/func_dust.o : $(PWD)/func_dust.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/func_ladder_endpoint.o : $(PWD)/func_ladder_endpoint.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/func_lod.o : $(PWD)/func_lod.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/func_movelinear.o : $(PWD)/func_movelinear.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/func_occluder.o : $(PWD)/func_occluder.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/func_reflective_glass.o : $(PWD)/func_reflective_glass.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/func_smokevolume.o : $(PWD)/func_smokevolume.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/game.o : $(PWD)/game.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/gamedll_replay.o : $(PWD)/gamedll_replay.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/gamehandle.o : $(PWD)/gamehandle.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/gameinterface.o : $(PWD)/gameinterface.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/GameStats_BasicStatsFunctions.o : $(PWD)/GameStats_BasicStatsFunctions.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/gametrace_dll.o : $(PWD)/gametrace_dll.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/gameweaponmanager.o : $(PWD)/gameweaponmanager.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/game_ui.o : $(PWD)/game_ui.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/genericactor.o : $(PWD)/genericactor.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/genericmonster.o : $(PWD)/genericmonster.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/gib.o : $(PWD)/gib.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/globals.o : $(PWD)/globals.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/globalstate.o : $(PWD)/globalstate.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/grenadethrown.o : $(PWD)/grenadethrown.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/guntarget.o : $(PWD)/guntarget.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hierarchy.o : $(PWD)/hierarchy.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_allymanager.o : $(PWD)/hl2/ai_allymanager.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_behavior_actbusy.o : $(PWD)/hl2/ai_behavior_actbusy.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_behavior_functank.o : $(PWD)/hl2/ai_behavior_functank.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_behavior_holster.o : $(PWD)/hl2/ai_behavior_holster.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_behavior_police.o : $(PWD)/hl2/ai_behavior_police.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_goal_police.o : $(PWD)/hl2/ai_goal_police.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ai_spotlight.o : $(PWD)/hl2/ai_spotlight.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/antlion_dust.o : $(PWD)/hl2/antlion_dust.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/antlion_maker.o : $(PWD)/hl2/antlion_maker.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ar2_explosion.o : $(PWD)/hl2/ar2_explosion.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/basehlcombatweapon.o : $(PWD)/hl2/basehlcombatweapon.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/cbasehelicopter.o : $(PWD)/hl2/cbasehelicopter.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/cbasespriteprojectile.o : $(PWD)/hl2/cbasespriteprojectile.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/citadel_effects.o : $(PWD)/hl2/citadel_effects.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/combine_mine.o : $(PWD)/hl2/combine_mine.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/env_alyxemp.o : $(PWD)/hl2/env_alyxemp.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/env_headcrabcanister.o : $(PWD)/hl2/env_headcrabcanister.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/env_speaker.o : $(PWD)/hl2/env_speaker.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/env_starfield.o : $(PWD)/hl2/env_starfield.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/Func_Monitor.o : $(PWD)/hl2/Func_Monitor.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/func_recharge.o : $(PWD)/hl2/func_recharge.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/func_tank.o : $(PWD)/hl2/func_tank.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/grenade_ar2.o : $(PWD)/hl2/grenade_ar2.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/grenade_beam.o : $(PWD)/hl2/grenade_beam.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/grenade_bugbait.o : $(PWD)/hl2/grenade_bugbait.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/grenade_frag.o : $(PWD)/hl2/grenade_frag.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/grenade_homer.o : $(PWD)/hl2/grenade_homer.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/grenade_pathfollower.o : $(PWD)/hl2/grenade_pathfollower.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hl2_ai_network.o : $(PWD)/hl2/hl2_ai_network.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hl2_eventlog.o : $(PWD)/hl2/hl2_eventlog.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hl2_player.o : $(PWD)/hl2/hl2_player.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hl2_playerlocaldata.o : $(PWD)/hl2/hl2_playerlocaldata.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hl2_triggers.o : $(PWD)/hl2/hl2_triggers.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hl_playermove.o : $(PWD)/hl2/hl_playermove.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/info_teleporter_countdown.o : $(PWD)/hl2/info_teleporter_countdown.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/item_ammo.o : $(PWD)/hl2/item_ammo.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/item_battery.o : $(PWD)/hl2/item_battery.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/item_dynamic_resupply.o : $(PWD)/hl2/item_dynamic_resupply.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/item_healthkit.o : $(PWD)/hl2/item_healthkit.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/item_itemcrate.o : $(PWD)/hl2/item_itemcrate.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/item_suit.o : $(PWD)/hl2/item_suit.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/look_door.o : $(PWD)/hl2/look_door.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/monster_dummy.o : $(PWD)/hl2/monster_dummy.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_alyx.o : $(PWD)/hl2/npc_alyx.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_antlion.o : $(PWD)/hl2/npc_antlion.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_antlionguard.o : $(PWD)/hl2/npc_antlionguard.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_apcdriver.o : $(PWD)/hl2/npc_apcdriver.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_attackchopper.o : $(PWD)/hl2/npc_attackchopper.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_barnacle.o : $(PWD)/hl2/npc_barnacle.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_barney.o : $(PWD)/hl2/npc_barney.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_basescanner.o : $(PWD)/hl2/npc_basescanner.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_BaseZombie.o : $(PWD)/hl2/npc_BaseZombie.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_breen.o : $(PWD)/hl2/npc_breen.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_bullseye.o : $(PWD)/hl2/npc_bullseye.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_citizen17.o : $(PWD)/hl2/npc_citizen17.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_combine.o : $(PWD)/hl2/npc_combine.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_combinecamera.o : $(PWD)/hl2/npc_combinecamera.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_combinedropship.o : $(PWD)/hl2/npc_combinedropship.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_combinegunship.o : $(PWD)/hl2/npc_combinegunship.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_combines.o : $(PWD)/hl2/npc_combines.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_cranedriver.o : $(PWD)/hl2/npc_cranedriver.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_crow.o : $(PWD)/hl2/npc_crow.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_dog.o : $(PWD)/hl2/npc_dog.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_eli.o : $(PWD)/hl2/npc_eli.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_enemyfinder.o : $(PWD)/hl2/npc_enemyfinder.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_fisherman.o : $(PWD)/hl2/npc_fisherman.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_gman.o : $(PWD)/hl2/npc_gman.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_headcrab.o : $(PWD)/hl2/npc_headcrab.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_ichthyosaur.o : $(PWD)/hl2/npc_ichthyosaur.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_kleiner.o : $(PWD)/hl2/npc_kleiner.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_launcher.o : $(PWD)/hl2/npc_launcher.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_manhack.o : $(PWD)/hl2/npc_manhack.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_metropolice.o : $(PWD)/hl2/npc_metropolice.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_missiledefense.o : $(PWD)/hl2/npc_missiledefense.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_monk.o : $(PWD)/hl2/npc_monk.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_mossman.o : $(PWD)/hl2/npc_mossman.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_playercompanion.o : $(PWD)/hl2/npc_playercompanion.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_PoisonZombie.o : $(PWD)/hl2/npc_PoisonZombie.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_rollermine.o : $(PWD)/hl2/npc_rollermine.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_scanner.o : $(PWD)/hl2/npc_scanner.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_stalker.o : $(PWD)/hl2/npc_stalker.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_strider.o : $(PWD)/hl2/npc_strider.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_turret_ceiling.o : $(PWD)/hl2/npc_turret_ceiling.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_turret_floor.o : $(PWD)/hl2/npc_turret_floor.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_turret_ground.o : $(PWD)/hl2/npc_turret_ground.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_vortigaunt_episodic.o : $(PWD)/hl2/npc_vortigaunt_episodic.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_zombie.o : $(PWD)/hl2/npc_zombie.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/point_apc_controller.o : $(PWD)/hl2/point_apc_controller.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/prop_combine_ball.o : $(PWD)/hl2/prop_combine_ball.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/prop_thumper.o : $(PWD)/hl2/prop_thumper.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/proto_sniper.o : $(PWD)/hl2/proto_sniper.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/rotorwash.o : $(PWD)/hl2/rotorwash.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/script_intro.o : $(PWD)/hl2/script_intro.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_gaussexplosion.o : $(PWD)/hl2/te_gaussexplosion.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/vehicle_airboat.o : $(PWD)/hl2/vehicle_airboat.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/vehicle_apc.o : $(PWD)/hl2/vehicle_apc.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/vehicle_crane.o : $(PWD)/hl2/vehicle_crane.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/vehicle_prisoner_pod.o : $(PWD)/hl2/vehicle_prisoner_pod.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/vehicle_viewcontroller.o : $(PWD)/hl2/vehicle_viewcontroller.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_annabelle.o : $(PWD)/hl2/weapon_annabelle.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_bugbait.o : $(PWD)/hl2/weapon_bugbait.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_cguard.o : $(PWD)/hl2/weapon_cguard.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_flaregun.o : $(PWD)/hl2/weapon_flaregun.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/grenade_satchel.o : $(PWD)/hl2mp/grenade_satchel.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/grenade_tripmine.o : $(PWD)/hl2mp/grenade_tripmine.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hl2mp_bot_temp.o : $(PWD)/hl2mp/hl2mp_bot_temp.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hl2mp_client.o : $(PWD)/hl2mp/hl2mp_client.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hl2mp_cvars.o : $(PWD)/hl2mp/hl2mp_cvars.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hl2mp_gameinterface.o : $(PWD)/hl2mp/hl2mp_gameinterface.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hl2mp_player.o : $(PWD)/hl2mp/hl2mp_player.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_hl2mp_shotgun_shot.o : $(PWD)/hl2mp/te_hl2mp_shotgun_shot.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/hltvdirector.o : $(PWD)/hltvdirector.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/h_ai.o : $(PWD)/h_ai.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/h_cycler.o : $(PWD)/h_cycler.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/h_export.o : $(PWD)/h_export.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/info_camera_link.o : $(PWD)/info_camera_link.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/info_overlay_accessor.o : $(PWD)/info_overlay_accessor.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/init_factory.o : $(PWD)/init_factory.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/intermission.o : $(PWD)/intermission.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/item_world.o : $(PWD)/item_world.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/lightglow.o : $(PWD)/lightglow.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/lights.o : $(PWD)/lights.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/logicauto.o : $(PWD)/logicauto.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/logicentities.o : $(PWD)/logicentities.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/logicrelay.o : $(PWD)/logicrelay.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/logic_measure_movement.o : $(PWD)/logic_measure_movement.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/logic_navigation.o : $(PWD)/logic_navigation.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/mapentities.o : $(PWD)/mapentities.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/maprules.o : $(PWD)/maprules.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/MaterialModifyControl.o : $(PWD)/MaterialModifyControl.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/message_entity.o : $(PWD)/message_entity.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/modelentities.o : $(PWD)/modelentities.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/monstermaker.o : $(PWD)/monstermaker.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/movehelper_server.o : $(PWD)/movehelper_server.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/movement.o : $(PWD)/movement.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/movie_explosion.o : $(PWD)/movie_explosion.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/nav_area.o : $(PWD)/nav_area.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/nav_colors.o : $(PWD)/nav_colors.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/nav_edit.o : $(PWD)/nav_edit.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/nav_entities.o : $(PWD)/nav_entities.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/nav_file.o : $(PWD)/nav_file.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/nav_generate.o : $(PWD)/nav_generate.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/nav_ladder.o : $(PWD)/nav_ladder.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/nav_merge.o : $(PWD)/nav_merge.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/nav_mesh.o : $(PWD)/nav_mesh.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/nav_mesh_factory.o : $(PWD)/nav_mesh_factory.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/nav_node.o : $(PWD)/nav_node.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/nav_simplify.o : $(PWD)/nav_simplify.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ndebugoverlay.o : $(PWD)/ndebugoverlay.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_talker.o : $(PWD)/npc_talker.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/npc_vehicledriver.o : $(PWD)/npc_vehicledriver.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/particle_fire.o : $(PWD)/particle_fire.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/particle_light.o : $(PWD)/particle_light.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/particle_smokegrenade.o : $(PWD)/particle_smokegrenade.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/particle_system.o : $(PWD)/particle_system.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/pathcorner.o : $(PWD)/pathcorner.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/pathtrack.o : $(PWD)/pathtrack.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/physconstraint.o : $(PWD)/physconstraint.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/physics.o : $(PWD)/physics.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/physics_bone_follower.o : $(PWD)/physics_bone_follower.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/physics_cannister.o : $(PWD)/physics_cannister.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/physics_fx.o : $(PWD)/physics_fx.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/physics_impact_damage.o : $(PWD)/physics_impact_damage.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/physics_main.o : $(PWD)/physics_main.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/physics_npc_solver.o : $(PWD)/physics_npc_solver.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/physics_prop_ragdoll.o : $(PWD)/physics_prop_ragdoll.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/physobj.o : $(PWD)/physobj.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/phys_controller.o : $(PWD)/phys_controller.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/plasma.o : $(PWD)/plasma.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/player.o : $(PWD)/player.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/playerinfomanager.o : $(PWD)/playerinfomanager.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/playerlocaldata.o : $(PWD)/playerlocaldata.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/player_command.o : $(PWD)/player_command.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/player_lagcompensation.o : $(PWD)/player_lagcompensation.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/player_pickup.o : $(PWD)/player_pickup.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/player_resource.o : $(PWD)/player_resource.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/plugin_check.o : $(PWD)/plugin_check.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/pointanglesensor.o : $(PWD)/pointanglesensor.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/PointAngularVelocitySensor.o : $(PWD)/PointAngularVelocitySensor.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/pointhurt.o : $(PWD)/pointhurt.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/pointteleport.o : $(PWD)/pointteleport.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/point_camera.o : $(PWD)/point_camera.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/point_devshot_camera.o : $(PWD)/point_devshot_camera.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/point_playermoveconstraint.o : $(PWD)/point_playermoveconstraint.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/point_spotlight.o : $(PWD)/point_spotlight.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/point_template.o : $(PWD)/point_template.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/props.o : $(PWD)/props.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/RagdollBoogie.o : $(PWD)/RagdollBoogie.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ragdoll_manager.o : $(PWD)/ragdoll_manager.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/recipientfilter.o : $(PWD)/recipientfilter.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/rope.o : $(PWD)/rope.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/saverestore_gamedll.o : $(PWD)/saverestore_gamedll.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/sceneentity.o : $(PWD)/sceneentity.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/scratchpad_gamedll_helpers.o : $(PWD)/scratchpad_gamedll_helpers.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/scripted.o : $(PWD)/scripted.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/scriptedtarget.o : $(PWD)/scriptedtarget.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/sendproxy.o : $(PWD)/sendproxy.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/ServerNetworkProperty.o : $(PWD)/ServerNetworkProperty.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/shadowcontrol.o : $(PWD)/shadowcontrol.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/SkyCamera.o : $(PWD)/SkyCamera.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/slideshow_display.o : $(PWD)/slideshow_display.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/smokestack.o : $(PWD)/smokestack.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/smoke_trail.o : $(PWD)/smoke_trail.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/sound.o : $(PWD)/sound.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/soundent.o : $(PWD)/soundent.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/soundscape.o : $(PWD)/soundscape.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/soundscape_system.o : $(PWD)/soundscape_system.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/spotlightend.o : $(PWD)/spotlightend.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/sprite_perfmonitor.o : $(PWD)/sprite_perfmonitor.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/stdafx.o : $(PWD)/stdafx.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/steamjet.o : $(PWD)/steamjet.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/subs.o : $(PWD)/subs.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/sun.o : $(PWD)/sun.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/tactical_mission.o : $(PWD)/tactical_mission.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/tanktrain.o : $(PWD)/tanktrain.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te.o : $(PWD)/te.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/team.o : $(PWD)/team.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/team_control_point.o : $(PWD)/team_control_point.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/team_control_point_master.o : $(PWD)/team_control_point_master.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/team_control_point_round.o : $(PWD)/team_control_point_round.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/team_objectiveresource.o : $(PWD)/team_objectiveresource.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/team_spawnpoint.o : $(PWD)/team_spawnpoint.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/team_train_watcher.o : $(PWD)/team_train_watcher.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/TemplateEntities.o : $(PWD)/TemplateEntities.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/tempmonster.o : $(PWD)/tempmonster.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/tesla.o : $(PWD)/tesla.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/testfunctions.o : $(PWD)/testfunctions.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/testtraceline.o : $(PWD)/testtraceline.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/test_proxytoggle.o : $(PWD)/test_proxytoggle.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/test_stressentities.o : $(PWD)/test_stressentities.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/textstatsmgr.o : $(PWD)/textstatsmgr.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_armorricochet.o : $(PWD)/te_armorricochet.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_basebeam.o : $(PWD)/te_basebeam.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_beamentpoint.o : $(PWD)/te_beamentpoint.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_beaments.o : $(PWD)/te_beaments.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_beamfollow.o : $(PWD)/te_beamfollow.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_beamlaser.o : $(PWD)/te_beamlaser.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_beampoints.o : $(PWD)/te_beampoints.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_beamring.o : $(PWD)/te_beamring.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_beamringpoint.o : $(PWD)/te_beamringpoint.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_beamspline.o : $(PWD)/te_beamspline.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_bloodsprite.o : $(PWD)/te_bloodsprite.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_bloodstream.o : $(PWD)/te_bloodstream.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_breakmodel.o : $(PWD)/te_breakmodel.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_bspdecal.o : $(PWD)/te_bspdecal.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_bubbles.o : $(PWD)/te_bubbles.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_bubbletrail.o : $(PWD)/te_bubbletrail.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_clientprojectile.o : $(PWD)/te_clientprojectile.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_decal.o : $(PWD)/te_decal.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_dynamiclight.o : $(PWD)/te_dynamiclight.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_effect_dispatch.o : $(PWD)/te_effect_dispatch.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_energysplash.o : $(PWD)/te_energysplash.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_explosion.o : $(PWD)/te_explosion.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_fizz.o : $(PWD)/te_fizz.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_footprintdecal.o : $(PWD)/te_footprintdecal.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_glassshatter.o : $(PWD)/te_glassshatter.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_glowsprite.o : $(PWD)/te_glowsprite.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_impact.o : $(PWD)/te_impact.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_killplayerattachments.o : $(PWD)/te_killplayerattachments.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_largefunnel.o : $(PWD)/te_largefunnel.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_muzzleflash.o : $(PWD)/te_muzzleflash.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_particlesystem.o : $(PWD)/te_particlesystem.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_physicsprop.o : $(PWD)/te_physicsprop.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_playerdecal.o : $(PWD)/te_playerdecal.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_projecteddecal.o : $(PWD)/te_projecteddecal.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_showline.o : $(PWD)/te_showline.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_smoke.o : $(PWD)/te_smoke.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_sparks.o : $(PWD)/te_sparks.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_sprite.o : $(PWD)/te_sprite.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_spritespray.o : $(PWD)/te_spritespray.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/te_worlddecal.o : $(PWD)/te_worlddecal.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/timedeventmgr.o : $(PWD)/timedeventmgr.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/toolframework_server.o : $(PWD)/toolframework_server.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/trains.o : $(PWD)/trains.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/triggers.o : $(PWD)/triggers.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/trigger_area_capture.o : $(PWD)/trigger_area_capture.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/util.o : $(PWD)/util.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/variant_t.o : $(PWD)/variant_t.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/vehicle_base.o : $(PWD)/vehicle_base.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/vehicle_baseserver.o : $(PWD)/vehicle_baseserver.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/vguiscreen.o : $(PWD)/vguiscreen.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/waterbullet.o : $(PWD)/waterbullet.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/WaterLODControl.o : $(PWD)/WaterLODControl.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/wcedit.o : $(PWD)/wcedit.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weapon_cubemap.o : $(PWD)/weapon_cubemap.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/weight_button.o : $(PWD)/weight_button.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

$(OBJ_DIR)/world.o : $(PWD)/world.cpp $(PWD)/server_linux32_hl2mp.mak $(SRCROOT)/devtools/makefile_base_posix.mak
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)
