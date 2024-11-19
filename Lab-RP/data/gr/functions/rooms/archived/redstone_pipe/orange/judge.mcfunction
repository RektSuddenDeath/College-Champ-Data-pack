
# 
function gr:rooms/7/orange/time
#
# Make redstone items able to be placed on stone bricks
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:redstone"}},dx=31,dy=20,dz=31] run data merge entity @s {Item:{tag:{CanPlaceOn:[stone_bricks,redstone_lamp]}}}

scoreboard objectives add gr_orangeobj dummy

execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~8 ~9 ~9 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~13 ~9 ~10 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~18 ~9 ~5 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~20 ~9 ~10 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~22 ~9 ~5 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1
execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~25 ~9 ~7 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1

execute if score 1 gr_orangeobj matches 6 run function gr:rooms/7/orange/complete
scoreboard objectives remove gr_orangeobj