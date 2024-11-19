
# 
function gr:rooms/7/yellow/time
#
# Make redstone items able to be placed on stone bricks
scoreboard objectives add gr_yellowobj dummy

execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~3 ~7 ~17 hopper{Items:[{Slot:0b,id:"minecraft:gold_block"}]} run scoreboard players add 1 gr_yellowobj 1

execute if score 1 gr_yellowobj matches 1 run function gr:rooms/7/yellow/complete
scoreboard objectives remove gr_yellowobj