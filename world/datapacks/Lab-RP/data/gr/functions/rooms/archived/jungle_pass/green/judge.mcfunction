# Anchor 14886 91 14968
# ID 1 City Targets
# 
function gr:rooms/1/green/time
#


scoreboard objectives add gr_greenobj dummy

execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s if blocks ~20 ~8 ~6 ~15 ~8 ~6 ~15 ~8 ~8 all run scoreboard players add 1 gr_greenobj 1
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s if blocks ~20 ~8 ~8 ~15 ~8 ~8 ~15 ~8 ~22 all run scoreboard players add 1 gr_greenobj 1
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s if blocks ~20 ~8 ~22 ~15 ~8 ~22 ~15 ~8 ~24 all run scoreboard players add 1 gr_greenobj 1

execute if score 1 gr_greenobj matches 3 run function gr:rooms/1/green/complete
scoreboard objectives remove gr_greenobj