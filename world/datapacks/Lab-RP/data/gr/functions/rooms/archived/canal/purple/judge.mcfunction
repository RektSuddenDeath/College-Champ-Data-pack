
# 
function gr:rooms/7/purple/time
#

scoreboard objectives add gr_purpleobj dummy

execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~2 ~9 ~15 redstone_lamp[lit=true] run scoreboard players add 1 gr_purpleobj 1

execute if score 1 gr_purpleobj matches 1 run function gr:rooms/7/purple/complete
scoreboard objectives remove gr_purpleobj