
execute as @e[type=item_frame,tag=bb_kit1] run data merge entity @s {Item:{id:"minecraft:arrow",Count:6b,tag:{display:{Name:'"7x 箭"'}},}}
execute as @e[type=item_frame,tag=bb_kit2] run data merge entity @s {Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"fire_resistance",display:{Name:'"抗火药水 I (3:00)"'}}}}
execute as @e[type=item_frame,tag=bb_kit3] run data merge entity @s {Item:{id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{id:"quick_charge",lvl:1}],display:{Name:'"弩（快速装填 I）"'}}}}
execute as @e[type=item_frame,tag=bb_kit4] run data merge entity @s {Item:{id:"minecraft:wooden_axe",Count:1b,tag:{display:{Name:'"木斧 （击退II）"'},Enchantments:[{id:"knockback",lvl:2}]}}}