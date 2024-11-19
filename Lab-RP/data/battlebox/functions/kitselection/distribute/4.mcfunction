
tag @s remove bb_nokit

execute if score map bb_game matches 0 run give @s minecraft:stone_hoe{Unbreakable:1b}
execute if score map bb_game matches 1 run give @s crossbow{Enchantments:[{id:"multishot",lvl:1}],Unbreakable:1b}
execute if score map bb_game matches 2 run clear @s crossbow
execute if score map bb_game matches 2 run give @s crossbow{Enchantments:[{id:"quick_charge",lvl:2}],Unbreakable:1b}
execute if score map bb_game matches 3 run give @s wooden_axe{Unbreakable:1b,Enchantments:[{id:"knockback",lvl:2}]} 1
execute if score map bb_game matches 4 run give @s wooden_axe{Unbreakable:1b,Enchantments:[{id:"knockback",lvl:2}]} 1
execute if score map bb_game matches 6 run give @s arrow 8
execute if score map bb_game matches 7 run give @s potion{Potion:"minecraft:strong_leaping"} 1
execute if score map bb_game matches 8 run give @s cod{Enchantments:[{id:"knockback",lvl:1}],Unbreakable:1b,AttributeModifiers:[{Slot:"mainhand",AttributeName:"generic.knockback_resistance",Amount:0.08d,Operation:0,Name:"e",UUID:[I;1,2,3,4]},{Slot:"mainhand",AttributeName:"generic.max_health",Amount:-10.0d,Operation:0,Name:"e",UUID:[I;1,2,3,5]}]}

execute as @e[type=marker,tag=kit4,sort=nearest,limit=1] at @s run fill ~ ~ ~ ~ ~4 ~ red_terracotta

tellraw @a[tag=_transcript] ["  §bTranscript >> §f",{"selector":"@s"}," picked Kit 4."]