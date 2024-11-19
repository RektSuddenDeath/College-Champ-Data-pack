# Anchor 14886 91 14968
# 
function gr:rooms/6/cyan/time
#

scoreboard objectives add gr_cyanobj dummy



execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if blocks ~16 102 ~10 ~16 106 ~6 ~14 101 ~21 all run scoreboard players add 1 gr_cyanobj 1

execute if score 1 gr_cyanobj matches 1 run function gr:rooms/6/cyan/complete
scoreboard objectives remove gr_cyanobj