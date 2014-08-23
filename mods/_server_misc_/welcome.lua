local welcome = {}

welcome.path = minetest.get_modpath("_server_misc_")

function welcome.formspec(player,article)
	
	if ( article == "" or article == nil ) then
		article = "welcome.txt"
	end
	
	local welcomefile = io.open(welcome.path.."/texts/"..article,"r")
	
	local formspec = "size[12,10]"
	
	if welcomefile ~= nil then
		local welcomecontent = welcomefile:read("*a")
		formspec = formspec.."textarea[.25,.25;12,10;welcome;;"..welcomecontent.."]"
	else		
		formspec = formspec.."label[.25,.25;Article does not exist]"
	end		
	formspec = formspec.."button_exit[.25,9;2,1;exit;Close"
	if ( welcomefile ~= nil ) then
		welcomefile:close()
	end
	return formspec
end

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
