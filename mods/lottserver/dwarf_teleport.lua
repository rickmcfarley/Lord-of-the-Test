local teleporter_dwarf = {}

teleporter_dwarf.reset = function()
  teleporter_dwarf.file = minetest.get_worldpath()..'/teleporter_dwarf'
  
  local save_contents = ""
  local f = io.open(teleporter_dwarf.file, "w")
  f:write(save_contents)
  io.close(f)
  
  teleporter_dwarf.file = minetest.get_worldpath()..'/teleporter_build_dwarf'
  local save_contents = ""
  local f = io.open(teleporter_dwarf.file, "w")
  f:write(save_contents)
  io.close(f)
end

teleporter_dwarf.link = function(pos)
  local node_name = ""
  if minetest.env:get_node(pos).name == "lottserver:dwarf_teleporter" then
    teleporter_dwarf.file = minetest.get_worldpath()..'/teleporter_dwarf'
    node_name = "Dwarf_Teleporter"
end

  local save_contents
  print("check if file exists")
  local f = io.open(teleporter_dwarf.file, "r")
  if f then
    print("file exists")
    local contents = f:read()
    io.close(f)
    if contents == "" or contents == nil then
      print("nothing to pair with saving coordinates")
      save_contents = tostring(pos.x..","..pos.y..","..pos.z)
      --print(save_contents)
    else
      print("linking with uneven node")
      local p = {}
      p.x, p.y, p.z = string.match(contents, "^([%d.-]+)[, ] *([%d.-]+)[, ] *([%d.-]+)$")
      if p.x and p.y and p.z then
        coordinates = {x = tonumber(p.x),y= tonumber(p.y),z = tonumber(p.z)}
        --get node names
        local meta = minetest.env:get_meta(coordinates)
        local name_two = meta:get_string("name")
        local meta = minetest.env:get_meta(pos)
        local name_one = meta:get_string("name")
        --set node infotext and link
        local meta = minetest.env:get_meta(coordinates)
        print(pos.x..","..pos.y..","..pos.z)
        meta:set_string("link", pos.x..","..pos.y..","..pos.z)
        meta:set_string("infotext", name_two.." > "..name_one)
        local name = meta:get_string("name")
        local meta = minetest.env:get_meta(pos)
        print(contents)
        meta:set_string("link", contents)
        meta:set_string("infotext", name_one.." > "..name_two)
        save_contents = ""
      else
        teleporter_dwarf.reset()
      end
    end
    local f = io.open(teleporter_dwarf.file, "w")
    f:write(save_contents)
    io.close(f)
  else
    --print("file does not exist")
    save_contents = tostring(pos.x..","..pos.y..","..pos.z)
    local f = io.open(teleporter_dwarf.file, "w")
    f:write(save_contents)
    io.close(f)
  end
end

teleporter_dwarf.formspec = function (meta)
  formspec = "size[6,3]" ..
  "label[2,0;Area]"..
  "field[1,1.25;4.5,1;desc;name;]"..
  "button_exit[2,2;2,1;save;Save]"
  return formspec
end

minetest.register_node("lottserver:dwarf_teleporter", {
  description = "Dwarven Teleporter",
  tiles = {"default_stone.png"},
  groups = {core_structure=1},
  drawtype = "nodebox",
  drop = {
		max_items = 2,
		items = {
			{ items = {'currency:minegeld 30'} },
			{ items = {'lottserver:dwarf_outpost_trophy'} },
		}
   },
  node_box = {
		type = "fixed",
		fixed = {
			{-0.4,-0.5,-0.4,0.4,-0.4375,0.4},
               {-0.35,-0.4375,-0.35,0.35,-0.375,0.35},
               {-0.32,-0.375,-0.32,0.32,-0.3125,0.32},
               {-0.3,-0.3125,-0.3,0.3,-0.25,0.3},
               {-0.25,-0.25,-0.25,0.25,0.45,0.25},
               {-0.28,0.438462,-0.28,0.28,0.5,0.28},
		}
   },
  light_source = 10,
  on_punch = function(pos, node, puncher, pointed_thing)
    local puncher_name = puncher:get_player_name()
    local puncher_privs = minetest.get_player_privs(puncher_name)
    if (puncher_privs["dwarven"] == true) then
    local meta = minetest.env:get_meta(pos)
    local link = meta:get_string("link")
    local newpos = {}
    newpos.x, newpos.y, newpos.z = string.match(link, "^([%d.-]+)[, ] *([%d.-]+)[, ] *([%d.-]+)$")
    if newpos.x and newpos.y and newpos.z then
      pos.y = pos.y+.5
      local objs = minetest.env:get_objects_inside_radius(pos, .5)
      pos.y = pos.y -.5
      for _, obj in pairs(objs) do
        newpos.y = newpos.y -1
        teleporter_dwarf.teleport({obj=obj,pos=newpos})
        newpos.y = newpos.y +1.7
        minetest.after(.1, teleporter_dwarf.teleport, {obj=obj,pos=newpos})
      end
    end
    end
  
  end,
  after_place_node = function(pos, placer)
    local meta = minetest.env:get_meta(pos)
    local player = placer:get_player_name()
    meta:set_string("infotext", "unnamed")
    meta:set_string("link", "")
    meta:set_string("name", "unnamed")
    meta:set_string("formspec",teleporter_dwarf.formspec(meta))
    teleporter_dwarf.link(pos)
  end,
  on_receive_fields = function(pos, formname, fields, sender)
    if fields.desc then
      
      local meta = minetest.env:get_meta(pos)
      local link = meta:get_string("link")
      local p = {}
      p.x, p.y, p.z = string.match(link, "^([%d.-]+)[, ] *([%d.-]+)[, ] *([%d.-]+)$")
      
      local meta = minetest.env:get_meta(p)
      local name = meta:get_string("name")
      
      --print("link:"..link)
      
      if link == "" then
        meta = minetest.env:get_meta(pos)
        meta:set_string("name",fields.desc)
        meta:set_string("infotext", fields.desc)
      else
        meta:set_string("infotext", meta:get_string("name").." > "..fields.desc)
        name = meta:get_string("name")
        meta = minetest.env:get_meta(pos)
        meta:set_string("infotext", fields.desc.." > "..name)
        meta:set_string("name",fields.desc)
      end
    end
  end,
  on_destruct = function(pos, node, digger)
    local meta = minetest.env:get_meta(pos)
    local link = meta:get_string("link")
    if link == "" then
      teleporter_dwarf.reset()
    else
      local p = {}
      p.x, p.y, p.z = string.match(link, "^([%d.-]+)[, ] *([%d.-]+)[, ] *([%d.-]+)$")
      local meta = minetest.env:get_meta(p)
      meta:set_string("link", "")
      meta:set_string("infotext", meta:get_string("name"))
      minetest.env:remove_node(p)
    end
  end,
})

teleporter_dwarf.teleport = function (params)
	params.obj:setpos(params.pos)
end