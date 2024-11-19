# Anchor 14886 91 14968

# 
function gr:rooms/3/purple/time
#

scoreboard objectives add gr_purpleobj dummy


execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s unless entity @e[type=blaze,tag=grroom,tag=purple] run scoreboard players add 1 gr_purpleobj 1
execute if score 1 gr_purpleobj matches 1.. run function gr:rooms/3/purple/complete
scoreboard objectives remove gr_purpleobj