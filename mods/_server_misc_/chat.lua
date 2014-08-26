-- kmchat - a simple local chat mod for minetest
-- Copyright (C) 2014 hunterdelyx1, vegasd, sullome (Konungstvo Midgard)
--
-- This file is part of KMRP minetest-mods
--
-- KMRP minetest-mods is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- KMRP minetest-mods is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with KMRP minetest-mods.  If not, see <http://www.gnu.org/licenses/>.
--
-------------------------------------------------------------------------------
--
-- Features:
--  * Local chat
--  * Comfortable whisper and shout w/o commands
--  * Colorful chat
--  * Local and global OOC-chat
--  * GM-prefixes
--  * Dices

-- config zone {{{
formats = {
-- ["MATCH"] = {"FORMAT"                  RANGE  COLOR     PRIV}, --
   ["!(.+)"] = {"%s (Shouts): %s", 200, 0xFF0000, nil },
   ["?(.+)"] = {"%s (Whispers): %s", 3, 0x666666, nil },
   ["*(.+)"] = {"* %s %s", 35, 0xFFFF00, nil },
   ["#(.+)"] = {"%s (SERVER_NEWS): %s", 62000, 0x9966AA, "op"},
   ["@(.+)"] = {"%s (Global): %s", 62000, 0x20EEDD, nil },
}
DEFAULT_FORMAT     = "%s (Local): %s" 
DEFAULT_RANGE      = 35
DEFAULT_COLOR      = 0xFFFFFF
DICE_COLOR         = 0x0099FF
GMSPY_COLOR        = 0x666666
GM_PREFIX          = "[Admin] "
OP_PREFIX            = "[Moderator] "
D_PREFIX            = "[Dwarven] "
E_PREFIX            = "[Elven] "
R_PREFIX            = "[Rohirrim] "
G_PREFIX            = "[Gondorian] "
F_PREFIX            = "[Forsaken] "
M_PREFIX            = "[Mordor] "
OPD_PREFIX            = "[King of Durin's Folk] "
OPE_PREFIX            = "[High King of the Elves] "
OPR_PREFIX            = "[King of the Mark] "
OPG_PREFIX            = "[King of Gondor] "
OPF_PREFIX            = "[Chief of the Forsaken] "
OPM_PREFIX            = "[Dark Queen of Mordor] "
MESSAGES_ON_SCREEN = 10
MAX_LENGTH         = 100
LEFT_INDENT        = 0.01
TOP_INDENT         = 0.92
FONT_WIDTH         = 12
FONT_HEIGHT        = 28
-- config zone }}}

firsthud = nil

function addMessage(player, new_text, new_color)
    local temp_text
    local temp_color
    local hud
    for id = firsthud, (firsthud+MESSAGES_ON_SCREEN-1) do
        hud = player:hud_get(id)
        if hud.name == "chat" then
            temp_text = hud.text
            temp_color = hud.number
            player:hud_change(id, "number", new_color)
            player:hud_change(id, "text", new_text)
            new_text = temp_text
            new_color = temp_color
        end
    end
end

function sendMessage(player, message, color)
    local splitter
    while message:len() > MAX_LENGTH do
        splitter = string.find (message, " ", MAX_LENGTH)
        if splitter == nil then
            splitter = MAX_LENGTH
        end
        addMessage(player, message:sub(0,splitter), color)
        message = message:sub(splitter+1)
    end
    addMessage(player, message, color)
end

minetest.register_on_joinplayer(function(player)
    minetest.after(2, function(player)
        for i = 1, MESSAGES_ON_SCREEN do
            local hud_id = player:hud_add({
                hud_elem_type = "text",
                text = "",
                position = {x = LEFT_INDENT, y = TOP_INDENT},
                name = "chat",
                scale = {x=500, y=50},
                number = 0xFFFFFF,
                item = 0,
                direction = 0,
                alignment = {x=1, y=0},
                offset = {x=0, y=-i*FONT_HEIGHT}
            })
            if not firsthud then
                firsthud = hud_id
            end
        end
        end, player)
end)

minetest.register_privilege("gm", {
	description = "Gives access to reading all messages in the chat",
	give_to_singleplayer= false,
})

minetest.register_privilege("op", {
	description = "Gives access to typing server news",
	give_to_singleplayer= false,
})

minetest.register_on_chat_message(function(name, message)
    fmt = DEFAULT_FORMAT 
    range = DEFAULT_RANGE
    color = DEFAULT_COLOR
    pl = minetest.get_player_by_name(name)
    pls = minetest.get_connected_players()
    -- formats (see config zone)
    for m, f in pairs(formats) do
        submes = string.match(message, m)
        if submes then
            if not f[4] then  -- if PRIV==nil
                fmt = f[1]
                range = f[2]
                color = f[3]
                break
            elseif minetest.check_player_privs(name, {[f[4]]=true}) then
                fmt = f[1]
                range = f[2]
                color = f[3]
                break
            end
        end
    end

    -- dices
    dice = string.match(message, "d(%d+)")
    if dice=="2" or dice=="3" or dice=="4" or dice=="5" or dice=="6" or dice=="7" or dice=="8" or dice=="9" or dice=="10" or dice=="20" or dice=="50" or dice=="100" then
        fmt = "*** %s rolls dice"..dice.." and the result is %s ***"
        color = DICE_COLOR
        submes = math.random(dice)
    end
    if not submes then
        submes = message
    end

    
    
    if minetest.check_player_privs(name, {["leader"]=true, ["dwarven"]= true,}) then
        name = OPD_PREFIX .. name
    end
    if minetest.check_player_privs(name, {["leader"]=true, ["elven"]= true,}) then
        name = OPE_PREFIX .. name
    end
    if minetest.check_player_privs(name, {["leader"]=true, ["rohirrim"]= true,}) then
        name = OPR_PREFIX .. name
    end
    if minetest.check_player_privs(name, {["leader"]=true, ["gondorian"]= true,}) then
        name = OPG_PREFIX .. name
    end
    if minetest.check_player_privs(name, {["leader"]=true, ["forsaken"]= true,}) then
        name = OPF_PREFIX .. name
    end
    if minetest.check_player_privs(name, {["leader"]=true, ["forsaken"]= true,}) then
        name = OPF_PREFIX .. name
    end
    if minetest.check_player_privs(name, {["leader"]=true, ["mordor"]= true,}) then
        name = OPM_PREFIX .. name
    end
    
    -- GM's prefix
    if minetest.check_player_privs(name, {["gm"]=true,}) then
        name = GM_PREFIX .. name
    end
    -- OP's prefix
    if minetest.check_player_privs(name, {["op"]=true,}) then
        name = OP_PREFIX .. name
    end
    if minetest.check_player_privs(name, {["dwarven"]=true,}) then
        name = D_PREFIX .. name
    end
    if minetest.check_player_privs(name, {["elven"]=true,}) then
        name = E_PREFIX .. name
    end
    if minetest.check_player_privs(name, {["rohirrim"]=true,}) then
        name = R_PREFIX .. name
    end
    if minetest.check_player_privs(name, {["gondorian"]=true,}) then
        name = G_PREFIX .. name
    end
    if minetest.check_player_privs(name, {["forsaken"]=true,}) then
        name = F_PREFIX .. name
    end
    if minetest.check_player_privs(name, {["mordor"]=true,}) then
        name = M_PREFIX .. name
    end

    senderpos = pl:getpos()
    for i = 1, #pls do
        recieverpos = pls[i]:getpos()
        if math.sqrt((senderpos.x-recieverpos.x)^2 + (senderpos.y-recieverpos.y)^2 + (senderpos.z-recieverpos.z)^2) < range then
            sendMessage(pls[i], string.format(fmt, name, submes), color)
        elseif minetest.check_player_privs(pls[i]:get_player_name(), {gm=true}) then
            sendMessage(pls[i], string.format(fmt, name, submes), GMSPY_COLOR)
        end
    end

    return true
end)
