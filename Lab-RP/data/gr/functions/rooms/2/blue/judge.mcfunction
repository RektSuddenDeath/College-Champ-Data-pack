
# 
function gr:rooms/2/blue/time
#

scoreboard objectives add gr_blueobj dummy


execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s unless entity @e[type=zombie,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s unless entity @e[type=spider,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s unless entity @e[type=skeleton,dx=32,dy=30,dz=28] run scoreboard players add 1 gr_blueobj 1

execute if score 1 gr_blueobj matches 3 run function gr:rooms/2/blue/complete
scoreboard objectives remove gr_blueobj