
# 
function gr:rooms/2/yellow/time
#

scoreboard objectives add gr_yellowobj dummy


execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s unless entity @e[type=zombie,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s unless entity @e[type=spider,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s unless entity @e[type=skeleton,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_yellowobj 1

execute if score 1 gr_yellowobj matches 3 run function gr:rooms/2/yellow/complete
scoreboard objectives remove gr_yellowobj