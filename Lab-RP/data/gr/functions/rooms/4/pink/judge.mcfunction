# Anchor 14886 91 14968

# 
function gr:rooms/4/pink/time
#

scoreboard objectives add gr_pinkobj dummy


execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s unless entity @e[type=chicken,dx=32,dy=50,dz=28] run scoreboard players add 1 gr_pinkobj 1
execute if score 1 gr_pinkobj matches 1.. run function gr:rooms/4/pink/complete
scoreboard objectives remove gr_pinkobj