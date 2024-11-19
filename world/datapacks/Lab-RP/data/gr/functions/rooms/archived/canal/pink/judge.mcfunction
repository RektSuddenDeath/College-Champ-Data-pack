
# 
function gr:rooms/7/pink/time
#

scoreboard objectives add gr_pinkobj dummy

execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~2 ~9 ~15 redstone_lamp[lit=true] run scoreboard players add 1 gr_pinkobj 1

execute if score 1 gr_pinkobj matches 1 run function gr:rooms/7/pink/complete
scoreboard objectives remove gr_pinkobj