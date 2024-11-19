
# 
function gr:rooms/7/green/time
#
# Make redstone items able to be placed on stone bricks
scoreboard objectives add gr_greenobj dummy

execute as @e[type=area_effect_cloud,tag=gr_greenanchor] at @s if block ~3 ~7 ~17 hopper{Items:[{Slot:0b,id:"minecraft:gold_block"}]} run scoreboard players add 1 gr_greenobj 1

execute if score 1 gr_greenobj matches 1 run function gr:rooms/7/green/complete
scoreboard objectives remove gr_greenobj