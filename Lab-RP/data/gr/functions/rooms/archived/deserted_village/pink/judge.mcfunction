
# 
function gr:rooms/3/pink/time
#

scoreboard objectives add gr_pinkobj dummy


execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s unless entity @e[type=zombie,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_pinkobj 1
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s unless entity @e[type=spider,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_pinkobj 1
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s unless entity @e[type=skeleton,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_pinkobj 1

execute if score 1 gr_pinkobj matches 3 run function gr:rooms/3/pink/complete
scoreboard objectives remove gr_pinkobj