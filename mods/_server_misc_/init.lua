---------------------
-- Server Misc Mod --
---------------------

-- Welcome Page
dofile(minetest.get_modpath("_server_misc_").."/welcome.lua")

-- Aliases (Not Needed)
--dofile(minetest.get_modpath("_server_misc_").."/aliases.lua")

-- Chatlog
dofile(minetest.get_modpath("_server_misc_").."/channels.lua")

-- Username filter
dofile(minetest.get_modpath("_server_misc_").."/username_filter.lua")

--WhoIsOn
dofile(minetest.get_modpath("_server_misc_").."/whoison.lua")

--chatplus
dofile(minetest.get_modpath("_server_misc_").."/chatplus.lua")

dofile(minetest.get_modpath("_server_misc_").."/privs.lua")

--commands
dofile(minetest.get_modpath("_server_misc_").."/commands.lua")
