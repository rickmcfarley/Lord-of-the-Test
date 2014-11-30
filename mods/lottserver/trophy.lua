-- Bronze

minetest.register_node("lottserver:dwarf_trophy_bronze", {
  description = "Dwarven Bronze Trophy",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld_10 1000'} },
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

minetest.register_node("lottserver:mordor_trophy_bronze", {
  description = "Bronze Trophy of Mordor",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld_10 1000'} },
			{ items = {'lottserver:mordor_trophy_bronze_display'} },
		}
   },
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Bronze Trophy of the Kingdom of Mordor")
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
	if node.name == "lottserver:mordor_trophy_bronze" then
		local puncher_name = puncher:get_player_name()
		minetest.chat_send_all("Hey!! ".. puncher_name .." is hitting a Bronze Trophy of Mordor. Members of the Kingdom of Mordor, defend your Bronze Trophy!")
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
			{ items = {'currency:minegeld_10 1000'} },
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

minetest.register_node("lottserver:men_trophy_bronze", {
  description = "Men Bronze Trophy",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld_10 1000'} },
			{ items = {'lottserver:men_trophy_bronze_display'} },
		}
   },
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "men Kingdom Bronze Trophy")
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
	if node.name == "lottserver:men_trophy_bronze" then
		local puncher_name = puncher:get_player_name()
		minetest.chat_send_all("Hey!! ".. puncher_name .." is hitting a Men Bronze Trophy. Members of the Kingdom of Men, defend your Bronze Trophy!")
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
			{ items = {'currency:minegeld_10 5000'} },
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

minetest.register_node("lottserver:mordor_trophy_silver", {
  description = "Silver Trophy of Mordor",
  tiles = {"lottserver_silver.png"},
  groups = {core_structure=2},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld_10 5000'} },
			{ items = {'lottserver:mordor_trophy_silver_display'} },
		}
   },
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Silver Trophy of the Kingdom of Mordor")
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
	if node.name == "lottserver:mordor_trophy_silver" then
		local puncher_name = puncher:get_player_name()
		minetest.chat_send_all("Hey!! ".. puncher_name .." is hitting a Silver Trophy of Mordor. Members of the Kingdom of Mordor, defend your Silver Trophy!")
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
			{ items = {'currency:minegeld_10 5000'} },
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

minetest.register_node("lottserver:men_trophy_silver", {
  description = "Men Silver Trophy",
  tiles = {"lottserver_silver.png"},
  groups = {core_structure=2},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld_10 5000'} },
			{ items = {'lottserver:men_trophy_silver_display'} },
		}
   },
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "men Kingdom Silver Trophy")
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
	if node.name == "lottserver:men_trophy_silver" then
		local puncher_name = puncher:get_player_name()
		minetest.chat_send_all("Hey!! ".. puncher_name .." is hitting a Men Silver Trophy. Members of the Kingdom of Men defend your Silver Trophy!")
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
			{ items = {'currency:minegeld_10 10000'} },
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

minetest.register_node("lottserver:mordor_trophy_gold", {
  description = "Gold Trophy of Mordor",
  tiles = {"lottserver_gold.png"},
  groups = {core_structure=3},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld_10 10000'} },
			{ items = {'lottserver:mordor_trophy_gold_display'} },
		}
   },
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Gold Trophy of the Kingdom of Mordor")
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
	if node.name == "lottserver:mordor_trophy_gold" then
		local puncher_name = puncher:get_player_name()
		minetest.chat_send_all("Hey!! ".. puncher_name .." is hitting a Gold Trophy of Mordor. Members of the Kingdom of Mordor, defend your Gold Trophy!")
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
			{ items = {'currency:minegeld_10 10000'} },
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

minetest.register_node("lottserver:men_trophy_gold", {
  description = "Men Gold Trophy",
  tiles = {"lottserver_gold.png"},
  groups = {core_structure=3},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld_10 10000'} },
			{ items = {'lottserver:men_trophy_gold_display'} },
		}
   },
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "men Kingdom Gold Trophy")
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
	if node.name == "lottserver:men_trophy_gold" then
		local puncher_name = puncher:get_player_name()
		minetest.chat_send_all("Hey!! ".. puncher_name .." is hitting a Men Gold Trophy. Members of the Kingdom of Men, defend your Gold Trophy!")
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
		meta:set_string("infotext", "Successfully Infiltrated the Dwarven Kingdom")
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

minetest.register_node("lottserver:mordor_trophy_bronze_display", {
  description = "Beaten Bronze Display Trophy of Mordor",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=3},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Successfully Infiltrated the Kingdom of Mordor")
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
		meta:set_string("infotext", "Successfully Infiltrated the Elven Kingdom")
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

minetest.register_node("lottserver:men_trophy_bronze_display", {
  description = "Beaten Men Bronze Display Trophy",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Successfully Infiltrated the Kingdom of Men")
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
		meta:set_string("infotext", "Took Full Control of the Dwarven Kingdom")
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

minetest.register_node("lottserver:mordor_trophy_silver_display", {
  description = "Beaten Silver Display Trophy of Mordor",
  tiles = {"lottserver_silver.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Took Full Control of the Kingdom of Mordor")
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
		meta:set_string("infotext", "Took Full Control of the Elven Kingdom")
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

minetest.register_node("lottserver:men_trophy_silver_display", {
  description = "Beaten Men Silver Display Trophy",
  tiles = {"lottserver_silver.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Took Full Control of the Kingdom of Men")
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

minetest.register_node("lottserver:mordor_trophy_gold_display", {
  description = "Beaten Gold Display Trophy of Mordor",
  tiles = {"lottserver_gold.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Destroyed the Kingdom of Mordor")
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

minetest.register_node("lottserver:men_trophy_gold_display", {
  description = "Beaten Men Gold Display Trophy",
  tiles = {"lottserver_gold.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Destroyed the Kingdom of Men")
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

minetest.register_node("lottserver:mordor_outpost_trophy", {
  description = "Destroyed Outpost of Mordor Trophy",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=3},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Successfully Destroyed Outpost of Mordor")
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

minetest.register_node("lottserver:men_outpost_trophy", {
  description = "Destroyed Men Outpost Trophy",
  tiles = {"lottserver_bronze.png"},
  groups = {core_structure=3},
  drawtype = "nodebox",
  on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("infotext", "Successfully Destroyed Men Outpost")
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