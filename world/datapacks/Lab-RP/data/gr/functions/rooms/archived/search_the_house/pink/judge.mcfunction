
# 
function gr:rooms/5/pink/time
#

scoreboard objectives add gr_pinkobj dummy


execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~14 ~10 ~13 hopper{Items:[{id:"minecraft:dried_kelp_block"}]} run setblock ~14 ~11 ~12 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~15 ~10 ~13 hopper{Items:[{id:"minecraft:white_tulip"}]} run setblock ~15 ~11 ~12 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~16 ~10 ~13 hopper{Items:[{id:"minecraft:orange_tulip"}]} run setblock ~16 ~11 ~12 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~17 ~10 ~13 hopper{Items:[{id:"minecraft:dandelion"}]} run setblock ~17 ~11 ~12 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~18 ~10 ~13 hopper{Items:[{id:"minecraft:jack_o_lantern"}]} run setblock ~18 ~11 ~12 lime_concrete

execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~14 ~11 ~12 lime_concrete run scoreboard players add 1 gr_pinkobj 1
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~15 ~11 ~12 lime_concrete run scoreboard players add 1 gr_pinkobj 1
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~16 ~11 ~12 lime_concrete run scoreboard players add 1 gr_pinkobj 1
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~17 ~11 ~12 lime_concrete run scoreboard players add 1 gr_pinkobj 1
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~18 ~11 ~12 lime_concrete run scoreboard players add 1 gr_pinkobj 1

execute if score 1 gr_pinkobj matches 5 run function gr:rooms/5/pink/complete
scoreboard objectives remove gr_pinkobj