# Anchor 14886 91 14968
# 
function gr:rooms/6/red/time
#

scoreboard objectives add gr_redobj dummy



execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if blocks ~16 102 ~10 ~16 106 ~6 ~14 101 ~21 all run scoreboard players add 1 gr_redobj 1

execute if score 1 gr_redobj matches 1 run function gr:rooms/6/red/complete
scoreboard objectives remove gr_redobj