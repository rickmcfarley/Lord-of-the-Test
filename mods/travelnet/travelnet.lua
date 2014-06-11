-- contains the node definition for a general travelnet that can be used by anyone
--   further travelnets can only be installed by the owner or by people with the travelnet_attach priv
--   digging of such a travelnet is limited to the owner and to people with the travelnet_remove priv (useful for admins to clean up)
-- (this can be overrided in config.lua)
-- Autor: Sokomine

detail_level = 20

local spherebox = {}
local detail = detail_level
local sehne
for i = 1, detail-1 do
	sehne = math.sqrt(0.25 - (((i/detail)-0.5)^2))
	spherebox[i]={-sehne, (i/detail)-0.5, -sehne, sehne, (i/detail)+(1/detail)-0.5, sehne}
end

minetest.register_node("travelnet:travelnet", {

    description = "Palantiri",

    drawtype = "nodebox",
    sunlight_propagates = true,
    paramtype = 'light',
    paramtype2 = "facedir",

    selection_box = {
                type = "fixed",
                fixed = { -0.5, -0.5, -0.5, 0.5, 0.5, 0.5 }
    },
	node_box = {
		type = "fixed",
		fixed = spherebox,
	},
    tiles = {"default_obsidian.png"},
    groups = {cracky=1,choppy=1,snappy=1},

    light_source = 10,

    after_place_node  = function(pos, placer, itemstack)
	local meta = minetest.env:get_meta(pos);
        meta:set_string("infotext",       "Palantiri (unconfigured)");
        meta:set_string("palantiri_name",   "");
        meta:set_string("palantiri_network","");
        meta:set_string("owner",          placer:get_player_name() );
        -- request initinal data
        meta:set_string("formspec", 
                            "size[12,10]"..
                            "field[0.3,5.6;6,0.7;palantiri_name;Name of this Palantiri:;]"..
                            "field[0.3,6.6;6,0.7;palantiri_network;Assign to Network:;]"..
                            "field[0.3,7.6;6,0.7;owner_name;(optional) owned by:;]"..
                            "button_exit[6.3,6.2;1.7,0.7;palantiri_set;Store]" );
    end,
    
    on_receive_fields = travelnet.on_receive_fields,
    on_punch          = function(pos, node, puncher)
                          travelnet.update_formspec(pos, puncher:get_player_name())
    end,

    can_dig = function( pos, player )
                          return travelnet.can_dig( pos, player, 'Palantiri' )
    end,

    after_dig_node = function(pos, oldnode, oldmetadata, digger)
			  travelnet.remove_box( pos, oldnode, oldmetadata, digger )
    end,

    -- taken from VanessaEs homedecor fridge
    on_place = function(itemstack, placer, pointed_thing)

       local pos = pointed_thing.above;
       if( minetest.env:get_node({x=pos.x, y=pos.y-1, z=pos.z}).name ~= "default:diamondblock" ) then

          minetest.chat_send_player( placer:get_player_name(), 'Not enough magical aura for Palantiri to be placed' )
          return;
       end
       if( minetest.env:get_node({x=pos.x, y=pos.y-2, z=pos.z}).name ~= "default:diamondblock" ) then

          minetest.chat_send_player( placer:get_player_name(), 'Not enough magical aura for Palantiri to be placed' )
          return;
       end
       if( minetest.env:get_node({x=pos.x, y=pos.y-2, z=pos.z+1}).name ~= "default:diamondblock" ) then

          minetest.chat_send_player( placer:get_player_name(), 'Not enough magical aura for Palantiri to be placed' )
          return;
       end
       if( minetest.env:get_node({x=pos.x+1, y=pos.y-2, z=pos.z}).name ~= "default:diamondblock" ) then

          minetest.chat_send_player( placer:get_player_name(), 'Not enough magical aura for Palantiri to be placed' )
          return;
       end
       if( minetest.env:get_node({x=pos.x-1, y=pos.y-2, z=pos.z}).name ~= "default:diamondblock" ) then

          minetest.chat_send_player( placer:get_player_name(), 'Not enough magical aura for Palantiri to be placed' )
          return;
       end
       if( minetest.env:get_node({x=pos.x, y=pos.y-2, z=pos.z-1}).name ~= "default:diamondblock" ) then

          minetest.chat_send_player( placer:get_player_name(), 'Not enough magical aura for Palantiri to be placed' )
          return;
       end
       return minetest.item_place(itemstack, placer, pointed_thing);
    end,

})