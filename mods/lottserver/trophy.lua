-- Bronze

minetest.register_node("lottserver:dwarf_trophy_bronze", {
  description = "Dwarven Bronze Trophy",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld 50'} },
			{ items = {'lottserver:dwarf_trophy_bronze_display'} },
		}
   },
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Dwarven Kingdom Bronze Trophy")
   end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_on_punchnode(function(pos, node, puncher, pointed_thing)
	if node.name == "lottserver:dwarf_trophy_bronze" then
		local puncher_name = puncher:get_player_name()
		minetest.chat_send_all("Hey!! ".. puncher_name .." is hitting a Dwarven Bronze Trophy. Members of the Dwarven Kingdom, defend your Bronze Trophy!")
	end 
end)

minetest.register_node("lottserver:elf_trophy_bronze", {
  description = "Elven Bronze Trophy",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld 50'} },
			{ items = {'lottserver:elf_trophy_bronze_display'} },
		}
   },
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Elven Kingdom Bronze Trophy")
  end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_on_punchnode(function(pos, node, puncher, pointed_thing)
	if node.name == "lottserver:elf_trophy_bronze" then
		local puncher_name = puncher:get_player_name()
		minetest.chat_send_all("Hey!! ".. puncher_name .." is hitting a Elven Bronze Trophy. Members of the Elven Kingdom, defend your Bronze Trophy!")
	end 
end)

minetest.register_node("lottserver:rohan_trophy_bronze", {
  description = "Rohirrim Bronze Trophy",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld 50'} },
			{ items = {'lottserver:rohan_trophy_bronze_display'} },
		}
   },
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Rohan Kingdom Bronze Trophy")
  end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_on_punchnode(function(pos, node, puncher, pointed_thing)
	if node.name == "lottserver:rohan_trophy_bronze" then
		local puncher_name = puncher:get_player_name()
		minetest.chat_send_all("Hey!! ".. puncher_name .." is hitting a Rohirrim Bronze Trophy. Members of the Rohan Kingdom, defend your Bronze Trophy!")
	end 
end)

minetest.register_node("lottserver:gondor_trophy_bronze", {
  description = "Gondorian Bronze Trophy",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld 50'} },
			{ items = {'lottserver:gondor_trophy_bronze_display'} },
		}
   },
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Gondor Kingdom Bronze Trophy")
  end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_on_punchnode(function(pos, node, puncher, pointed_thing)
	if node.name == "lottserver:gondor_trophy_bronze" then
		local puncher_name = puncher:get_player_name()
		minetest.chat_send_all("Hey!! ".. puncher_name .." is hitting a Gondorian Bronze Trophy. Members of the Gondor Kingdom, defend your Bronze Trophy!")
	end 
end)

-- Silver

minetest.register_node("lottserver:dwarf_trophy_silver", {
  description = "Dwarven Silver Trophy",
  tiles = {"lottserver_silver.png"},
  groups = {core_structure=2},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld 200'} },
			{ items = {'lottserver:dwarf_trophy_silver_display'} },
		}
   },
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Dwarven Kingdom Silver Trophy")
   end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_on_punchnode(function(pos, node, puncher, pointed_thing)
	if node.name == "lottserver:dwarf_trophy_silver" then
		local puncher_name = puncher:get_player_name()
		minetest.chat_send_all("Hey!! ".. puncher_name .." is hitting a Dwarven Silver Trophy. Members of the Dwarven Kingdom, defend your Silver Trophy!")
	end 
end)

minetest.register_node("lottserver:elf_trophy_silver", {
  description = "Elven Silver Trophy",
  tiles = {"lottserver_silver.png"},
  groups = {core_structure=2},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld 200'} },
			{ items = {'lottserver:elf_trophy_silver_display'} },
		}
   },
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Elven Kingdom Silver Trophy")
  end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_on_punchnode(function(pos, node, puncher, pointed_thing)
	if node.name == "lottserver:elf_trophy_silver" then
		local puncher_name = puncher:get_player_name()
		minetest.chat_send_all("Hey!! ".. puncher_name .." is hitting a Elven Silver Trophy. Members of the Elven Kingdom, defend your Silver Trophy!")
	end 
end)

minetest.register_node("lottserver:rohan_trophy_silver", {
  description = "Rohirrim Silver Trophy",
  tiles = {"lottserver_silver.png"},
  groups = {core_structure=2},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld 200'} },
			{ items = {'lottserver:rohan_trophy_silver_display'} },
		}
   },
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Rohan Kingdom Silver Trophy")
  end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_on_punchnode(function(pos, node, puncher, pointed_thing)
	if node.name == "lottserver:rohan_trophy_silver" then
		local puncher_name = puncher:get_player_name()
		minetest.chat_send_all("Hey!! ".. puncher_name .." is hitting a Rohirrim Silver Trophy. Members of the Rohan Kingdom, defend your Silver Trophy!")
	end 
end)

minetest.register_node("lottserver:gondor_trophy_silver", {
  description = "Gondorian Silver Trophy",
  tiles = {"lottserver_silver.png"},
  groups = {core_structure=2},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld 200'} },
			{ items = {'lottserver:gondor_trophy_silver_display'} },
		}
   },
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Gondor Kingdom Silver Trophy")
  end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_on_punchnode(function(pos, node, puncher, pointed_thing)
	if node.name == "lottserver:gondor_trophy_silver" then
		local puncher_name = puncher:get_player_name()
		minetest.chat_send_all("Hey!! ".. puncher_name .." is hitting a Gondorian Silver Trophy. Members of the Gondor Kingdom, defend your Silver Trophy!")
	end 
end)

-- Gold

minetest.register_node("lottserver:dwarf_trophy_gold", {
  description = "Dwarven Gold Trophy",
  tiles = {"lottserver_gold.png"},
  groups = {core_structure=3},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld 500'} },
			{ items = {'lottserver:dwarf_trophy_gold_display'} },
		}
   },
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Dwarven Kingdom Gold Trophy")
   end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_on_punchnode(function(pos, node, puncher, pointed_thing)
	if node.name == "lottserver:dwarf_trophy_gold" then
		local puncher_name = puncher:get_player_name()
		minetest.chat_send_all("Hey!! ".. puncher_name .." is hitting a Dwarven Gold Trophy. Members of the Dwarven Kingdom, defend your Gold Trophy!")
	end 
end)

minetest.register_node("lottserver:elf_trophy_gold", {
  description = "Elven Gold Trophy",
  tiles = {"lottserver_gold.png"},
  groups = {core_structure=3},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld 500'} },
			{ items = {'lottserver:elf_trophy_gold_display'} },
		}
   },
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Elven Kingdom Gold Trophy")
  end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_on_punchnode(function(pos, node, puncher, pointed_thing)
	if node.name == "lottserver:elf_trophy_gold" then
		local puncher_name = puncher:get_player_name()
		minetest.chat_send_all("Hey!! ".. puncher_name .." is hitting a Elven Gold Trophy. Members of the Elven Kingdom, defend your Gold Trophy!")
	end 
end)

minetest.register_node("lottserver:rohan_trophy_gold", {
  description = "Rohirrim Gold Trophy",
  tiles = {"lottserver_gold.png"},
  groups = {core_structure=3},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld 500'} },
			{ items = {'lottserver:rohan_trophy_gold_display'} },
		}
   },
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Rohan Kingdom Gold Trophy")
  end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_on_punchnode(function(pos, node, puncher, pointed_thing)
	if node.name == "lottserver:rohan_trophy_gold" then
		local puncher_name = puncher:get_player_name()
		minetest.chat_send_all("Hey!! ".. puncher_name .." is hitting a Rohirrim Gold Trophy. Members of the Rohan Kingdom, defend your Gold Trophy!")
	end 
end)

minetest.register_node("lottserver:gondor_trophy_gold", {
  description = "Gondorian Gold Trophy",
  tiles = {"lottserver_gold.png"},
  groups = {core_structure=3},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld 500'} },
			{ items = {'lottserver:gondor_trophy_gold_display'} },
		}
   },
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Gondor Kingdom Gold Trophy")
  end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_on_punchnode(function(pos, node, puncher, pointed_thing)
	if node.name == "lottserver:gondor_trophy_gold" then
		local puncher_name = puncher:get_player_name()
		minetest.chat_send_all("Hey!! ".. puncher_name .." is hitting a Gondorian Gold Trophy. Members of the Gondor Kingdom, defend your Gold Trophy!")
	end 
end)

-- Display Trophies
-- Bronze

minetest.register_node("lottserver:dwarf_trophy_bronze_display", {
  description = "Beaten Dwarven Bronze Display Trophy",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=3},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Successfully Infiltrated Dwarven Kingdom")
   end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_node("lottserver:elf_trophy_bronze_display", {
  description = "Beaten Elven Bronze Display Trophy",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Successfully Infiltrated Elven Kingdom")
  end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_node("lottserver:rohan_trophy_bronze_display", {
  description = "Beaten Rohirrim Bronze Display Trophy",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Successfully Infiltrated Rohan Kingdom")
  end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_node("lottserver:gondor_trophy_bronze_display", {
  description = "Beaten Gondorian Bronze Display Trophy",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Successfully Infiltrated Gondor Kingdom")
  end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

-- Silver

minetest.register_node("lottserver:dwarf_trophy_silver_display", {
  description = "Beaten Dwarven Silver Display Trophy",
  tiles = {"lottserver_silver.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Took Full Control of Dwarven Kingdom")
   end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_node("lottserver:elf_trophy_silver_display", {
  description = "Beaten Elven Silver Display Trophy",
  tiles = {"lottserver_silver.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Took Full Control of Elven Kingdom")
  end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_node("lottserver:rohan_trophy_silver_display", {
  description = "Beaten Rohirrim Silver Display Trophy",
  tiles = {"lottserver_silver.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Took Full Control of Rohan Kingdom")
  end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_node("lottserver:gondor_trophy_silver_display", {
  description = "Beaten Gondorian Silver Display Trophy",
  tiles = {"lottserver_silver.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Took Full Control of Gondor Kingdom")
  end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

-- Gold

minetest.register_node("lottserver:dwarf_trophy_gold_display", {
  description = "Beaten Dwarven Gold Display Trophy",
  tiles = {"lottserver_gold.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Destroyed the Dwarven Kingdom")
   end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_node("lottserver:elf_trophy_gold_display", {
  description = "Beaten Elven Gold Display Trophy",
  tiles = {"lottserver_gold.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Destroyed the Elven Kingdom")
  end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_node("lottserver:rohan_trophy_gold_display", {
  description = "Beaten Rohirrim Gold Display Trophy",
  tiles = {"lottserver_gold.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Destroyed the Rohan Kingdom")
  end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_node("lottserver:gondor_trophy_gold_display", {
  description = "Beaten Gondorian Gold Display Trophy",
  tiles = {"lottserver_gold.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Destroyed the Gondor Kingdom")
  end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

-- Outpost Trophies
minetest.register_node("lottserver:dwarf_outpost_trophy", {
  description = "Destroyed Dwarven Outpost Trophy",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=3},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Successfully Destroyed Dwarven Outpost")
   end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_node("lottserver:elf_outpost_trophy", {
  description = "Destroyed Elven Outpost Trophy",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=3},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Successfully Destroyed Elven Outpost")
   end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_node("lottserver:rohan_outpost_trophy", {
  description = "Destroyed Rohirrim Outpost Trophy",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=3},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Successfully Destroyed Rohirrim Outpost")
   end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})

minetest.register_node("lottserver:gondor_outpost_trophy", {
  description = "Destroyed Gondorian Outpost Trophy",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=3},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Successfully Destroyed Gondorian Outpost")
   end,
  light_source = 10,
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,-0.1875,0.25},
               {-0.22,-0.22,-0.22,0.22,-0.125,0.22},
               { -0.0625,-0.125,-0.0625,0.0625,0,0.0625},
               {-0.25,0.0625,-0.25,0.25,0,0.25},
               {0.1875,0,-0.25,0.25,0.5,0.25},
               {-0.25,0,-0.25,-0.1875,0.5,0.25},
               {-0.25,0,0.1875,0.25,0.496587,0.25},
               {-0.25,0,-0.25,0.25,0.5,-0.1875},
		}
   }
})