-----------------------------------------------------------------------------------------------
local title	= "Death Messages"
local version = "0.1.2"
local mname	= "death_messages"
-----------------------------------------------------------------------------------------------
dofile(minetest.get_modpath("death_messages").."/settings.txt")
-----------------------------------------------------------------------------------------------

-- A table of quips for death messages

local messages = {}

-- Lava death messages
messages.lava = {
	" died."
}

-- Drowning death messages
messages.water = {
	" died."
}

-- Burning death messages
messages.fire = {
	" died."
}

-- Other death messages
messages.other = {
	" died."
}

if RANDOM_MESSAGES == true then
	minetest.register_on_dieplayer(function(player)
		local player_name = player:get_player_name()
		local node = minetest.registered_nodes[minetest.get_node(player:getpos()).name]
		if minetest.is_singleplayer() then
			player_name = "You"
		end
		-- Death by lava
		if node.groups.lava ~= nil then
			minetest.chat_send_all(player_name ..  messages.lava[math.random(1,#messages.lava)] )
		-- Death by drowning
		elseif player:get_breath() == 0 then
			minetest.chat_send_all(player_name ..  messages.water[math.random(1,#messages.water)] )
		-- Death by fire
		elseif node.name == "fire:basic_flame" then
			minetest.chat_send_all(player_name ..  messages.fire[math.random(1,#messages.fire)] )
		-- Death by something else
		else
			minetest.chat_send_all(player_name ..  messages.other[math.random(1,#messages.other)] )
		end

	end)

else
	minetest.register_on_dieplayer(function(player)
		local player_name = player:get_player_name()
		local node = minetest.registered_nodes[minetest.get_node(player:getpos()).name]
		if minetest.is_singleplayer() then
			player_name = "You"
		end
		-- Death by lava
		if node.groups.lava ~= nil then
			minetest.chat_send_all(player_name .. "	died.")
		-- Death by drowning
		elseif player:get_breath() == 0 then
			minetest.chat_send_all(player_name .. " died.")
		-- Death by fire
		elseif node.name == "fire:basic_flame" then
			minetest.chat_send_all(player_name .. " died.")
		-- Death by something else
		else
			minetest.chat_send_all(player_name .. " died.")
		end

	end)
end

-----------------------------------------------------------------------------------------------
print("[Mod] "..title.." ["..version.."] ["..mname.."] Loaded...")
-----------------------------------------------------------------------------------------------
