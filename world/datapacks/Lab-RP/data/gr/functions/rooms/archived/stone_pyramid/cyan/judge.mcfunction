
# 
function gr:rooms/6/cyan/time
#

scoreboard objectives add gr_cyanobj dummy

execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~2 ~8 ~17 hopper{Items:[{Slot:0b,id:"minecraft:gold_block"}]} run scoreboard players add 1 gr_cyanobj 1

execute if score 1 gr_cyanobj matches 1 run function gr:rooms/6/cyan/complete
scoreboard objectives remove gr_cyanobj