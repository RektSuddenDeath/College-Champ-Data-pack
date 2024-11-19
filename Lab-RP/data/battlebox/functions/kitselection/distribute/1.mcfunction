
tag @s remove bb_nokit

execute if score map bb_game matches 0 run give @s minecraft:stone_sword{Unbreakable:1b}
execute if score map bb_game matches 1 run give @s minecraft:cobweb{CanPlaceOn:[grass_block,cobblestone,smooth_stone,stone,stone_bricks,stone_brick_slab,stone_brick_stairs,gravel,polished_diorite,cut_sandstone,sandstone_stairs,stone_bricks_walls,dripstone_block,polished_andesite_stairs,polished_andesite,cobweb],HideFlags:24} 4
execute if score map bb_game matches 2 run give @s tipped_arrow{Potion:"poison"} 2
execute if score map bb_game matches 3 run give @s arrow 6
execute if score map bb_game matches 4 run give @s arrow 7
execute if score map bb_game matches 6 run give @s wooden_axe{Enchantments:[{id:"knockback",lvl:2}],Unbreakable:1b}
execute if score map bb_game matches 7 run give @s crossbow{Unbreakable:1b}
execute if score map bb_game matches 8 run give @s cod{Enchantments:[{id:"knockback",lvl:5}],Unbreakable:1b}

execute as @e[type=marker,tag=kit1,sort=nearest,limit=1] at @s run fill ~ ~ ~ ~ ~4 ~ red_terracotta

tellraw @a[tag=_transcript] ["  §bTranscript >> §f",{"selector":"@s"}," picked Kit 1."]