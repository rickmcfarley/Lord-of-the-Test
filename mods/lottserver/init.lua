-- Teleporters
dofile(minetest.get_modpath(minetest.get_current_modname()).."/dwarf_teleport.lua")
dofile(minetest.get_modpath(minetest.get_current_modname()).."/elf_teleport.lua")
dofile(minetest.get_modpath(minetest.get_current_modname()).."/rohan_teleport.lua")
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

minetest.register_privilege("men", {
	description = "Citizen of the Kingdom of Men",
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
     groups = {forbidden=1},
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

minetest.register_chatcommand("induct", {
	params = "<name> <privilege>",
	description = "Induct a layer into a kingdom",
	func = function(name, param)
		if not minetest.check_player_privs(name, {leader=true}) and not minetest.check_player_privs(name, {high=true}) then
			return false, "You are not of a high position in a Kingdom! Only high position people may induct people into Kingdoms."
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
			if priv ~= "elven" and priv ~= "dwarven" and priv ~= "men" and priv ~= "forsaken" and priv ~= "mordor" then
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

minetest.register_chatcommand("promote", {
	params = "<name> <privilege>",
	description = "Promote a player's position in a kingdom",
	func = function(name, param)
		if not minetest.check_player_privs(name, {leader=true}) and not minetest.check_player_privs(name, {high=true}) then
			return false, "You are not of a high position in a Kingdom! Only high position people may promote other people"
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
			if priv ~= "high" and priv ~= "mid" and priv ~= "low" then
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
		minetest.log("action", name..' promoted '..grantname..' to a '..minetest.privs_to_string(grantprivs, ', ')..' position in your kingdom')
		if grantname ~= name then
			minetest.chat_send_player(grantname, name
					.. " promoted you to a " .. minetest.privs_to_string(grantprivs, ' ') .. " position in your kingdom")
		end
		return true, "Privileges of " .. grantname .. ": "
			.. minetest.privs_to_string(
				minetest.get_player_privs(grantname), ' ')
	end,
})

kingdom = {}
kingdom.men = {}
kingdom.elven = {}
kingdom.dwarven = {}
kingdom.mordor = {}
kingdom.forsaken = {}
kingdom.less = {}

local timer = 0
minetest.register_globalstep(function(dtime)
	timer = timer + dtime;
	if timer >= 1 then
		for _,player in ipairs(minetest.get_connected_players()) do
		        local name = player:get_player_name()
		        if minetest.check_player_privs(name,{men=true}) then
                    kingdom.men[name] = true
					kingdom.less[name] = nil
			    elseif minetest.check_player_privs(name,{elven=true}) then
				    kingdom.elven[name] = true
					kingdom.less[name] = nil
			    elseif minetest.check_player_privs(name,{dwarven=true}) then
				    kingdom.dwarven[name] = true
					kingdom.less[name] = nil
			    elseif minetest.check_player_privs(name,{mordor=true}) then
				    kingdom.mordor[name] = true
					kingdom.less[name] = nil
			    elseif minetest.check_player_privs(name,{forsaken=true}) then
				    kingdom.forsaken[name] = true
					kingdom.less[name] = nil
			    elseif minetest.check_player_privs(name,{men=true}) then
                    kingdom.men[name] = true
					kingdom.less[name] = nil
				else kingdom.less[name] = true
                end
				if minetest.check_player_privs(name,{elven=true}) then
				    kingdom.elven[name] = true
					kingdom.less[name] = nil
			    end
				if minetest.check_player_privs(name,{dwarven=true}) then
				    kingdom.dwarven[name] = true
					kingdom.less[name] = nil
				end
			    if minetest.check_player_privs(name,{mordor=true}) then
				    kingdom.mordor[name] = true
					kingdom.less[name] = nil
				end
			    if minetest.check_player_privs(name,{forsaken=true}) then
				    kingdom.forsaken[name] = true
					kingdom.less[name] = nil
			    end
				if not minetest.check_player_privs(name,{men=true}) then
                    kingdom.men[name] = nil
			    elseif not minetest.check_player_privs(name,{elven=true}) then
				    kingdom.elven[name] = nil
			    elseif not minetest.check_player_privs(name,{dwarven=true}) then
				    kingdom.dwarven[name] = nil
			    elseif not minetest.check_player_privs(name,{mordor=true}) then
				    kingdom.mordor[name] = nil
			    elseif not minetest.check_player_privs(name,{forsaken=true}) then
				    kingdom.forsaken[name] = nil
			    elseif not minetest.check_player_privs(name,{men=true}) then
				    kingdom.men[name] = nil
                end
				timer = 0
				men_names = ""
	            for k, v in pairs(kingdom.men) do
		            men_names = men_names..", "..k
	            end
				gondorian_names = ""
				elven_names = ""
				for k, v in pairs(kingdom.elven) do
		            elven_names = elven_names..", "..k
	            end
				dwarven_names = ""
				for k, v in pairs(kingdom.dwarven) do
		            dwarven_names = dwarven_names..", "..k
	            end
				mordor_names = ""
				for k, v in pairs(kingdom.mordor) do
		            mordor_names = mordor_names..", "..k
	            end
				forsaken_names = ""
				for k, v in pairs(kingdom.forsaken) do
		            forsaken_names = forsaken_names..", "..k
	            end
				kingdomless_names = ""
				for k, v in pairs(kingdom.less) do
		            kingdomless_names = kingdomless_names..", "..k
	            end
		end
	end
end)

minetest.register_chatcommand("kingdom", {
	description = "",
	func = function(name)
		minetest.chat_send_player(name, "The Kingdomless: "..kingdomless_names.. " | All Men: "..men_names.. " | All Elves: "..elven_names.. " | All Dwarves: "..dwarven_names.. " | All Minions of Mordor: "..mordor_names.. " | The Forsaken: "..forsaken_names)
    end,
})

local dwarf_bar = {
	physical = false,
    collisionbox = {x=0, y=0, z=0},
	visual = "sprite",
	textures = {"dwarf_bar.png"},
	visual_size = {x=1, y=1/8, z=1},
	wielder = nil,
}

minetest.register_entity("lottserver:dwarf_bar", dwarf_bar)

local elf_bar = {
	physical = false,
    collisionbox = {x=0, y=0, z=0},
	visual = "sprite",
	textures = {"elf_bar.png"},
	visual_size = {x=1, y=1/8, z=1},
	wielder = nil,
}

minetest.register_entity("lottserver:elf_bar", elf_bar)

local men_bar = {
	physical = false,
    collisionbox = {x=0, y=0, z=0},
	visual = "sprite",
	textures = {"men_bar.png"},
	visual_size = {x=1, y=1/8, z=1},
	wielder = nil,
}

minetest.register_entity("lottserver:men_bar", men_bar)

local mordor_bar = {
	physical = false,
    collisionbox = {x=0, y=0, z=0},
	visual = "sprite",
	textures = {"mordor_bar.png"},
	visual_size = {x=1, y=1/8, z=1},
	wielder = nil,
}

minetest.register_entity("lottserver:mordor_bar", mordor_bar)

local forsaken_bar = {
	physical = false,
    collisionbox = {x=0, y=0, z=0},
	visual = "sprite",
	textures = {"forsaken_bar.png"},
	visual_size = {x=1, y=1/8, z=1},
	wielder = nil,
}

minetest.register_entity("lottserver:mordor_bar", mordor_bar)

function dwarf_bar:on_step(dtime)
  local wielder = self.wielder
  if wielder == nil then 
     self.object:remove()
     return   
  elseif minetest.env:get_player_by_name(wielder:get_player_name()) == nil then
     self.object:remove()
     return
  end
    self.object:set_properties({
        textures = {"dwarf_bar.png",},
        }
  )
end

function elf_bar:on_step(dtime)
  local wielder = self.wielder
  if wielder == nil then 
     self.object:remove()
     return   
  elseif minetest.env:get_player_by_name(wielder:get_player_name()) == nil then
     self.object:remove()
     return
  end
    self.object:set_properties({
        textures = {"elf_bar.png",},
        }
  )
end

function men_bar:on_step(dtime)
  local wielder = self.wielder
  if wielder == nil then 
     self.object:remove()
     return   
  elseif minetest.env:get_player_by_name(wielder:get_player_name()) == nil then
     self.object:remove()
     return
  end
    self.object:set_properties({
        textures = {"men_bar.png",},
        }
  )
end

function mordor_bar:on_step(dtime)
  local wielder = self.wielder
  if wielder == nil then 
     self.object:remove()
     return
  elseif minetest.env:get_player_by_name(wielder:get_player_name()) == nil then
     self.object:remove()
     return
  end
  self.object:set_properties({
        textures = {"mordor_bar.png",},
        }
  )
end

function forsaken_bar:on_step(dtime)
  local wielder = self.wielder
  if wielder == nil then 
     self.object:remove()
     return
  elseif minetest.env:get_player_by_name(wielder:get_player_name()) == nil then
     self.object:remove()
     return
  end
  self.object:set_properties({
        textures = {"forsaken_bar.png",},
        }
  )
end

--local timer = 0
minetest.register_on_joinplayer(function(player)
		for _,player in ipairs(minetest.get_connected_players()) do
		        local name = player:get_player_name()
				local pos = player:getpos()
		        if minetest.check_player_privs(name,{dwarven=true}) then
				    local pos = player:getpos()
				    --player:set_physics_override(0.8, 1, 1)
                    player:set_properties({visual_size = {x=1, y=0.8}})
					local ent = minetest.env:add_entity(pos, "lottserver:dwarf_bar")
					if ent~= nil then
                        ent:set_attach(player, "", {x=0,y=10,z=0}, {x=0,y=0,z=0})
                        ent:set_attach(player, "", {x=0,y=12,z=0}, {x=0,y=0,z=0})
                        ent = ent:get_luaentity()
                        ent.wielder = player
					end
				elseif minetest.check_player_privs(name,{elven=true}) then
				    --player:set_physics_override(1.2, 1, 1)
                    player:set_properties({visual_size = {x=0.9, y=1.2}})
					local ent = minetest.env:add_entity(pos, "lottserver:elf_bar")
					if ent~= nil then
                        ent:set_attach(player, "", {x=0,y=10,z=0}, {x=0,y=0,z=0})
                        ent:set_attach(player, "", {x=0,y=12,z=0}, {x=0,y=0,z=0})
                        ent = ent:get_luaentity()
                        ent.wielder = player
					end
				elseif minetest.check_player_privs(name,{mordor=true}) then
				    --player:set_physics_override(0.9, 1, 1)
                    player:set_properties({visual_size = {x=1, y=0.9}})
					local ent = minetest.env:add_entity(pos, "lottserver:mordor_bar")
					if ent~= nil then
                        ent:set_attach(player, "", {x=0,y=10,z=0}, {x=0,y=0,z=0})
                        ent:set_attach(player, "", {x=0,y=12,z=0}, {x=0,y=0,z=0})
                        ent = ent:get_luaentity()
                        ent.wielder = player
					end
			    elseif minetest.check_player_privs(name,{men=true}) then
				    --player:set_physics_override(1, 1, 1)
                    player:set_properties({visual_size = {x=1, y=1}})
					local ent = minetest.env:add_entity(pos, "lottserver:men_bar")
					if ent~= nil then
                        ent:set_attach(player, "", {x=0,y=10,z=0}, {x=0,y=0,z=0})
                        ent:set_attach(player, "", {x=0,y=12,z=0}, {x=0,y=0,z=0})
                        ent = ent:get_luaentity()
                        ent.wielder = player
					end
				elseif minetest.check_player_privs(name,{forsaken=true}) then
				    --player:set_physics_override(1, 1, 1)
                    player:set_properties({visual_size = {x=1, y=1}})
					local ent = minetest.env:add_entity(pos, "lottserver:forsaken_bar")
					if ent~= nil then
                        ent:set_attach(player, "", {x=0,y=10,z=0}, {x=0,y=0,z=0})
                        ent:set_attach(player, "", {x=0,y=12,z=0}, {x=0,y=0,z=0})
                        ent = ent:get_luaentity()
                        ent.wielder = player
					end
				else
				    --player:set_physics_override(1, 1, 1)
                    player:set_properties({visual_size = {x=1, y=1}})
			    end
		end
end)

minetest.register_on_respawnplayer(function(player)
		for _,player in ipairs(minetest.get_connected_players()) do
		        local name = player:get_player_name()
				local pos = player:getpos()
		        if minetest.check_player_privs(name,{dwarven=true}) then
				    local pos = player:getpos()
				    --player:set_physics_override(0.8, 1, 1)
                    player:set_properties({visual_size = {x=1, y=0.8}})
					local ent = minetest.env:add_entity(pos, "lottserver:dwarf_bar")
					if ent~= nil then
                        ent:set_attach(player, "", {x=0,y=10,z=0}, {x=0,y=0,z=0})
                        ent:set_attach(player, "", {x=0,y=12,z=0}, {x=0,y=0,z=0})
                        ent = ent:get_luaentity()
                        ent.wielder = player
					end
				elseif minetest.check_player_privs(name,{elven=true}) then
				    --player:set_physics_override(1.2, 1, 1)
                    player:set_properties({visual_size = {x=0.9, y=1.2}})
					local ent = minetest.env:add_entity(pos, "lottserver:elf_bar")
					if ent~= nil then
                        ent:set_attach(player, "", {x=0,y=10,z=0}, {x=0,y=0,z=0})
                        ent:set_attach(player, "", {x=0,y=12,z=0}, {x=0,y=0,z=0})
                        ent = ent:get_luaentity()
                        ent.wielder = player
					end
				elseif minetest.check_player_privs(name,{mordor=true}) then
				    --player:set_physics_override(0.9, 1, 1)
                    player:set_properties({visual_size = {x=1, y=0.9}})
					local ent = minetest.env:add_entity(pos, "lottserver:mordor_bar")
					if ent~= nil then
                        ent:set_attach(player, "", {x=0,y=10,z=0}, {x=0,y=0,z=0})
                        ent:set_attach(player, "", {x=0,y=12,z=0}, {x=0,y=0,z=0})
                        ent = ent:get_luaentity()
                        ent.wielder = player
					end
			    elseif minetest.check_player_privs(name,{men=true}) then
				    --player:set_physics_override(1, 1, 1)
                    player:set_properties({visual_size = {x=1, y=1}})
					local ent = minetest.env:add_entity(pos, "lottserver:men_bar")
					if ent~= nil then
                        ent:set_attach(player, "", {x=0,y=10,z=0}, {x=0,y=0,z=0})
                        ent:set_attach(player, "", {x=0,y=12,z=0}, {x=0,y=0,z=0})
                        ent = ent:get_luaentity()
                        ent.wielder = player
					end
				elseif minetest.check_player_privs(name,{forsaken=true}) then
				    --player:set_physics_override(1, 1, 1)
                    player:set_properties({visual_size = {x=1, y=1}})
					local ent = minetest.env:add_entity(pos, "lottserver:forsaken_bar")
					if ent~= nil then
                        ent:set_attach(player, "", {x=0,y=10,z=0}, {x=0,y=0,z=0})
                        ent:set_attach(player, "", {x=0,y=12,z=0}, {x=0,y=0,z=0})
                        ent = ent:get_luaentity()
                        ent.wielder = player
					end
				else
				    --player:set_physics_override(1, 1, 1)
                    player:set_properties({visual_size = {x=1, y=1}})
			    end
		end
end)

minetest.register_node("lottserver:tilkal", {
	tiles = {"default_grass.png"},
	groups = {snappy=2,dig_immediate=3,flammable=2, not_in_creative_inventory=1},
})

minetest.register_abm({
	nodenames = {"lottserver:tilkal"},
	neighbors = {"default:stone"},
	interval = 5,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local x = pos.x
		local y = pos.y
		local z = pos.z
		local down1 = {x=x,y=y-1,z=z}
          local down2 = {x=x,y=y-2,z=z}
          local down3 = {x=x,y=y-3,z=z}
          local down4 = {x=x,y=y-4,z=z}
          local down5 = {x=x,y=y-5,z=z}
          local down6 = {x=x,y=y-6,z=z}
          local down7 = {x=x,y=y-7,z=z}
          local down8 = {x=x,y=y-8,z=z}
          local down9 = {x=x,y=y-9,z=z}
          local down10 = {x=x,y=y-10,z=z}
          local down11 = {x=x,y=y-11,z=z}
          local down12 = {x=x,y=y-12,z=z}
          local down13 = {x=x,y=y-13,z=z}
          local down14 = {x=x,y=y-14,z=z}
          local down15 = {x=x,y=y-15,z=z}
          local down16 = {x=x,y=y-16,z=z}
          local down17 = {x=x,y=y-17,z=z}
          local down18 = {x=x,y=y-18,z=z}
          local down19 = {x=x,y=y-19,z=z}
          local down20 = {x=x,y=y-20,z=z}
          local down21 = {x=x,y=y-21,z=z}
          local down22 = {x=x,y=y-22,z=z}
          local down23 = {x=x,y=y-23,z=z}
          local down24 = {x=x,y=y-24,z=z}
          local down25 = {x=x,y=y-25,z=z}
          local down26 = {x=x,y=y-26,z=z}
          local down27 = {x=x,y=y-27,z=z}
          local down28 = {x=x,y=y-28,z=z}
          local down29 = {x=x,y=y-29,z=z}
          local down30 = {x=x,y=y-30,z=z}
          local down31 = {x=x,y=y-31,z=z}
          local down32 = {x=x,y=y-32,z=z}
          local down33 = {x=x,y=y-33,z=z}
          local down34 = {x=x,y=y-34,z=z}
          local down35 = {x=x,y=y-35,z=z}
          local down36 = {x=x,y=y-36,z=z}
          local down37 = {x=x,y=y-37,z=z}
          local down38 = {x=x,y=y-38,z=z}
          local down39 = {x=x,y=y-39,z=z}
          local down40 = {x=x,y=y-40,z=z}
          local down41 = {x=x,y=y-41,z=z}
          local down42 = {x=x,y=y-42,z=z}
          local down43 = {x=x,y=y-43,z=z}
          local down44 = {x=x,y=y-44,z=z}
          local down45 = {x=x,y=y-45,z=z}
          local down46 = {x=x,y=y-46,z=z}
          local down47 = {x=x,y=y-47,z=z}
          local down48 = {x=x,y=y-48,z=z}
          local down49 = {x=x,y=y-49,z=z}
          local down50 = {x=x,y=y-50,z=z}
          if minetest.get_node(down1).name == "default:stone" then
			minetest.set_node(down1, {name="lottores:tilkal"})
               minetest.set_node(down2, {name="lottores:tilkal"})
               minetest.set_node(down3, {name="lottores:tilkal"})
               minetest.set_node(down4, {name="lottores:tilkal"})
               minetest.set_node(down5, {name="lottores:tilkal"})
               minetest.set_node(down6, {name="lottores:tilkal"})
               minetest.set_node(down7, {name="lottores:tilkal"})
               minetest.set_node(down8, {name="lottores:tilkal"})
               minetest.set_node(down9, {name="lottores:tilkal"})
               minetest.set_node(down10, {name="lottores:tilkal"})
               minetest.set_node(down11, {name="lottores:tilkal"})
               minetest.set_node(down12, {name="lottores:tilkal"})
               minetest.set_node(down13, {name="lottores:tilkal"})
               minetest.set_node(down14, {name="lottores:tilkal"})
               minetest.set_node(down15, {name="lottores:tilkal"})
               minetest.set_node(down16, {name="lottores:tilkal"})
               minetest.set_node(down17, {name="lottores:tilkal"})
               minetest.set_node(down18, {name="lottores:tilkal"})
               minetest.set_node(down19, {name="lottores:tilkal"})
               minetest.set_node(down20, {name="lottores:tilkal"})
               minetest.set_node(down21, {name="lottores:tilkal"})
               minetest.set_node(down22, {name="lottores:tilkal"})
               minetest.set_node(down23, {name="lottores:tilkal"})
               minetest.set_node(down24, {name="lottores:tilkal"})
               minetest.set_node(down25, {name="lottores:tilkal"})
               minetest.set_node(down26, {name="lottores:tilkal"})
               minetest.set_node(down27, {name="lottores:tilkal"})
               minetest.set_node(down28, {name="lottores:tilkal"})
               minetest.set_node(down29, {name="lottores:tilkal"})
               minetest.set_node(down30, {name="lottores:tilkal"})
               minetest.set_node(down31, {name="lottores:tilkal"})
               minetest.set_node(down32, {name="lottores:tilkal"})
               minetest.set_node(down33, {name="lottores:tilkal"})
               minetest.set_node(down34, {name="lottores:tilkal"})
               minetest.set_node(down35, {name="lottores:tilkal"})
               minetest.set_node(down36, {name="lottores:tilkal"})
               minetest.set_node(down37, {name="lottores:tilkal"})
               minetest.set_node(down38, {name="lottores:tilkal"})
               minetest.set_node(down39, {name="lottores:tilkal"})
               minetest.set_node(down40, {name="lottores:tilkal"})
               minetest.set_node(down41, {name="lottores:tilkal"})
               minetest.set_node(down42, {name="lottores:tilkal"})
               minetest.set_node(down43, {name="lottores:tilkal"})
               minetest.set_node(down44, {name="lottores:tilkal"})
               minetest.set_node(down45, {name="lottores:tilkal"})
               minetest.set_node(down46, {name="lottores:tilkal"})
               minetest.set_node(down47, {name="lottores:tilkal"})
               minetest.set_node(down48, {name="lottores:tilkal"})
               minetest.set_node(down49, {name="lottores:tilkal"})
               minetest.set_node(down50, {name="lottores:tilkal"})
		end
     end,
})

minetest.register_node("lottserver:marble", {
	tiles = {"default_grass.png"},
	groups = {snappy=2,dig_immediate=3,flammable=2, not_in_creative_inventory=1},
})

minetest.register_abm({
	nodenames = {"lottserver:marble"},
	neighbors = {"air"},
	interval = 2,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local x = pos.x
		local y = pos.y
		local z = pos.z
		local down = {x=x,y=y-1,z=z}
		local here = {x=x,y=y,z=z}
        if minetest.get_node(down).name == "air" then
	       minetest.set_node(down, {name="lottserver:marble"})
	       minetest.remove_node(here)
	       minetest.set_node(here, {name="lottores:marble"})
	end
     end,
})

minetest.register_node("lottserver:rock", {
	tiles = {"default_grass.png"},
	groups = {snappy=2,dig_immediate=3,flammable=2, not_in_creative_inventory=1},
})

local H_LAG = 15

function lottserver_rock(x,y,z, area, data)
	local c_stone = minetest.get_content_id("lottmapgen:mordor_stone")
	local top = math.random(6,H_LAG)
	for j = 0, top do
		for k = -3, 3 do
			for l = -3, 3 do
				if j == 0 then
					if k*k + l*l <= 9 then
						local vi = area:index(x+k, y+j, z+l-3)
						data[vi] = c_stone
					end
				elseif j <= top/5 then
					if k*k + l*l <= 4 then
						local vi = area:index(x+k, y+j, z+l-3)
						data[vi] = c_stone
					end
				elseif j <= top/5 * 3 then
					if k*k + l*l <= 1 then
						local vi = area:index(x+k, y+j, z+l-3)
						data[vi] = c_stone
					end
				else
					local vi = area:index(x, y+j, z-3)
					data[vi] = c_stone
				end
			end
		end
	end
end

minetest.register_abm({
	nodenames = {"lottserver:rock"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		local x = pos.x
		local y = pos.y
		local z = pos.z
		local vm = minetest.get_voxel_manip()
		local pos1 = {x=x-4, y=y, z=z-5}
		local pos2 = {x=x+4, y=y+4, z=z+5}
		local emin, emax = vm:read_from_map(pos1, pos2)
		local area = VoxelArea:new({MinEdge=emin, MaxEdge=emax})
		local data = vm:get_data()
		lottserver_rock(x, y, z, area, data)
		vm:set_data(data)
		vm:write_to_map()
		vm:update_map()
	end,
})

minetest.register_node("lottserver:war", {
  description = "War Notification",
  tiles = {"lottserver_war.png"},
  drawtype = "signlike",
  inventory_image = "lottserver_gold.png",
	wield_image = "lottserver_gold.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	is_ground_content = false,
	walkable = false,
	selection_box = {
		type = "wallmounted",
	},
	groups = {core_structure=1},
	legacy_wallmounted = true,
	sounds = default.node_sound_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "War has begun!")
   end,
})