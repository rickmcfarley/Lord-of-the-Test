local news = {}

news.path = minetest.get_modpath("_server_misc_")

function news.formspec(player,article)
	
	if ( article == "" or article == nil ) then
		article = "news.txt"
	else
		article = "news_"..article..".txt"
	end
	
	local newsfile = io.open(news.path.."/texts/"..article,"r")
	
	local formspec = "size[12,10]"
	
	if newsfile ~= nil then
		local newscontent = newsfile:read("*a")
		formspec = formspec.."textarea[.25,.25;12,10;news;;"..newscontent.."]"
	else		
		formspec = formspec.."label[.25,.25;Article does not exist]"
	end		
	formspec = formspec.."button_exit[.25,9;2,1;exit;Close"
	if ( newsfile ~= nil ) then
		newsfile:close()
	end
	return formspec
end

minetest.register_chatcommand("news",{
	params = "<article>",
	description="Shows the server news",
	func = function (name,params)
		local player = minetest.get_player_by_name(name)
		minetest.show_formspec(name,"news",news.formspec(player,params))	
	end,
})