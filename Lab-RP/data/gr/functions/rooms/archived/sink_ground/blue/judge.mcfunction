
# 
function gr:rooms/8/blue/time
#
# summon chest_minecart
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s run setblock ~3 98 ~9 red_concrete
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~19 102 ~6 stone_button[powered=true] if block ~22 102 ~24 stone_button[powered=true] if block ~13 102 ~24 stone_button[powered=true] run setblock ~3 98 ~9 redstone_block

scoreboard objectives add gr_blueobj dummy

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~2 104 ~12 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~4 104 ~12 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~2 104 ~18 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~4 104 ~18 redstone_lamp[lit=true] run scoreboard players add 1 gr_blueobj 1


execute if score 1 gr_blueobj matches 4 run function gr:rooms/8/blue/complete
scoreboard objectives remove gr_blueobj