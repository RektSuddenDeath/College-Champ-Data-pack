
# 
function gr:rooms/7/red/time
#
# Make redstone items able to be placed on stone bricks
scoreboard objectives add gr_redobj dummy

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~3 ~7 ~17 hopper{Items:[{Slot:0b,id:"minecraft:gold_block"}]} run scoreboard players add 1 gr_redobj 1

execute if score 1 gr_redobj matches 1 run function gr:rooms/7/red/complete
scoreboard objectives remove gr_redobj