# Anchor 14886 91 14968

# 
function gr:rooms/1/orange/time
#

scoreboard objectives add gr_orangeobj dummy


execute as @e[type=area_effect_cloud,tag=gr_orangeanchor] at @s unless entity @e[type=wither,tag=gr_orange] run scoreboard players add 1 gr_orangeobj 1

execute if score 1 gr_orangeobj matches 1.. run function gr:rooms/1/orange/complete
scoreboard objectives remove gr_orangeobj