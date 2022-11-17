minetest.register_node("goo:ore", {
    description = "Goo Ore",
    tiles = {"goo_ore.png"},
    is_ground_content = true,
    groups = {cracky=3, stone=1}
})
minetest.register_node("goo:block", {
    description = "Goo Block",
    tiles = {"goo_block.png"},
    is_ground_content = true,
    groups = {cracky=2, stone=1}
})
minetest.register_craftitem("goo:goo", {
    description = "Goo",
    inventory_image = "goo_goo.png"
})
minetest.register_craft({
    type = "shaped",
    output = "goo:block",
    recipe = {
        {"goo:goo", "goo:goo",  "goo:goo"},
        {"goo:goo", "goo:goo",  "goo:goo"},
        {"goo:goo", "goo:goo",  "goo:goo"}
    }
})
minetest.register_craft({
    type = "cooking",
    output = "goo:goo",
    recipe = "goo:ore",
    cooktime = 3,
})
minetest.register_ore({

   ore_type       = "scatter",
   ore            = "goo:ore",
   wherein        = "default:stone",
   clust_scarcity = 8*8*8,
   clust_num_ores = 4,
   clust_size     = 2,
   y_min     = -31000,
   y_max     = -12,

})
minetest.register_tool("goo:pickaxe", {
    description = "Goo Pickaxe",
    inventory_image = "goo_pickaxe.png",
    tool_capabilities = {
        full_punch_interval = 1.5,
        max_drop_level = 1,
        groupcaps = {
            crumbly = {
                maxlevel = 2,
                uses = 20,
                times = { [1]=1.60, [2]=1.20, [3]=0.80 }
            },
        },
        damage_groups = {fleshy=2},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
    },
})
minetest.register_craft({
    type = "shaped",
    output = "goo:pickaxe",
    recipe = {
        {"goo:goo", "goo:goo", "goo:goo"},
        {"", "group:stick",  ""},
        {"", "group:stick",  ""}
    }
})
minetest.register_tool("goo:axe", {
    description = "Goo Axe",
    inventory_image = "goo_axe.png",
    tool_capabilities = {
        full_punch_interval = 1.5,
        max_drop_level = 1,
        groupcaps = {
            choppy = {
                maxlevel = 2,
                uses = 20,
                times = { [1]=1.60, [2]=1.20, [3]=0.80 }
            },
        },
        damage_groups = {fleshy=2},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
    },
})
minetest.register_craft({
    type = "shaped",
    output = "goo:axe",
    recipe = {
        {"goo:goo", "goo:goo"},
        {"goo:goo", "group:stick"},
        {"", "group:stick"}
    }
})
minetest.register_tool("goo:shovel", {
    description = "Goo Shovel",
    inventory_image = "goo_shovel.png",
    tool_capabilities = {
        full_punch_interval = 1.5,
        max_drop_level = 1,
        groupcaps = {
            crumbly = {
                maxlevel = 2,
                uses = 20,
                times = { [1]=1.60, [2]=1.20, [3]=0.80 }
            },
        },
        damage_groups = {fleshy=2},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
    },
})
minetest.register_tool("goo:sword", {
	description = "Goo Sword",
	inventory_image = "goo_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.0, [2]=1.00, [3]=0.35}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})
minetest.register_craft({
    type = "shaped",
    output = "goo:shovel",
    recipe = {
        {"goo:goo"},
        {"group:stick"},
        {"group:stick"}
    }
})
minetest.register_craft({
    type = "shaped",
    output = "goo:sword",
    recipe = {
        {"goo:goo"},
        {"goo:goo"},
        {"group:stick"}
    }
})
minetest.register_craft({
    type = "shapeless",
    output = "goo:goo 9",
    recipe = {
       "goo:block",
    }
})