
# 
function gr:rooms/6/blue/time
#

execute as @a[team=blue] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:dirt"}},distance=0..5]
execute as @a[team=blue] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:coarse_dirt"}},distance=0..5]

scoreboard objectives add gr_blueobj dummy

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~17 101 ~12 hopper{Items:[{Slot:0b,id:"minecraft:netherite_sword"}]} run setblock ~16 102 ~12 lime_concrete
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~17 101 ~18 hopper{Items:[{Slot:0b,id:"minecraft:netherite_chestplate"}]} run setblock ~16 102 ~18 lime_concrete

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~16 102 ~12 lime_concrete run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~16 102 ~18 lime_concrete run scoreboard players add 1 gr_blueobj 1

execute if score 1 gr_blueobj matches 2 run function gr:rooms/6/blue/complete
scoreboard objectives remove gr_blueobj