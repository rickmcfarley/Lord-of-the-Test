local economy = {}

economy.path = minetest.get_worldpath()

function economy.formspec(player,article)
	
	if ( article == "" or article == nil ) then
		article = "economy.txt"
	else
		article = "economy_"..article..".txt"
	end
	
	local economyfile = io.open(economy.path.."/"..article,"r")
	
	local formspec = "size[12,10]"
	
	if economyfile ~= nil then
		local economycontent = economyfile:read("*a")
		formspec = formspec.."textarea[.25,.25;12,10;economy;;"..economycontent.."]"
	else		
		formspec = formspec.."label[.25,.25;Article does not exist]"
	end		
	formspec = formspec.."button_exit[.25,9;2,1;exit;Close"
	if ( economyfile ~= nil ) then
		economyfile:close()
	end
	return formspec
end

minetest.register_chatcommand("economy",{
	params = "<article>",
	description="Shows the server economy",
	func = function (name,params)
		local player = minetest.get_player_by_name(name)
		minetest.show_formspec(name,"economy",economy.formspec(player,params))	
	end,
})
