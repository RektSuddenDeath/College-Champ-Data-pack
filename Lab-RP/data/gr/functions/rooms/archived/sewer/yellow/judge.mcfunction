
# 
function gr:rooms/5/yellow/time
#

scoreboard objectives add gr_yellowobj dummy


execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~8 ~12 ~12 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~8 ~12 ~14 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~8 ~12 ~16 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~8 ~12 ~18 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1

execute if score 1 gr_yellowobj matches 4 run function gr:rooms/5/yellow/complete
scoreboard objectives remove gr_yellowobj