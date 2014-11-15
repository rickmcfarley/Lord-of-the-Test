local savedir = minetest.get_worldpath().."/home/"
os.execute('mkdir "'..savedir..'"')

--Spawn command
minetest.register_chatcommand("spawn", {
    params = "",
    description = "Teleport to the spawn location.",
    privs = {home=true},
    func = function(name, param)
            local player = minetest.env:get_player_by_name(name)
            minetest.chat_send_player(name, "Teleported to spawn!")
            player:setpos({x=59.0, y=6, z=-120})
            return true
    end,
})

minetest.register_chatcommand("FOS", {
    params = "",
    description = "Teleport to the FOS location.",
    privs = {home=true},
    func = function(name, param)
            local player = minetest.env:get_player_by_name(name)
            minetest.chat_send_player(name, "Teleported to Foundations of Stone!")
            player:setpos({x=0, y=-95, z=0})
            return true
    end,
})

minetest.register_chatcommand("AC", {
    params = "",
    description = "Teleport to the Admin's Core.",
    privs = {access=true},
    func = function(name, param)
            local player = minetest.env:get_player_by_name(name)
            minetest.chat_send_player(name, "Teleported to Admin's Core!")
            player:setpos({x=0, y=-10000, z=0})
            return true
    end,
})

--Sethome command
minetest.register_chatcommand("sethome", {
        params = "",
        description = "Set your home location.",
        privs = {home=true},
        func = function(name, param)
                player = minetest.env:get_player_by_name(name)
                test = player:getpos()
                local file = io.open(minetest.get_worldpath().."/home/"..player:get_player_name().."_home", "w")
                if not file then
                        minetest.chat_send_player(name, "There was an error, please contact the server owner.")
                        return
                end
                file:write(minetest.pos_to_string(test))
                file:close()
                minetest.chat_send_player(name, "Your home location is set! Type /home to teleport back here.")
        end
})

minetest.register_chatcommand("sethome2", {
        params = "",
        description = "Set your second home location.",
        privs = {home=true},
        func = function(name, param)
                player = minetest.env:get_player_by_name(name)
                test = player:getpos()
                local file = io.open(minetest.get_worldpath().."/home/"..player:get_player_name().."_home2", "w")
                if not file then
                        minetest.chat_send_player(name, "There was an error, please contact the server owner.")
                        return
                end
                file:write(minetest.pos_to_string(test))
                file:close()
                minetest.chat_send_player(name, "Your second home location is set! Type /home2 to teleport back here.")
        end
})

minetest.register_chatcommand("sethome3", {
        params = "",
        description = "Admin/ Moderator's third home function",
        privs = {access=true},
        func = function(name, param)
                player = minetest.env:get_player_by_name(name)
                test = player:getpos()
                local file = io.open(minetest.get_worldpath().."/home/"..player:get_player_name().."_home3", "w")
                if not file then
                        minetest.chat_send_player(name, "There was an error, please contact the server owner.")
                        return
                end
                file:write(minetest.pos_to_string(test))
                file:close()
                minetest.chat_send_player(name, "Your third home location is set! Type /home3 to teleport back here.")
        end
})

--Home command
minetest.register_chatcommand("home", {
	params = "",
	description = "Teleport to your home location.",
	privs = {home=true},
	func = function(name, param)
		player = minetest.env:get_player_by_name(name)
		local file = io.open(minetest.get_worldpath().."/home/"..player:get_player_name().."_home", "r")
		if not file then
			minetest.chat_send_player(name, "You haven't set your home! Set one using /sethome.")
			return
		end
		local line = file:read("*line")
		file:close()
		local pos = minetest.string_to_pos(string.sub(line, 1, string.find(line, ")")))
		if not pos or type(pos) ~= "table" then
			minetest.chat_send_player(name, "There was an error, please contact the server owner.")
			return
		end
		minetest.env:get_player_by_name(name):setpos(pos)
		minetest.chat_send_player(name, "Home sweet home.")
	end
})

minetest.register_chatcommand("home2", {
	params = "",
	description = "Teleport to your second home location.",
	privs = {home=true},
	func = function(name, param)
		player = minetest.env:get_player_by_name(name)
		local file = io.open(minetest.get_worldpath().."/home/"..player:get_player_name().."_home2", "r")
		if not file then
			minetest.chat_send_player(name, "You haven't set your second home! Set one using /sethome2.")
			return
		end
		local line = file:read("*line")
		file:close()
		local pos = minetest.string_to_pos(string.sub(line, 1, string.find(line, ")")))
		if not pos or type(pos) ~= "table" then
			minetest.chat_send_player(name, "There was an error, please contact the server owner.")
			return
		end
		minetest.env:get_player_by_name(name):setpos(pos)
		minetest.chat_send_player(name, "Home sweet home.")
	end
})

minetest.register_chatcommand("home2", {
	params = "",
	description = "Teleport to your second home location.",
	privs = {home=true},
	func = function(name, param)
		player = minetest.env:get_player_by_name(name)
		local file = io.open(minetest.get_worldpath().."/home/"..player:get_player_name().."_home2", "r")
		if not file then
			minetest.chat_send_player(name, "You haven't set your second home! Set one using /sethome2.")
			return
		end
		local line = file:read("*line")
		file:close()
		local pos = minetest.string_to_pos(string.sub(line, 1, string.find(line, ")")))
		if not pos or type(pos) ~= "table" then
			minetest.chat_send_player(name, "There was an error, please contact the server owner.")
			return
		end
		minetest.env:get_player_by_name(name):setpos(pos)
		minetest.chat_send_player(name, "Home sweet home.")
	end
})

minetest.register_chatcommand("home3", {
	params = "",
	description = "Admin/ Moderator's third home function",
	privs = {access=true},
	func = function(name, param)
		player = minetest.env:get_player_by_name(name)
		local file = io.open(minetest.get_worldpath().."/home/"..player:get_player_name().."_home3", "r")
		if not file then
			minetest.chat_send_player(name, "You haven't set your third home! Set one using /sethome3.")
			return
		end
		local line = file:read("*line")
		file:close()
		local pos = minetest.string_to_pos(string.sub(line, 1, string.find(line, ")")))
		if not pos or type(pos) ~= "table" then
			minetest.chat_send_player(name, "There was an error, please contact the server owner.")
			return
		end
		minetest.env:get_player_by_name(name):setpos(pos)
		minetest.chat_send_player(name, "Home sweet home.")
	end
})