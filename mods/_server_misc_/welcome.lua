local welcome = {}

welcome.path = minetest.get_modpath("_server_misc_")

minetest.register_privilege("access", {
	description = "Provides access to various restricted stuff, access to admin / moderator only wiki pages, able to edit locked signs, able to use server news, able to edit wiki, can use basic worldedit commands (e.g, /pos1 , /pos2, /fixlight, /save, /load, /save, /mtschemcreate, /mtschemplace), able to protect huge amounts of areas, able to view player notes",
	give_to_singleplayer = false,
})

function welcome.formspec(player,article)
	
	if ( article == "" or article == nil ) then
		article = "welcome.txt"
	end
	
	local welcomefile = io.open(welcome.path.."/texts/"..article,"r")
	
	local formspec = "size[12,10]"
	
	if welcomefile ~= nil then
		local welcomecontent = welcomefile:read("*a")
		formspec = formspec.."textarea[.25,.25;12,8.5;welcome;;"..welcomecontent.."]"
	else		
		formspec = formspec.."label[.25,.25;Article does not exist]"
	end
     formspec = formspec.."button[.25,8;2,1;welcome_wiki;Welcome]"
     formspec = formspec.."button[2.25,8;2,1;rules_wiki;Rules]"
     formspec = formspec.."button[4.25,8;2,1;news_wiki;Latest News]"
     formspec = formspec.."button[6.25,8;2,1;admin_section;Admins Only]"
	formspec = formspec.."button_exit[.25,9;2,1;exit;Close]"
	if ( welcomefile ~= nil ) then
		welcomefile:close()
	end
	return formspec
end

minetest.register_on_player_receive_fields(function(player,formname,fields)
     local plname = player:get_player_name()
     if fields.admin_section and minetest.check_player_privs(player:get_player_name(),{access=true})  then
          wikilib.show_wiki_page(plname, "Admin_120413")
     end
	if fields.welcome_wiki then
	     wikilib.show_wiki_page(plname, "Welcome")
	end
     if fields.rules_wiki then
	     wikilib.show_wiki_page(plname, "Rules")
	end
     if fields.news_wiki then
	     wikilib.show_wiki_page(plname, "Latest_News")
	end
end)

function welcome.show_formspec(player)
	local name = player:get_player_name()
	minetest.show_formspec(name,"welcome",welcome.formspec(player))
	minetest.log('action','Showing formspec to '..name)
end


minetest.register_chatcommand("welcome",{
	params = "<article>",
	description="Shows the welcome page",
	func = function (name,params)
		local player = minetest.get_player_by_name(name)
		minetest.show_formspec(name,"welcome",welcome.formspec(player,params))	
	end,
})

minetest.register_on_joinplayer(function (player)
     minetest.after(5,welcome.show_formspec,player)
end)