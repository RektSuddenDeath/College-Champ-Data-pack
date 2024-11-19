
clear @a

execute if score map bb_game matches 1 run give @a[gamemode=adventure] stone_sword{CanDestroy:[cobweb]}
execute if score map bb_game matches 1 run give @a[gamemode=adventure] bow 
execute if score map bb_game matches 1 run give @a[gamemode=adventure] crossbow
execute if score map bb_game matches 1 run give @a[gamemode=adventure] arrow 10

execute if score map bb_game matches 2 run give @a[gamemode=adventure] wooden_sword{CanDestroy:[cobweb],Unbreakable:1b}
execute if score map bb_game matches 2 run give @a[gamemode=adventure] crossbow{Enchantments:[{id:"quick_charge",lvl:1}],Unbreakable:1b}
execute if score map bb_game matches 2 run give @a[gamemode=adventure] arrow 12

execute if score map bb_game matches 3 run give @a[gamemode=adventure] stone_sword{CanDestroy:[cobweb],Unbreakable:1b}
execute if score map bb_game matches 3 run give @a[gamemode=adventure] bow{Unbreakable:1b}
execute if score map bb_game matches 3 run give @a[gamemode=adventure] arrow 7

execute if score map bb_game matches 4 run give @a[gamemode=adventure] wooden_sword{CanDestroy:[cobweb],Unbreakable:1b}
execute if score map bb_game matches 4 run give @a[gamemode=adventure] bow{Unbreakable:1b}
execute if score map bb_game matches 4 run give @a[gamemode=adventure] arrow 6
execute if score map bb_game matches 4 run give @a[gamemode=adventure] splash_potion{Potion:"healing"}

execute if score map bb_game matches 6 run give @a[gamemode=adventure] wooden_sword{CanDestroy:[cobweb],Unbreakable:1b}
execute if score map bb_game matches 6 run give @a[gamemode=adventure] bow{Unbreakable:1b,Enchantments:[{id:"punch",lvl:1}]}
execute if score map bb_game matches 6 run give @a[gamemode=adventure] arrow 8

execute if score map bb_game matches 7 run give @a[gamemode=adventure] stone_sword{CanDestroy:[cobweb],Unbreakable:1b}
execute if score map bb_game matches 7 run give @a[gamemode=adventure] bow{Unbreakable:1b}
execute if score map bb_game matches 7 run give @a[gamemode=adventure] arrow 6

execute if score map bb_game matches 8 run give @a[gamemode=adventure] cod

# Wool
item replace entity @a[team=green] armor.feet with leather_boots{Unbreakable:1,display:{color:6192150},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1
item replace entity @a[team=red] armor.feet with leather_boots{Unbreakable:1,display:{color:11546150},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1
item replace entity @a[team=blue] armor.feet with leather_boots{Unbreakable:1,display:{color:3949738},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1
item replace entity @a[team=yellow] armor.feet with leather_boots{Unbreakable:1,display:{color:16701501},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1 
item replace entity @a[team=cyan] armor.feet with leather_boots{Unbreakable:1,display:{color:30322},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1
item replace entity @a[team=orange] armor.feet with leather_boots{Unbreakable:1,display:{color:16757504},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1
item replace entity @a[team=purple] armor.feet with leather_boots{Unbreakable:1,display:{color:9437439},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1
item replace entity @a[team=pink] armor.feet with leather_boots{Unbreakable:1,display:{color:16711927},Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0,Operation:0,UUID:[I;1,2,3,4],Slot:"feet"}]} 1 

# Ground Item
execute if score map bb_game matches 3 run execute as @e[type=marker,tag=bb_centeranchor] at @s run summon item 0 17 -6 {Glowing:1b,CustomName:'"§5喷溅型伤害药水 II"',CustomNameVisible:1b,NoGravity:1b,Item:{id:"splash_potion",Count:1b,tag:{Potion:"strong_harming"}},PickupDelay:9999}
execute if score map bb_game matches 3 run execute as @e[type=marker,tag=bb_centeranchor] at @s run summon item 0 20 13 {Glowing:1b,CustomName:'"§5喷溅型伤害药水 II"',CustomNameVisible:1b,NoGravity:1b,Item:{id:"splash_potion",Count:1b,tag:{Potion:"strong_harming"}},PickupDelay:9999}

execute if score map bb_game matches 4 run execute as @e[type=marker,tag=bb_centeranchor] at @s run summon item 0 22 -14 {Glowing:1b,CustomName:'"§5喷溅型伤害药水 II"',CustomNameVisible:1b,NoGravity:1b,Item:{id:"splash_potion",Count:1b,tag:{Potion:"strong_harming"}},PickupDelay:9999}
execute if score map bb_game matches 4 run execute as @e[type=marker,tag=bb_centeranchor] at @s run summon item 0 22 14 {Glowing:1b,CustomName:'"§5喷溅型伤害药水 II"',CustomNameVisible:1b,NoGravity:1b,Item:{id:"splash_potion",Count:1b,tag:{Potion:"strong_harming"}},PickupDelay:9999}

execute if score map bb_game matches 7 run execute as @e[type=marker,tag=bb_centeranchor] at @s run summon item ~ ~1 ~14 {Glowing:1b,CustomName:'"§5喷溅型伤害药水 II"',CustomNameVisible:1b,NoGravity:1b,Item:{id:"splash_potion",Count:1b,tag:{Potion:"strong_harming"}}}
execute if score map bb_game matches 7 run execute as @e[type=marker,tag=bb_centeranchor] at @s run summon item ~ ~1 ~-14 {Glowing:1b,CustomName:'"§5喷溅型伤害药水 II"',CustomNameVisible:1b,NoGravity:1b,Item:{id:"splash_potion",Count:1b,tag:{Potion:"strong_harming"}}}


#execute if score map bb_game matches 6 run execute as @e[type=marker,tag=bb_centeranchor] at @s run summon item 0 19 7 {Glowing:1b,CustomName:'"§5喷溅型伤害药水 II"',CustomNameVisible:1b,NoGravity:1b,Item:{id:"splash_potion",Count:1b,tag:{Potion:"strong_harming"}},PickupDelay:9999}
#execute if score map bb_game matches 6 run execute as @e[type=marker,tag=bb_centeranchor] at @s run summon item 0 19 -7 {Glowing:1b,CustomName:'"§5喷溅型伤害药水 II"',CustomNameVisible:1b,NoGravity:1b,Item:{id:"splash_potion",Count:1b,tag:{Potion:"strong_harming"}},PickupDelay:9999}