/obj/overmap/visitable/ship/sierra
	name = "NSV Sierra"
	desc = "A space object with wide of 121.2 meters, length of 214.5 meters and high near 14.3 meters. A Self Indentification Signal classifices \
	the target as NanoTrasen Science Vessel, a property of NanoTrasen Corporation."
	fore_dir = WEST
	vessel_mass = 63000
	sector_flags = OVERMAP_SECTOR_KNOWN|OVERMAP_SECTOR_IN_SPACE|OVERMAP_SECTOR_BASE
	known_ships = list(/obj/overmap/visitable/ship/landable/exploration_shuttle, /obj/overmap/visitable/ship/landable/guppy)

	icon = 'maps/sierra/icons/obj/overmap.dmi'
	color = "#a97faa"

	initial_restricted_waypoints = list(
		"Charon" = list("nav_hangar_calypso"),
		"Guppy" = list("nav_hangar_guppy"),
		"Crucian" = list("nav_hangar_crucian"),
		"Cyclopes" = list("nav_merc_dock"), //maps/antag_spawn/mercenary/mercenary.dm shuttle
		"Mule" = list("nav_merchant_out"), //../mods/maps/liberia/_map_liberia.dme shuttle,
		"Reaper Gunboat" = list("nav_reaper_dock"), //../mods/maps/sentinel/_map_sentinel.dme shuttle,
		"SNZ Speedboat" = list("nav_snz_dock"), //../../mods/maps/farfleet/_map_farfleet.dme shuttle,
		"SSV-S" = list("nav_deck4_skrellshuttle"), //away/skrellscoutship.dm shuttle,
		"Skrellian Scout" = list("nav_deck4_skrellscout"), //away/skrellscoutship.dm ship,
		"Alien Interceptor" = list("nav_deck4_vox_raider"), //maps/antag_spawn/vox/voxraider.dm shuttle,
		"Rescue" = list("nav_ert_dock"), //maps/antag_spawn/ert/ert.dm shuttle,
		"SFV Arbiter" = list("nav_deck4_event_dock"), //maps/event/sfv_arbiter/sfv_arbiter.dm shuttle,
		"ICGNV Hound" = list("nav_deck4_event_dock"), //maps/event/iccgn_ship/icgnv_hound.dm shuttle,
		"SNZ-210 Personnel Carrier" = list("nav_deck4_skrellscout"), //maps/random_ruins/exoplanet_ruins/transshipment/transshipment.dm shuttle,
		"GM Tug" = list("nav_merchant_out") //maps/random_ruins/exoplanet_ruins/crashed_shuttle/crashed_shuttle.dm shuttle
	)

	initial_generic_waypoints = list(
		"nav_merc_deck1",
		"nav_merc_deck2",
		"nav_merc_deck3",
		"nav_merc_deck4",
		"nav_merc_deck5",
		"nav_ert_deck1",
		"nav_ert_deck2",
		"nav_ert_deck3",
		"nav_ert_deck4",
		"nav_ert_deck5",
		"nav_deck1_calypso",
		"nav_deck2_calypso",
		"nav_deck3_calypso",
		"nav_deck4_calypso",
		"nav_bridge_calypso",
		"nav_deck1_guppy",
		"nav_deck2_guppy",
		"nav_deck3_guppy",
		"nav_deck4_guppy",
		"nav_deck1_salvage",
		"nav_bridge_guppy",
		"nav_hangar_aquila",
		"nav_deck1_aquila",
		"nav_deck2_aquila",
		"nav_deck3_aquila",
		"nav_deck4_aquila",
		"nav_bridge_aquila"
	)

/obj/overmap/visitable/ship/landable/exploration_shuttle
	name = "Charon"
	shuttle = "Charon"
	max_speed = 1/(4 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 4700
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_SMALL

/obj/overmap/visitable/ship/landable/guppy
	name = "Guppy"
	shuttle = "Guppy"
	max_speed = 1/(4 SECONDS) //was 1/(10 SECONDS)
	burn_delay = 0.5 SECONDS //was 2 SECONDS, just try to not burn all the fuel
	vessel_mass = 500 //was 2200, yes, it's 500 tonnes
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_TINY
	skill_needed = SKILL_BASIC //was trained

/obj/overmap/visitable/ship/landable/crucian
	name = "Crucian"
	shuttle = "Crucian"
	max_speed = 1/(4 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 1000
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_TINY
	skill_needed = SKILL_BASIC

/obj/machinery/computer/shuttle_control/explore/exploration_shuttle
	name = "charon control console"
	shuttle_tag = "Charon"
	req_access = list(access_expedition_shuttle_helm)

/obj/machinery/computer/shuttle_control/explore/guppy
	name = "guppy control console"
	shuttle_tag = "Guppy"
	req_access = list(access_guppy_helm)

/obj/machinery/computer/shuttle_control/explore/crucian
	name = "crucian control console"
	shuttle_tag = "Crucian"
