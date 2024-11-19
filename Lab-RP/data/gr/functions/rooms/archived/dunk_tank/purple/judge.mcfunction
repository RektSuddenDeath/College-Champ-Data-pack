
# 
function gr:rooms/7/purple/time
#
# Make redstone items able to be placed on stone bricks
scoreboard objectives add gr_purpleobj dummy

execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if block ~3 ~7 ~17 hopper{Items:[{Slot:0b,id:"minecraft:gold_block"}]} run scoreboard players add 1 gr_purpleobj 1

execute if score 1 gr_purpleobj matches 1 run function gr:rooms/7/purple/complete
scoreboard objectives remove gr_purpleobj