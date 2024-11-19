
tag @s remove bb_nokit

execute if score map bb_game matches 0 run give @s minecraft:stone_axe{Unbreakable:1b}
execute if score map bb_game matches 1 run give @s potion{Potion:"swiftness"}
execute if score map bb_game matches 2 run give @s wooden_axe{Unbreakable:1b}
execute if score map bb_game matches 3 run give @s potion{Potion:"swiftness"}
execute if score map bb_game matches 4 run give @s potion{Potion:"fire_resistance"}
execute if score map bb_game matches 6 run clear @s wooden_sword
execute if score map bb_game matches 6 run give @s stone_sword{Enchantments:[{id:"knockback",lvl:1}],Unbreakable:1b}
execute if score map bb_game matches 7 run give @s cobweb{CanPlaceOn:["#minecraft:all_breakable_blocks"]} 4
execute if score map bb_game matches 8 run give @s cod{Enchantments:[{id:"knockback",lvl:2},{id:"sharpness",lvl:5}],Unbreakable:1b}

execute as @e[type=marker,tag=kit2,sort=nearest,limit=1] at @s run fill ~ ~ ~ ~ ~4 ~ red_terracotta

tellraw @a[tag=_transcript] ["  §bTranscript >> §f",{"selector":"@s"}," picked Kit 2."]