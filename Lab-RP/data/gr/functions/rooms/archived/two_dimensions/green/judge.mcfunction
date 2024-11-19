# Anchor 14886 91 14968
# 
function gr:rooms/7/green/time
#

scoreboard objectives add gr_greenobj dummy

execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s if block ~16 ~11 ~23 hopper{Items:[{id:"minecraft:comparator"}]} run setblock ~15 ~12 ~23 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s if block ~16 ~11 ~7 hopper{Items:[{id:"minecraft:clock"}]} run setblock ~15 ~12 ~7 lime_concrete

execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s if block ~15 ~12 ~23 lime_concrete run scoreboard players add 1 gr_greenobj 1
execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s if block ~15 ~12 ~7 lime_concrete run scoreboard players add 1 gr_greenobj 1

execute if score 1 gr_greenobj matches 2 run function gr:rooms/7/green/complete
scoreboard objectives remove gr_greenobj