# Anchor 14886 91 14968
# 
function gr:rooms/4/red/time
#

scoreboard objectives add gr_redobj dummy


execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~14 ~3 ~5 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~9 ~4 ~13 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~19 ~5 ~14 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~15 ~4 ~24 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1

execute if score 1 gr_redobj matches 4 run function gr:rooms/4/red/complete
scoreboard objectives remove gr_redobj