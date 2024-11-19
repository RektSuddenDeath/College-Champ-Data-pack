
# 
function gr:rooms/7/red/time
#

scoreboard objectives add gr_redobj dummy

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~2 ~9 ~15 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1

execute if score 1 gr_redobj matches 1 run function gr:rooms/7/red/complete
scoreboard objectives remove gr_redobj