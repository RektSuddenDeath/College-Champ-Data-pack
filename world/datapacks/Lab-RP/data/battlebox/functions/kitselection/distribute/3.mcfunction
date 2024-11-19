
tag @s remove bb_nokit

execute if score map bb_game matches 0 run give @s minecraft:stone_shovel{Unbreakable:1b}
execute if score map bb_game matches 1 run give @s lingering_potion{Potion:"harming"}
execute if score map bb_game matches 2 run give @s minecraft:splash_potion{Potion:"strong_healing"} 2
execute if score map bb_game matches 3 run give @s splash_potion{Potion:"minecraft:strong_healing"} 2
execute if score map bb_game matches 4 run give @s crossbow{Enchantments:[{id:"quick_charge",lvl:1}]} 1
execute if score map bb_game matches 6 run give @s splash_potion{Potion:"minecraft:strong_healing"} 2
execute if score map bb_game matches 7 run give @s splash_potion{Potion:"minecraft:strong_healing"} 2
execute if score map bb_game matches 8 run give @s cod{Enchantments:[{id:"sharpness",lvl:10}],Unbreakable:1b}

execute as @e[type=marker,tag=kit3,sort=nearest,limit=1] at @s run fill ~ ~ ~ ~ ~4 ~ red_terracotta

tellraw @a[tag=_transcript] ["  §bTranscript >> §f",{"selector":"@s"}," picked Kit 3."]