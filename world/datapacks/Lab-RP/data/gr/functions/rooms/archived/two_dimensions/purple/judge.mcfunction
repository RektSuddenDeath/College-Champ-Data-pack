# Anchor 14886 91 14968
# 
function gr:rooms/7/purple/time
#

scoreboard objectives add gr_purpleobj dummy

execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~16 ~11 ~23 hopper{Items:[{id:"minecraft:comparator"}]} run setblock ~15 ~12 ~23 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~16 ~11 ~7 hopper{Items:[{id:"minecraft:clock"}]} run setblock ~15 ~12 ~7 lime_concrete

execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~15 ~12 ~23 lime_concrete run scoreboard players add 1 gr_purpleobj 1
execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~15 ~12 ~7 lime_concrete run scoreboard players add 1 gr_purpleobj 1

execute if score 1 gr_purpleobj matches 2 run function gr:rooms/7/purple/complete
scoreboard objectives remove gr_purpleobj