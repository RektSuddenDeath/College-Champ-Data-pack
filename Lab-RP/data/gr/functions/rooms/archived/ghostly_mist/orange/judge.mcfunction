
# 
function gr:rooms/3/orange/time
#

scoreboard objectives add gr_orangeobj dummy


execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s unless entity @e[type=creeper,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_orangeobj 1

execute if score 1 gr_orangeobj matches 1 run function gr:rooms/3/orange/complete
scoreboard objectives remove gr_orangeobj