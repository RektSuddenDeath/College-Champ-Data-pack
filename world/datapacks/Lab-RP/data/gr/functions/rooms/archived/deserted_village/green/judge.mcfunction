
# 
function gr:rooms/3/green/time
#

scoreboard objectives add gr_greenobj dummy


execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s unless entity @e[type=zombie,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_greenobj 1
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s unless entity @e[type=spider,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_greenobj 1
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s unless entity @e[type=skeleton,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_greenobj 1

execute if score 1 gr_greenobj matches 3 run function gr:rooms/3/green/complete
scoreboard objectives remove gr_greenobj