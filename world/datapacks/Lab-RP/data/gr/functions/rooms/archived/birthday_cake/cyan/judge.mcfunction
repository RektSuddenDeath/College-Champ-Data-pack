 
# 
function gr:rooms/8/cyan/time

#
scoreboard objectives add gr_cyanobj dummy

execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~23 101 ~14 hopper{Items:[{id:"minecraft:candle"}]} run setblock ~22 102 ~14 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~23 101 ~15 hopper{Items:[{id:"minecraft:cake"}]} run setblock ~22 102 ~15 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~23 101 ~16 hopper{Items:[{id:"minecraft:candle"}]} run setblock ~22 102 ~16 lime_concrete

execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~22 102 ~14 lime_concrete run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~22 102 ~15 lime_concrete run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~22 102 ~16 lime_concrete run scoreboard players add 1 gr_cyanobj 1

execute if score 1 gr_cyanobj matches 3 run function gr:rooms/8/cyan/complete
scoreboard objectives remove gr_cyanobj