
execute as @e[type=item_frame,tag=bb_kit1] run data merge entity @s {Item:{id:"minecraft:arrow",Count:6b,tag:{display:{Name:'"6x 箭"'}},}}
execute as @e[type=item_frame,tag=bb_kit2] run data merge entity @s {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"swiftness",display:{Name:'"迅捷药水 I (3:00)"'}}}}
execute as @e[type=item_frame,tag=bb_kit3] run data merge entity @s {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"strong_healing",display:{Name:'"喷溅型治疗药水 II x2"'}}}}
execute as @e[type=item_frame,tag=bb_kit4] run data merge entity @s {Item:{id:"minecraft:wooden_axe",Count:1b,tag:{display:{Name:'"木斧 （击退II）"'},Enchantments:[{id:"knockback",lvl:2}]}}}