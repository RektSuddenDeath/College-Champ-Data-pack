
# 
function gr:rooms/8/cyan/time
#

scoreboard objectives add gr_cyanobj dummy

execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~9 ~16 ~7 redstone_lamp[lit=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~12 ~16 ~7 redstone_lamp[lit=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~15 ~16 ~7 redstone_lamp[lit=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~18 ~16 ~7 redstone_lamp[lit=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~21 ~16 ~7 redstone_lamp[lit=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~24 ~16 ~7 redstone_lamp[lit=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~27 ~16 ~7 redstone_lamp[lit=true] run scoreboard players add 1 gr_cyanobj 1

execute if score 1 gr_cyanobj matches 7 run function gr:rooms/8/cyan/complete
scoreboard objectives remove gr_cyanobj