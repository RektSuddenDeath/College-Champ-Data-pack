
# 
function gr:rooms/6/pink/time
#

scoreboard objectives add gr_pinkobj dummy

execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~2 ~8 ~17 hopper{Items:[{Slot:0b,id:"minecraft:gold_block"}]} run scoreboard players add 1 gr_pinkobj 1

execute if score 1 gr_pinkobj matches 1 run function gr:rooms/6/pink/complete
scoreboard objectives remove gr_pinkobj