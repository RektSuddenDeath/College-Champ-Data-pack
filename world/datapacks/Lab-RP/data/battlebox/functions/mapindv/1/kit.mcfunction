
execute as @e[type=item_frame,tag=bb_kit1] run data merge entity @s {Item:{id:"minecraft:cobweb",Count:4b,tag:{display:{Name:'"4x 蜘蛛网"'}}}}
execute as @e[type=item_frame,tag=bb_kit2] run data merge entity @s {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"swiftness",display:{Name:'"迅捷药水 I"'}}}}
execute as @e[type=item_frame,tag=bb_kit3] run data merge entity @s {Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"harming",display:{Name:'"滞留型伤害药水 I"'}}}}
execute as @e[type=item_frame,tag=bb_kit4] run data merge entity @s {Item:{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'"弩 （多重射击 I）"'},Enchantments:[{id:"multishot",lvl:1}]}}}