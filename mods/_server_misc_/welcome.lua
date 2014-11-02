local welcome = {}

welcome.path = minetest.get_modpath("_server_misc_")

minetest.register_privilege("pack1", {
	description = "",
	give_to_singleplayer = false,
})

minetest.register_privilege("pack2", {
	description = "",
	give_to_singleplayer = false,
})

minetest.register_privilege("pack3", {
	description = "",
	give_to_singleplayer = false,
})

minetest.register_privilege("pack4", {
	description = "",
	give_to_singleplayer = false,
})

minetest.register_privilege("pack5", {
	description = "",
	give_to_singleplayer = false,
})

minetest.register_privilege("pack6", {
	description = "",
	give_to_singleplayer = false,
})

minetest.register_privilege("pack7", {
	description = "",
	give_to_singleplayer = false,
})

minetest.register_privilege("pack8", {
	description = "",
	give_to_singleplayer = false,
})

minetest.register_privilege("access", {
	description = "Provides access to various restricted stuff, access to admin / moderator only wiki pages, able to edit locked signs, able to use server news, able to protect huge amounts of areas, able to view player notes, able to use //pos1 and //pos2",
	give_to_singleplayer = false,
})

minetest.register_craftitem("_server_misc_:help", {
	description = "Help (New Players come here!)",
	inventory_image = "help.png",
     groups = {not_in_creative_inventory=1},
})

minetest.register_craftitem("_server_misc_:rules", {
	description = "List of Rules",
	inventory_image = "rules.png",
     groups = {not_in_creative_inventory=1},
})

minetest.register_craftitem("_server_misc_:gift", {
	description = "Redeem your gifts here!",
	inventory_image = "gift.png",
     groups = {not_in_creative_inventory=1},
})

minetest.register_craftitem("_server_misc_:admin", {
	description = "Admin's Area",
	inventory_image = "admin.png",
     groups = {not_in_creative_inventory=1},
})

minetest.register_craftitem("_server_misc_:news", {
	description = "Server News",
	inventory_image = "news.png",
     groups = {not_in_creative_inventory=1},
})

minetest.register_craftitem("_server_misc_:kingdom", {
	description = "Kingdom Portal",
	inventory_image = "castle.png",
     groups = {not_in_creative_inventory=1},
})

function welcome.formspec(player,article)
	if ( article == "" or article == nil ) then
		article = "welcome.txt"
	end
	local welcomefile = io.open(welcome.path.."/texts/"..article,"r")
	local formspec = "size[12,10]"
	if welcomefile ~= nil then
		local welcomecontent = welcomefile:read("*a")
		formspec = formspec.."textarea[3,.25;9,8.5;welcome;;"..welcomecontent.."]"
	else		
		formspec = formspec.."label[.25,.25;Article does not exist]"
	end
     formspec = formspec.."item_image_button[0.10,1;2,1;_server_misc_:help;help_wiki;Help]"
     formspec = formspec.."item_image_button[0.10,2;2,1;_server_misc_:rules;rules_wiki;Rules]"
     formspec = formspec.."item_image_button[0.10,3;2,1;_server_misc_:news;news_wiki;News]"
     formspec = formspec.."item_image_button[0.10,4;2,1;_server_misc_:gift;gift_wiki;Gift Codes]"
     formspec = formspec.."item_image_button[0.10,5;2,1;_server_misc_:kingdom;kingdom_wiki;Kingdom Portal]"
     formspec = formspec.."item_image_button[0.10,6;2,1;_server_misc_:admin;admin_wiki;Admin's Portal]"
	formspec = formspec.."button_exit[.25,9;2,1;exit;Close]"
	if ( welcomefile ~= nil ) then
		welcomefile:close()
	end
	return formspec
end

minetest.register_craftitem("_server_misc_:info_pack1", {
	description = "The Limited Halloween Pack contains some Jack 'O' Melon, a melon scarecrow, melon seeds and a large supply of melon pieces! This package will only be available to those who join the server during the week after Halloween.",
	inventory_image = "help.png",
     groups = {not_in_creative_inventory=1},
})

minetest.register_craftitem("_server_misc_:info_pack2", {
	description = "The Limited Server Opening Package contains a master book of crafts, a complete set of steel armour and a few weak random potions! This package will only be available to those who join the server during a month after this server opens.",
	inventory_image = "help.png",
     groups = {not_in_creative_inventory=1},
})

minetest.register_craftitem("_server_misc_:info_pack4", {
	description = "This Server Co-Rulers Package is for players having high position in the kingdom! Get wide variety of weak potions, a full set of gold armour, random food supply, two mithril tools and a large bag with this!",
	inventory_image = "help.png",
     groups = {not_in_creative_inventory=1},
})

minetest.register_craftitem("_server_misc_:info_pack5", {
	description = "This Server Rulers Package is only available to rulers of each kingdom. This Package consists of 4 random mithril tools, a full set of mithril armour, a large variety of weak potions and a large bag!",
	inventory_image = "help.png",
     groups = {not_in_creative_inventory=1},
})

minetest.register_craftitem("_server_misc_:info_pack6", {
	description = "This LOTT Contributor Package is only for contributors of LOTT. This Package consists of a large variety of weak potions and some galvorn blocks. Contribute to LOTT via github to get this package now!",
	inventory_image = "help.png",
     groups = {not_in_creative_inventory=1},
})

minetest.register_craftitem("_server_misc_:info_pack7", {
	description = "This LOTT Developers Package is only for Developers of LOTT, this package consists of 10 mithril blocks with a stack of blue torches!",
	inventory_image = "help.png",
     groups = {not_in_creative_inventory=1},
})

minetest.register_craftitem("_server_misc_:info_pack8", {
	description = "This Server Moderator/ Admin Package is only available to admins/ moderators of this server. This package consists of 24 mithril ingots and a random magical ring!",
	inventory_image = "help.png",
     groups = {not_in_creative_inventory=1},
})

minetest.register_craftitem("_server_misc_:info_pack3", {
	description = "This Server Supporter Package is only available to people who visited the server while it is at its display form. Get a random full set of clothing, a steel hoe and some random variety of seeds with this!",
	inventory_image = "help.png",
     groups = {not_in_creative_inventory=1},
})



local get_formspec = function(player,page)
	if page=="gifts" then
		return "size[10,10]"
               .."label[0,0;Make sure your inventory have enough space before claiming the]"
               .."label[0,0.3;packages below, best to leave three rows of your inventory empty.]"
               .."label[0,0.6;The admins/ moderators of the server will not be liable for any item unclaimed.]"
               .."label[0,0.9;Click the buttons below to claim your package(s)!]"
			.."button[0,2;7,0.5;pack1;Limited Halloween Pack]"
               .."item_image_button[7,2;1,0.8;_server_misc_:info_pack1;_1_;]"
			.."button[0,3;7,0.5;pack2;Limited Server Opening Package]"
               .."item_image_button[7,3;1,0.8;_server_misc_:info_pack2;_2_;]"
			.."button[0,4;7,0.5;pack3;Server Supporter Package]"
               .."item_image_button[7,4;1,0.8;_server_misc_:info_pack3;_3_;]"
			.."button[0,5;7,0.5;pack4;Server Co-Rulers Package]"
               .."item_image_button[7,5;1,0.8;_server_misc_:info_pack4;_4_;]"
               .."button[0,6;7,0.5;pack5;Server Rulers Package]"
               .."item_image_button[7,6;1,0.8;_server_misc_:info_pack5;_5_;]"
               .."button[0,7;7,0.5;pack6;LOTT Contributors Package]"
               .."item_image_button[7,7;1,0.8;_server_misc_:info_pack6;_6_;]"
               .."button[0,8;7,0.5;pack7;LOTT Developers Package]"
               .."item_image_button[7,8;1,0.8;_server_misc_:info_pack7;_7_;]"
               .."button[0,9;7,0.5;pack8;Server Moderator/ Admin Package]"
               .."item_image_button[7,9;1,0.8;_server_misc_:info_pack8;_8_;]"
	end
end

minetest.register_on_player_receive_fields(function(player,formname,fields)
     local plname = player:get_player_name()
     if fields.admin_wiki and minetest.check_player_privs(player:get_player_name(),{access=true})  then
          wikilib.show_wiki_page(plname, "Admin_120413")
     end
     if fields.admin_wiki and not minetest.check_player_privs(player:get_player_name(),{access=true})  then
          minetest.chat_send_player(plname, "You are not a moderator/admin! The admin's portal is only available for moderators/ admins!")
     end
	if fields.help_wiki then
	     wikilib.show_wiki_page(plname, "Help")
	end
     if fields.rules_wiki then
	     wikilib.show_wiki_page(plname, "Rules")
	end
     if fields.news_wiki then
	     wikilib.show_wiki_page(plname, "Latest_News")
	end
     if fields.gift_wiki then
	     inventory_plus.set_inventory_formspec(player, get_formspec(player,"gifts"))
	end
     if fields.kingdom_wiki then
	     wikilib.show_wiki_page(plname, "Kingdom Portal")
	end
     if fields.pack1 and minetest.check_player_privs(plname, {pack1=true}) then
          player:get_inventory():add_item("main", "lottspecial:jackomelon 10")
          player:get_inventory():add_item("main", "lottspecial:scarecrow 1")
          player:get_inventory():add_item("main", "lottfarming:melon_seed 20")
          player:get_inventory():add_item("main", "lottfarming:melon 99")
          local privs = minetest.get_player_privs(plname)
	     privs.pack1 = nil
		minetest.set_player_privs(plname, privs)
          minetest.chat_send_player(plname, "You have successfully gotten your Halloween pack!")
	end
     if fields.pack1 and not minetest.check_player_privs(plname, {pack1=true}) then
		minetest.chat_send_player(plname, "You already claimed your Halloween Pack!/ You are not allowed to claim this pack!")
     end
     if fields.pack2 and minetest.check_player_privs(plname, {pack2=true}) then
          player:get_inventory():add_item("main", "lottinventory:master_book")
          player:get_inventory():add_item("main", "lottarmor:helmet_steel")
          player:get_inventory():add_item("main", "lottarmor:chestplate_steel")
          player:get_inventory():add_item("main", "lottarmor:leggings_steel")
          player:get_inventory():add_item("main", "lottarmor:boots_steel")
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottpotion:athelasbrew_power1 2")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottpotion:entdraught_power1 2")
          end
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottpotion:limpe_power1 2")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottpotion:miruvor_power1 2")
          end
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottpotion:orcdraught_power1 2")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottpotion:spiderpoison_power1 2")
          end
          local privs = minetest.get_player_privs(plname)
	     privs.pack2 = nil
		minetest.set_player_privs(plname, privs)
          minetest.chat_send_player(plname, "You have successfully gotten your Server Opening Package!")
	end
     if fields.pack2 and not minetest.check_player_privs(plname, {pack2=true}) then
		minetest.chat_send_player(plname, "You already claimed your Server Opening Package!/ You are not allowed to claim this pack!")
     end
     if fields.pack3 and minetest.check_player_privs(plname, {pack3=true}) then
          player:get_inventory():add_item("main", "farming:hoe_steel")
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "farming:seed_cotton 5")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "farming:seed_wheat 5")
          end
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottfarming:athelas_seed 5")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottfarming:berries_seed 5")
          end
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottfarming:blue_mushroom_spore 5")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottfarming:brown_mushroom_spore 5")
          end
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottfarming:cabbage_seed 5")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottfarming:corn_seed 5")
          end
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottfarming:green_mushroom_spore 5")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottfarming:melon_seed 5")
          end
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottfarming:pipeweed_seed 5")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottfarming:potato_seed 5")
          end
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottfarming:red_mushroom_spore 5")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottfarming:turnips_seed 5")
          end
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottfarming:tomatoes_seed 5")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottfarming:barley_seed 5")
          end
          if math.random(1, 11) == 1 then
               player:get_inventory():add_item("main", "lottclothes:cap_chetwood")
               player:get_inventory():add_item("main", "lottclothes:jacket_chetwood")
               player:get_inventory():add_item("main", "lottclothes:pants_chetwood")
               player:get_inventory():add_item("main", "lottclothes:boots_chetwood")
          elseif math.random(1, 11) == 2 then
               player:get_inventory():add_item("main", "lottclothes:cap_midgewater")
               player:get_inventory():add_item("main", "lottclothes:jacket_midgewater")
               player:get_inventory():add_item("main", "lottclothes:pants_midgewater")
               player:get_inventory():add_item("main", "lottclothes:boots_midgewater")
          elseif math.random(1, 11) == 3 then
               player:get_inventory():add_item("main", "lottclothes:hood_ettenmoor")
               player:get_inventory():add_item("main", "lottclothes:robe_ettenmoor")
               player:get_inventory():add_item("main", "lottclothes:trousers_ettenmoor")
          elseif math.random(1, 11) == 4 then
               player:get_inventory():add_item("main", "lottclothes:shirt_brandybuck")
               player:get_inventory():add_item("main", "lottclothes:trousers_brandybuck")
               player:get_inventory():add_item("main", "lottclothes:shoes_brandybuck")
          elseif math.random(1, 11) == 5 then
               player:get_inventory():add_item("main", "lottclothes:shirt_hobbit_blue")
               player:get_inventory():add_item("main", "lottclothes:shorts_hobbit_blue")
               player:get_inventory():add_item("main", "lottclothes:shoes_hobbit_blue")
          elseif math.random(1, 11) == 6 then
               player:get_inventory():add_item("main", "lottclothes:shirt_hobbit_brown")
               player:get_inventory():add_item("main", "lottclothes:shorts_hobbit_brown")
               player:get_inventory():add_item("main", "lottclothes:shoes_hobbit_brown")
          elseif math.random(1, 11) == 7 then
               player:get_inventory():add_item("main", "lottclothes:shirt_hobbit_green")
               player:get_inventory():add_item("main", "lottclothes:shorts_hobbit_green")
               player:get_inventory():add_item("main", "lottclothes:shoes_hobbit_green")
          elseif math.random(1, 11) == 8 then
               player:get_inventory():add_item("main", "lottclothes:shirt_hobbit_grey")
               player:get_inventory():add_item("main", "lottclothes:shorts_hobbit_grey")
               player:get_inventory():add_item("main", "lottclothes:shoes_hobbit_grey")
          elseif math.random(1, 11) == 9 then
               player:get_inventory():add_item("main", "lottclothes:shirt_hobbit_pink")
               player:get_inventory():add_item("main", "lottclothes:shorts_hobbit_pink")
               player:get_inventory():add_item("main", "lottclothes:shoes_hobbit_pink")
          elseif math.random(1, 11) == 10 then
               player:get_inventory():add_item("main", "lottclothes:shirt_hobbit_red")
               player:get_inventory():add_item("main", "lottclothes:shorts_hobbit_red")
               player:get_inventory():add_item("main", "lottclothes:shoes_hobbit_red")
          elseif math.random(1, 11) == 11 then
               player:get_inventory():add_item("main", "lottclothes:shirt_hobbit_white")
               player:get_inventory():add_item("main", "lottclothes:shorts_hobbit_white")
               player:get_inventory():add_item("main", "lottclothes:shoes_hobbit_white")
          else
               player:get_inventory():add_item("main", "lottclothes:shirt_hobbit_yellow")
               player:get_inventory():add_item("main", "lottclothes:shorts_hobbit_yellow")
               player:get_inventory():add_item("main", "lottclothes:shoes_hobbit_yellow")
          end
          local privs = minetest.get_player_privs(plname)
	     privs.pack3 = nil
		minetest.set_player_privs(plname, privs)
          minetest.chat_send_player(plname, "You have successfully gotten your Server Supporter Package!")
	end
     if fields.pack3 and not minetest.check_player_privs(plname, {pack3=true}) then
		minetest.chat_send_player(plname, "You already claimed your Server Supporter Package!/ You are not a server supporter and hence, unable to get this pack!")
     end
     if fields.pack4 and minetest.check_player_privs(plname, {pack4=true}) then
          player:get_inventory():add_item("main", "lottarmor:helmet_gold")
          player:get_inventory():add_item("main", "lottarmor:chestplate_gold")
          player:get_inventory():add_item("main", "lottarmor:leggings_gold")
          player:get_inventory():add_item("main", "lottarmor:boots_gold")
          player:get_inventory():add_item("main", "lottinventory:large")
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottpotion:athelasbrew_power1 5")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottpotion:entdraught_power1 5")
          end
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottpotion:limpe_power1 5")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottpotion:miruvor_power1 5")
          end
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottpotion:orcdraught_power1 5")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottpotion:spiderpoison_power1 5")
          end
          if math.random(1, 7) == 1 then
               player:get_inventory():add_item("main", "lottores:mithrilpick")
               player:get_inventory():add_item("main", "lottores:mithrilshovel")
          elseif math.random(1, 7) == 2 then
               player:get_inventory():add_item("main", "lottores:mithrilpick")
               player:get_inventory():add_item("main", "lottores:mithrilsword")
          elseif math.random(1, 7) == 3 then
               player:get_inventory():add_item("main", "lottores:mithrilpick")
               player:get_inventory():add_item("main", "lottores:mithrilaxe")
          elseif math.random(1, 7) == 4 then
               player:get_inventory():add_item("main", "lottores:mithrilpick")
               player:get_inventory():add_item("main", "lottthrowing:crossbow_mithril")
          elseif math.random(1, 7) == 5 then
               player:get_inventory():add_item("main", "lottores:mithrilpick")
               player:get_inventory():add_item("main", "lottweapons:mithril_battleaxe")
          elseif math.random(1, 7) == 6 then
               player:get_inventory():add_item("main", "lottores:mithrilpick")
               player:get_inventory():add_item("main", "lottweapons:mithril_dagger")
          elseif math.random(1, 7) == 7 then
               player:get_inventory():add_item("main", "lottores:mithrilpick")
               player:get_inventory():add_item("main", "lottweapons:mithril_spear")
          else
               player:get_inventory():add_item("main", "lottores:mithrilpick")
               player:get_inventory():add_item("main", "lottweapons:mithril_warhammer")
          end
          local privs = minetest.get_player_privs(plname)
	     privs.pack4 = nil
		minetest.set_player_privs(plname, privs)
          minetest.chat_send_player(plname, "You have successfully gotten your Server Co-Ruler Package!")
	end
     if fields.pack4 and not minetest.check_player_privs(plname, {pack4=true}) then
		minetest.chat_send_player(plname, "You already claimed your Server Co-Ruler Package!/ You are not a co-ruler in the server and hence, unable to get this pack!")
     end
     if fields.pack5 and minetest.check_player_privs(plname, {pack5=true}) then
          player:get_inventory():add_item("main", "lottarmor:helmet_mithril")
          player:get_inventory():add_item("main", "lottarmor:chestplate_mithril")
          player:get_inventory():add_item("main", "lottarmor:leggings_mithril")
          player:get_inventory():add_item("main", "lottarmor:boots_mithril")
          player:get_inventory():add_item("main", "lottinventory:large")
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottpotion:athelasbrew_power1 10")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottpotion:entdraught_power1 10")
          end
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottpotion:limpe_power1 10")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottpotion:miruvor_power1 10")
          end
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottpotion:orcdraught_power1 10")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottpotion:spiderpoison_power1 10")
          end
          if math.random(1, 7) == 1 then
               player:get_inventory():add_item("main", "lottores:mithrilpick")
               player:get_inventory():add_item("main", "lottores:mithrilshovel")
               player:get_inventory():add_item("main", "lottores:mithrilsword")
               player:get_inventory():add_item("main", "lottores:mithrilaxe")
          elseif math.random(1, 7) == 2 then
               player:get_inventory():add_item("main", "lottores:mithrilpick")
               player:get_inventory():add_item("main", "lottores:mithrilsword")
               player:get_inventory():add_item("main", "lottthrowing:crossbow_mithril")
               player:get_inventory():add_item("main", "lottores:mithrilaxe")
          elseif math.random(1, 7) == 3 then
               player:get_inventory():add_item("main", "lottores:mithrilpick")
               player:get_inventory():add_item("main", "lottores:mithrilaxe")
               player:get_inventory():add_item("main", "lottweapons:mithril_battleaxe")
               player:get_inventory():add_item("main", "lottweapons:mithril_dagger")
          elseif math.random(1, 7) == 4 then
               player:get_inventory():add_item("main", "lottores:mithrilpick")
               player:get_inventory():add_item("main", "lottthrowing:crossbow_mithril")
               player:get_inventory():add_item("main", "lottores:mithrilaxe")
          elseif math.random(1, 7) == 5 then
               player:get_inventory():add_item("main", "lottores:mithrilpick")
               player:get_inventory():add_item("main", "lottweapons:mithril_battleaxe")
               player:get_inventory():add_item("main", "lottthrowing:crossbow_mithril")
               player:get_inventory():add_item("main", "lottores:mithrilshovel")
               player:get_inventory():add_item("main", "lottores:mithrilaxe")
          elseif math.random(1, 7) == 6 then
               player:get_inventory():add_item("main", "lottores:mithrilpick")
               player:get_inventory():add_item("main", "lottweapons:mithril_dagger")
               player:get_inventory():add_item("main", "lottweapons:mithril_spear")
               player:get_inventory():add_item("main", "lottores:mithrilaxe")
          elseif math.random(1, 7) == 7 then
               player:get_inventory():add_item("main", "lottores:mithrilpick")
               player:get_inventory():add_item("main", "lottweapons:mithril_spear")
               player:get_inventory():add_item("main", "lottores:mithrilshovel")
               player:get_inventory():add_item("main", "lottweapons:mithril_warhammer")
          else
               player:get_inventory():add_item("main", "lottores:mithrilpick")
               player:get_inventory():add_item("main", "lottweapons:mithril_warhammer")
               player:get_inventory():add_item("main", "lottweapons:mithril_dagger")
               player:get_inventory():add_item("main", "lottthrowing:crossbow_mithril")
          end
          local privs = minetest.get_player_privs(plname)
	     privs.pack5 = nil
		minetest.set_player_privs(plname, privs)
          minetest.chat_send_player(plname, "You have successfully gotten your Server Ruler Package!")
	end
     if fields.pack5 and not minetest.check_player_privs(plname, {pack5=true}) then
		minetest.chat_send_player(plname, "You already claimed your Server Ruler Package!/ You are not a ruler in the server and hence, unable to get this pack!")
     end
     if fields.pack6 and minetest.check_player_privs(plname, {pack6=true}) then
          player:get_inventory():add_item("main", "lottores:galvorn_block "..math.random(10, 50))
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottpotion:athelasbrew_power1 10")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottpotion:entdraught_power1 10")
          end
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottpotion:limpe_power1 10")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottpotion:miruvor_power1 10")
          end
          if math.random(1, 2) == 1 then
               player:get_inventory():add_item("main", "lottpotion:orcdraught_power1 10")
          end
          if math.random(1, 2) == 2 then
               player:get_inventory():add_item("main", "lottpotion:spiderpoison_power1 10")
          end
          local privs = minetest.get_player_privs(plname)
	     privs.pack6 = nil
		minetest.set_player_privs(plname, privs)
          minetest.chat_send_player(plname, "You have successfully gotten your LOTT Contributors' Package!")
	end
     if fields.pack6 and not minetest.check_player_privs(plname, {pack6=true}) then
		minetest.chat_send_player(plname, "You already claimed your LOTT Contributors' Package!/ You are not a contributor of LOTT game, contribute via LOTT Github Repository!")
     end
     if fields.pack7 and minetest.check_player_privs(plname, {pack7=true}) then
          player:get_inventory():add_item("main", "lottores:mithril_block 10")
          player:get_inventory():add_item("main", "lottother:blue_torch 99")
          local privs = minetest.get_player_privs(plname)
	     privs.pack7 = nil
		minetest.set_player_privs(plname, privs)
          minetest.chat_send_player(plname, "You have successfully gotten your LOTT Developers' Package!")
	end
     if fields.pack7 and not minetest.check_player_privs(plname, {pack7=true}) then
		minetest.chat_send_player(plname, "You already claimed your LOTT Developers' Package!/ You are not a LOTT Developer, contact fishyWET/ Amaz for further enquires if you have any skills in minetest modding coding and wish to help!")
     end
     if fields.pack8 and minetest.check_player_privs(plname, {pack8=true}) then
          player:get_inventory():add_item("main", "lottores:mithril_ingot 24")
          if math.random(1, 3) == 1 then
               player:get_inventory():add_item("main", "lottother:dwarf_ring")
          elseif math.random(1, 3) == 2 then
               player:get_inventory():add_item("main", "lottother:narya")
          elseif math.random(1, 3) == 3 then
               player:get_inventory():add_item("main", "lottother:vilya")
          else
               player:get_inventory():add_item("main", "lottother:nenya")
          end
          local privs = minetest.get_player_privs(plname)
	     privs.pack8 = nil
		minetest.set_player_privs(plname, privs)
          minetest.chat_send_player(plname, "You have successfully gotten your Server Moderator/ Admin Package!")
	end
     if fields.pack8 and not minetest.check_player_privs(plname, {pack8=true}) then
		minetest.chat_send_player(plname, "You already claimed your Moderator/ Admin Package!/ You are not a moderator/ admin of this server!")
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