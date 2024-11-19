
# 
function gr:rooms/7/green/time
#

scoreboard objectives add gr_greenobj dummy

execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s if block ~2 ~9 ~15 redstone_lamp[lit=true] run scoreboard players add 1 gr_greenobj 1

execute if score 1 gr_greenobj matches 1 run function gr:rooms/7/green/complete
scoreboard objectives remove gr_greenobj