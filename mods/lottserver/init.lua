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
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			core_structure={times={[1]=10.30, [2]=20.40, [3]=30.40}, uses=0, maxlevel=1},
               snappy={times={[1]=0.70, [2]=0.80, [3]=0.25}, uses=0, maxlevel=3},
		},
		damage_groups = {core_structure=.75, fleshy=8},
	},
})

minetest.register_tool("lottserver:grond", {
	description = "Hammer of the Underworld",
	inventory_image = "lottserver_grond.png",
	range = 2,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			core_structure={times={[1]=10.30, [2]=20.40, [3]=30.40}, uses=0, maxlevel=1},
               snappy={times={[1]=0.70, [2]=0.80, [3]=0.25}, uses=0, maxlevel=3},
		},
		damage_groups = {core_structure=.75, fleshy=8},
	},
})

minetest.register_tool("lottserver:herugrim", {
	description = "Herugrim",
	inventory_image = "lottserver_herugrim.png",
	range = 2,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			core_structure={times={[1]=10.30, [2]=20.40, [3]=30.40}, uses=0, maxlevel=1},
               snappy={times={[1]=0.70, [2]=0.80, [3]=0.25}, uses=0, maxlevel=3},
		},
		damage_groups = {core_structure=.75, fleshy=8},
	},
})

minetest.register_tool("lottserver:anduril", {
	description = "Anduril",
	inventory_image = "lottserver_anduril.png",
	range = 2,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			core_structure={times={[1]=10.30, [2]=20.40, [3]=30.40}, uses=0, maxlevel=1},
               snappy={times={[1]=0.70, [2]=0.80, [3]=0.25}, uses=0, maxlevel=3},
		},
		damage_groups = {core_structure=.75, fleshy=8},
	},
})

minetest.register_tool("lottserver:aeglos", {
	description = "Aeglos",
	inventory_image = "lottserver_aeglos.png",
	range = 2,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			core_structure={times={[1]=10.30, [2]=20.40, [3]=30.40}, uses=0, maxlevel=1},
               snappy={times={[1]=0.70, [2]=0.80, [3]=0.25}, uses=0, maxlevel=3},
		},
		damage_groups = {core_structure=.75, fleshy=8},
	},
})

minetest.register_tool("lottserver:glamdring", {
	description = "Glamdring",
	inventory_image = "lottserver_glamdring.png",
	range = 2,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			core_structure={times={[1]=0.30, [2]=0.40, [3]=0.40}, uses=0, maxlevel=1},
               snappy={times={[1]=0.70, [2]=0.80, [3]=0.25}, uses=0, maxlevel=3},
		},
		damage_groups = {core_structure=.75, fleshy=8},
	},
})

minetest.register_tool("lottserver:greathammer", {
	description = "Great Hammer",
	inventory_image = "lottserver_great_hammer.png",
	range = 1,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			core_structure={times={[1]=10.30, [2]=20.40, [3]=30.40}, uses=0, maxlevel=1},
               snappy={times={[1]=0.70, [2]=0.80, [3]=0.25}, uses=0, maxlevel=3},
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

-- Kingdom privs priv!
minetest.register_privilege("leader", {
	description = "Leader of a Kingdom!",
	give_to_singleplayer = false,
})

minetest.register_chatcommand("induct", {
	params = "<name> <privilege>",
	description = "Induct a layer into a kingdom",
	func = function(name, param)
		if not minetest.check_player_privs(name, {leader=true}) then
			return false, "Youdon not lead a Kingdom! Only leaders may induct people into Kingdoms."
		end
		local grantname, grantprivstr = string.match(param, "([^ ]+) (.+)")
		if not grantname or not grantprivstr then
			return false, "Invalid parameters (see /help grant)"
		elseif not minetest.auth_table[grantname] then
			return false, "Player " .. grantname .. " does not exist."
		end
		local grantprivs = minetest.string_to_privs(grantprivstr)
		local privs = minetest.get_player_privs(grantname)
		local privs_unknown = ""
		for priv, _ in pairs(grantprivs) do
			if priv ~= "elven" and priv ~= "dwarven" and priv ~= "rohirrim" and priv ~= "gondorian" and priv ~= "forsaken" and priv ~= "mordor" and
					not minetest.check_player_privs(name, {server=true}) then
				return false, "Your privileges are insufficient."
			end
			if not minetest.registered_privileges[priv] then
				privs_unknown = privs_unknown .. "Unknown privilege: " .. priv .. "\n"
			end
			privs[priv] = true
		end
		if privs_unknown ~= "" then
			return false, privs_unknown
		end
		minetest.set_player_privs(grantname, privs)
		minetest.log("action", name..' inducted '..grantname..' into the '..minetest.privs_to_string(grantprivs, ', ')..' kingdom')
		if grantname ~= name then
			minetest.chat_send_player(grantname, name
					.. " inducted you into the " .. minetest.privs_to_string(grantprivs, ' ') .. " kingdom")
		end
		return true, "Privileges of " .. grantname .. ": "
			.. minetest.privs_to_string(
				minetest.get_player_privs(grantname), ' ')
	end,
})
