# Anchor 14886 91 14968

# 
function gr:rooms/1/red/time
#

scoreboard objectives add gr_redobj dummy


execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s unless entity @e[type=wither,tag=gr_red] run scoreboard players add 1 gr_redobj 1

execute if score 1 gr_redobj matches 1.. run function gr:rooms/1/red/complete
scoreboard objectives remove gr_redobj