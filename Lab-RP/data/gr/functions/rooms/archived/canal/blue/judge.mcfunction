
# 
function gr:rooms/7/blue/time
#

scoreboard objectives add gr_blueobj dummy

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~2 ~9 ~15 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1

execute if score 1 gr_blueobj matches 1 run function gr:rooms/7/blue/complete
scoreboard objectives remove gr_blueobj