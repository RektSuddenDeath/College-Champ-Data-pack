# Anchor 14886 91 14968

# 
function gr:rooms/5/yellow/time
#

scoreboard objectives add gr_yellowobj dummy


execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s unless entity @e[type=chicken,dx=32,dy=50,dz=28] run scoreboard players add 1 gr_yellowobj 1
execute if score 1 gr_yellowobj matches 1.. run function gr:rooms/5/yellow/complete
scoreboard objectives remove gr_yellowobj