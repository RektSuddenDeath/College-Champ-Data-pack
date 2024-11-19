
# 
function gr:rooms/8/yellow/time
#
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s run execute as @e[type=item,dx=31,dy=20,dz=31,nbt=!{Item:{id:"minecraft:gold_block"}}] run kill @s
# summon chest_minecart
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~27 ~11 ~10 oak_button[powered=true] run kill @e[type=chest_minecart,tag=yellow,tag=grroom]
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~27 ~11 ~10 oak_button[powered=true] run summon chest_minecart ~29 ~12 ~7 {Tags:["yellow","grroom"]}
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~27 ~11 ~10 oak_button[powered=true] run setblock ~27 ~11 ~10 oak_button[facing=south]
execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~27 ~11 ~10 oak_button[powered=true] run data merge block ~8 ~12 ~14 {Items:[{Slot:0b,id:"minecraft:gold_block",tag:{display:{Name:'{"text":"Key"}'}},Count:1b}]}

scoreboard objectives add gr_yellowobj dummy

execute as @e[type=area_effect_cloud,tag=gr_yellowanchor] at @s if block ~2 ~9 ~17 hopper{Items:[{Slot:0b,id:"minecraft:gold_block"}]} run scoreboard players add 1 gr_yellowobj 1


execute if score 1 gr_yellowobj matches 1 run function gr:rooms/8/yellow/complete
scoreboard objectives remove gr_yellowobj