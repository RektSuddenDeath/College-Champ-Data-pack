
# 
function gr:rooms/7/orange/time
#

scoreboard objectives add gr_orangeobj dummy

execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s if block ~2 ~9 ~15 redstone_lamp[lit=true] run scoreboard players add 1 gr_orangeobj 1

execute if score 1 gr_orangeobj matches 1 run function gr:rooms/7/orange/complete
scoreboard objectives remove gr_orangeobj