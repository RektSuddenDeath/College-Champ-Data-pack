
# 
function gr:rooms/8/cyan/time
#

scoreboard objectives add gr_cyanobj dummy

execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~13 ~16 ~11 redstone_lamp[lit=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~19 ~16 ~11 redstone_lamp[lit=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~13 ~16 ~19 redstone_lamp[lit=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~18 ~16 ~19 redstone_lamp[lit=true] run scoreboard players add 1 gr_cyanobj 1

execute if score 1 gr_cyanobj matches 4 run function gr:rooms/8/cyan/complete
scoreboard objectives remove gr_cyanobj