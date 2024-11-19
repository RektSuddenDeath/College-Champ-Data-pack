
# 
function gr:rooms/7/yellow/time
#

scoreboard objectives add gr_yellowobj dummy

execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~2 ~9 ~15 redstone_lamp[lit=true] run scoreboard players add 1 gr_yellowobj 1

execute if score 1 gr_yellowobj matches 1 run function gr:rooms/7/yellow/complete
scoreboard objectives remove gr_yellowobj