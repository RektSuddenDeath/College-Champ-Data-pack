# Anchor 14886 91 14968

# 
function gr:rooms/4/cyan/time
#

scoreboard objectives add gr_cyanobj dummy


execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s unless entity @e[type=chicken,dx=32,dy=50,dz=28] run scoreboard players add 1 gr_cyanobj 1
execute if score 1 gr_cyanobj matches 1.. run function gr:rooms/4/cyan/complete
scoreboard objectives remove gr_cyanobj