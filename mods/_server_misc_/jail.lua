-- Based on https://github.com/TheZenKitteh/minetest-jail

local jailpos = { x = 20000, y = 9991, z = 20059 }

minetest.register_chatcommand("jail", {
    params = "<player>",
    description = "Sends a player to Jail",
	privs = {kick=true},
    func = function ( name, param )
        local player = minetest.env:get_player_by_name(param)
        if (player) then
            player:setpos(jailpos)
			local privs = minetest.get_player_privs(param)
	        privs.home = nil
			privs.jailed = true
		    minetest.set_player_privs(param, privs)
			minetest.chat_send_player(param, "You have been sent to jail")
			minetest.chat_send_all(""..param.." has been sent to jail by "..name.."")
        end
    end,
})

local releasepos = { x = 59, y = 5, z = -120 }
minetest.register_chatcommand("release", {
    params = "<player>",
    description = "Releases a player from Jail",
	privs = {kick=true},
    func = function ( name, param )
        if (param == "") then return end
        local player = minetest.env:get_player_by_name(param)
        if (player) then
            player:setpos(releasepos)
			local privs = minetest.get_player_privs(param)
	        privs.home = true
			privs.jailed = nil
		    minetest.set_player_privs(param, privs)
			minetest.chat_send_player(param, "You have been released from jail")
			minetest.chat_send_all(""..param.." has been released from jail by "..name.."")
        end
    end,
})

local count = 0
minetest.register_globalstep(function(dtime)   
        count = count + dtime
        if count > 0.5 then
                count = 0
                for _,player in ipairs(minetest.get_connected_players()) do
		        local name = player:get_player_name()
		        if minetest.check_player_privs(name,{jailed=true}) then
                                local pos = player:getpos()
                                if pos.y < 8000 then
                                        player:setpos(jailpos)
                                end
                        end
                end
        end
end)
