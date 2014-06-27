minetest.register_node("tombs:dwarf_head", {
	drawtype = "nodebox",
	tiles = {"tombs_dh_top.png", "default_stone.png", "tombs_dh_front.png", "tombs_dh_back.png", "tombs_dh_side2.png", "tombs_dh_side1.png"},
	paramtype = "light",
	groups = {cracky = 1},
	paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5}, -- NodeBox1
			{-0.125, -0.375, -0.4375, 0.5, -0.3125, 0.4375}, -- NodeBox3
			{-0.125, -0.3125, -0.375, 0.5, -0.1875, 0.375}, -- NodeBox4
			{-0.125, -0.1875, -0.3125, 0.5, -0.0625, 0.3125}, -- NodeBox5
			{0.3125, -0.0625, -0.125, 0.5, 0.0625, 0.125}, -- NodeBox6
			{0.1875, -0.0625, -0.0625, 0.3125, 0, 0.0625}, -- NodeBox7
			{0.375, -0.0625, -0.3125, 0.5, 0, 0.3125}, -- NodeBox10
			{0, -0.0625, 0.25, 0.5, 0, 0.3125}, -- NodeBox11
			{-0.0625, -0.0625, 0.1875, 0.0625, 0, 0.3125}, -- NodeBox13
			{-0.0625, -0.0625, -0.3125, 0.5, 0, -0.25}, -- NodeBox14
			{-0.0625, -0.0625, -0.3125, 0.0625, 0, -0.1875}, -- NodeBox16
			{-0.5, -0.375, -0.4375, -0.125, -0.0625, 0.4375}, -- NodeBox17
			{-0.5, -0.0625, -0.25, -0.0625, 0.0625, 0.25}, -- NodeBox18
			{-0.0625, -0.0625, -0.125, 0.125, 0, 0.125}, -- NodeBox19
		}
	},
})

minetest.register_node("tombs:dwarf_bottom", {
	tiles = {"tombs_db_top.png", "default_stone.png", "tombs_db_back.png", "tombs_db_front.png", "tombs_db_side2.png", "tombs_db_side1.png"  },
	groups = {cracky = 1},
	paramtype2 = "facedir",
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5}, -- NodeBox1
			{-0.5, -0.375, -0.4375, 0.375, -0.3125, 0.4375}, -- NodeBox2
			{-0.5, -0.3125, -0.375, 0.3125, -0.1875, 0.375}, -- NodeBox3
			{-0.5, -0.1875, -0.25, 0.3125, -0.0625, 0.25}, -- NodeBox5
			{-0.5, -0.0625, -0.0625, -0.375, 0, 0.0625}, -- NodeBox6
			{-0.375, -0.0625, -0.0625, 0.1875, 0, 0.0625}, -- NodeBox8
			{-0.0625, -0.0625, -0.25, 0.1875, 0, 0.25}, -- NodeBox8
		}
	}
})
