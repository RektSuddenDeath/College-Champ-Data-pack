# Anchor 14886 91 14968
# 
function gr:rooms/7/yellow/time
#

scoreboard objectives add gr_yellowobj dummy

execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~16 ~11 ~23 hopper{Items:[{id:"minecraft:comparator"}]} run setblock ~15 ~12 ~23 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~16 ~11 ~7 hopper{Items:[{id:"minecraft:clock"}]} run setblock ~15 ~12 ~7 lime_concrete

execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~15 ~12 ~23 lime_concrete run scoreboard players add 1 gr_yellowobj 1
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~15 ~12 ~7 lime_concrete run scoreboard players add 1 gr_yellowobj 1

execute if score 1 gr_yellowobj matches 2 run function gr:rooms/7/yellow/complete
scoreboard objectives remove gr_yellowobj