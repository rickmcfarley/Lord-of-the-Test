
travelnet.MAX_STATIONS_PER_NETWORK = 24;

-- set this to true if you want a simulated beam effect
travelnet.travelnet_effect_enabled = false;
-- set this to true if you want a sound to be played when the travelnet is used
travelnet.travelnet_sound_enabled  = false;

travelnet.travelnet_enabled        = true;

travelnet.allow_attach = function( player_name, owner_name, network_name )
   return false;
end


-- if this returns true, a player named player_name can remove a travelnet station
-- from network_name (owned by owner_name) even though he is neither the owner nor
-- has the travelnet_remove priv
travelnet.allow_dig    = function( player_name, owner_name, network_name )
   return false;
end


-- if this function returns false, then player player_name will not be allowed to use
-- the travelnet station_name_start on networ network_name owned by owner_name to travel to
-- the station station_name_target on the same network;
-- if this function returns true, the player will be transfered to the target station;
-- you can use this code to i.e. charge the player money for the transfer or to limit
-- usage of stations to players in the same fraction on PvP servers
travelnet.allow_travel = function( player_name, owner_name, network_name, station_name_start, station_name_target )

   --minetest.chat_send_player( player_name, "Player "..tostring( player_name ).." tries to use station "..tostring( station_name_start )..
   --    " on network "..tostring( network_name ).." owned by "..tostring( owner_name ).." in order to travel to "..
   --    tostring( station_name_target )..".");

   return true;
end
