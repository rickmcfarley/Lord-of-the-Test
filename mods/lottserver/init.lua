-- Teleporters
dofile(minetest.get_modpath(minetest.get_current_modname()).."/dwarf_teleport.lua")
dofile(minetest.get_modpath(minetest.get_current_modname()).."/elf_teleport.lua")
dofile(minetest.get_modpath(minetest.get_current_modname()).."/rohan_teleport.lua")
dofile(minetest.get_modpath(minetest.get_current_modname()).."/gondor_teleport.lua")
dofile(minetest.get_modpath(minetest.get_current_modname()).."/mordor_teleport.lua")
dofile(minetest.get_modpath(minetest.get_current_modname()).."/trophy.lua")

minetest.register_privilege("dwarven", {
	description = "Citizen of the Dwarven Kingdom",
	give_to_singleplayer= false,
})

minetest.register_privilege("elven", {
	description = "Citizen of the Elven Kingdom",
	give_to_singleplayer= false,
})

minetest.register_privilege("rohirrim", {
	description = "Citizen of the Rohan Kingdom",
	give_to_singleplayer= false,
})

minetest.register_privilege("gondorian", {
	description = "Citizen of the Gondor Kingdom",
	give_to_singleplayer= false,
})

minetest.register_privilege("forsaken", {
	description = "The Forsaken",
	give_to_singleplayer= false,
})

minetest.register_privilege("mordor", {
	description = "Citizen of the Kingdom of Mordor",
	give_to_singleplayer= false,
})

minetest.register_tool("lottserver:durin_axe", {
	description = "Durin's Axe",
	inventory_image = "lottserver_durinaxe.png",
	range = 2,
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level=1,
		groupcaps={
			core_structure={times={[1]=10.30, [2]=20.40, [3]=30.40}, uses=5, maxlevel=1},
               snappy={times={[1]=0.70, [2]=0.80, [3]=0.25}, uses=80, maxlevel=3},
		},
		damage_groups = {core_structure=.75, fleshy=8},
	},
})

minetest.register_tool("lottserver:morgul_blade", {
	description = "Morgul Blade",
	inventory_image = "lottserver_morgulblade.png",
	range = 2,
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level=1,
		groupcaps={
			core_structure={times={[1]=10.30, [2]=20.40, [3]=30.40}, uses=5, maxlevel=1},
               snappy={times={[1]=0.70, [2]=0.80, [3]=0.25}, uses=80, maxlevel=3},
		},
		damage_groups = {core_structure=.75, fleshy=8},
	},
})

minetest.register_tool("lottserver:herugrim", {
	description = "Herugrim",
	inventory_image = "lottserver_herugrim.png",
	range = 2,
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level=1,
		groupcaps={
			core_structure={times={[1]=10.30, [2]=20.40, [3]=30.40}, uses=5, maxlevel=1},
               snappy={times={[1]=0.70, [2]=0.80, [3]=0.25}, uses=80, maxlevel=3},
		},
		damage_groups = {core_structure=.75, fleshy=8},
	},
})

minetest.register_tool("lottserver:anduril", {
	description = "Anduril",
	inventory_image = "lottserver_anduril.png",
	range = 2,
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level=1,
		groupcaps={
			core_structure={times={[1]=10.30, [2]=20.40, [3]=30.40}, uses=5, maxlevel=1},
               snappy={times={[1]=0.70, [2]=0.80, [3]=0.25}, uses=80, maxlevel=3},
		},
		damage_groups = {core_structure=.75, fleshy=8},
	},
})

minetest.register_tool("lottserver:aeglos", {
	description = "Aeglos",
	inventory_image = "lottserver_aeglos.png",
	range = 2,
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level=1,
		groupcaps={
			core_structure={times={[1]=10.30, [2]=20.40, [3]=30.40}, uses=5, maxlevel=1},
               snappy={times={[1]=0.70, [2]=0.80, [3]=0.25}, uses=80, maxlevel=3},
		},
		damage_groups = {core_structure=.75, fleshy=8},
	},
})

minetest.register_tool("lottserver:glamdring", {
	description = "Glamdring",
	inventory_image = "lottserver_glamdring.png",
	range = 2,
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level=1,
		groupcaps={
			core_structure={times={[1]=0.30, [2]=0.40, [3]=0.40}, uses=5, maxlevel=1},
               snappy={times={[1]=0.70, [2]=0.80, [3]=0.25}, uses=80, maxlevel=3},
		},
		damage_groups = {core_structure=.75, fleshy=8},
	},
})

minetest.register_tool("lottserver:greathammer", {
	description = "Great Hammer",
	inventory_image = "lottserver_great_hammer.png",
	range = 1,
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level=1,
		groupcaps={
			core_structure={times={[1]=10.30, [2]=20.40, [3]=30.40}, uses=5, maxlevel=1},
               snappy={times={[1]=0.70, [2]=0.80, [3]=0.25}, uses=80, maxlevel=3},
		},
		damage_groups = {core_structure=.75, fleshy=8},
	},
})

minetest.register_craft({
	output = "lottserver:greathammer",
	recipe = {
		{"lottores:mithril_block", "lottores:mithril_block", "lottores:mithril_block"},
		{"", "default:mese", ""},
		{"", "default:diamond", ""}
	}
})
