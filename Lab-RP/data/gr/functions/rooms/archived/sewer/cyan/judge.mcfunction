
# 
function gr:rooms/5/cyan/time
#

scoreboard objectives add gr_cyanobj dummy


execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~8 ~12 ~12 redstone_lamp[lit=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~8 ~12 ~14 redstone_lamp[lit=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~8 ~12 ~16 redstone_lamp[lit=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~8 ~12 ~18 redstone_lamp[lit=true] run scoreboard players add 1 gr_cyanobj 1

execute if score 1 gr_cyanobj matches 4 run function gr:rooms/5/cyan/complete
scoreboard objectives remove gr_cyanobj