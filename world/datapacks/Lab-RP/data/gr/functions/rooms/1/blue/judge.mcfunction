# Anchor 14886 91 14968
# ID 1 City Targets
# 
function gr:rooms/1/blue/time
#


scoreboard objectives add gr_blueobj dummy

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~5 ~11 ~5 target unless block ~5 ~11 ~5 target[power=0] run execute as @a[team=blue] at @s run playsound minecraft:gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~5 ~11 ~5 target unless block ~5 ~11 ~5 target[power=0] run setblock ~5 ~11 ~5 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~5 ~11 ~5 emerald_block run scoreboard players add 1 gr_blueobj 1

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~7 ~14 ~6 target unless block ~7 ~14 ~6 target[power=0] run execute as @a[team=blue] at @s run playsound minecraft:gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~7 ~14 ~6 target unless block ~7 ~14 ~6 target[power=0] run setblock ~7 ~14 ~6 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~7 ~14 ~6 emerald_block run scoreboard players add 1 gr_blueobj 1

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~9 ~18 ~14 target unless block ~9 ~18 ~14 target[power=0] run execute as @a[team=blue] at @s run playsound minecraft:gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~9 ~18 ~14 target unless block ~9 ~18 ~14 target[power=0] run setblock ~9 ~18 ~14 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~9 ~18 ~14 emerald_block run scoreboard players add 1 gr_blueobj 1

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~6 ~10 ~23 target unless block ~6 ~10 ~23 target[power=0] run execute as @a[team=blue] at @s run playsound minecraft:gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~6 ~10 ~23 target unless block ~6 ~10 ~23 target[power=0] run setblock ~6 ~10 ~23 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~6 ~10 ~23 emerald_block run scoreboard players add 1 gr_blueobj 1

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~13 ~10 ~23 target unless block ~13 ~10 ~23 target[power=0] run execute as @a[team=blue] at @s run playsound minecraft:gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~13 ~10 ~23 target unless block ~13 ~10 ~23 target[power=0] run setblock ~13 ~10 ~23 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~13 ~10 ~23 emerald_block run scoreboard players add 1 gr_blueobj 1

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~15 ~17 ~27 target unless block ~15 ~17 ~27 target[power=0] run execute as @a[team=blue] at @s run playsound minecraft:gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~15 ~17 ~27 target unless block ~15 ~17 ~27 target[power=0] run setblock ~15 ~17 ~27 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~15 ~17 ~27 emerald_block run scoreboard players add 1 gr_blueobj 1

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~13 ~10 ~23 target unless block ~13 ~10 ~23 target[power=0] run execute as @a[team=blue] at @s run playsound minecraft:gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~13 ~10 ~23 target unless block ~13 ~10 ~23 target[power=0] run setblock ~13 ~10 ~23 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~13 ~10 ~23 emerald_block run scoreboard players add 1 gr_blueobj 1

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~17 ~11 ~19 target unless block ~17 ~11 ~19 target[power=0] run execute as @a[team=blue] at @s run playsound minecraft:gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~17 ~11 ~19 target unless block ~17 ~11 ~19 target[power=0] run setblock ~17 ~11 ~19 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~17 ~11 ~19 emerald_block run scoreboard players add 1 gr_blueobj 1

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~20 ~9 ~19 target unless block ~20 ~9 ~19 target[power=0] run execute as @a[team=blue] at @s run playsound minecraft:gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~20 ~9 ~19 target unless block ~20 ~9 ~19 target[power=0] run setblock ~20 ~9 ~19 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~20 ~9 ~19 emerald_block run scoreboard players add 1 gr_blueobj 1

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~16 ~11 ~13 target unless block ~16 ~11 ~13 target[power=0] run execute as @a[team=blue] at @s run playsound minecraft:gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~16 ~11 ~13 target unless block ~16 ~11 ~13 target[power=0] run setblock ~16 ~11 ~13 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~16 ~11 ~13 emerald_block run scoreboard players add 1 gr_blueobj 1

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~17 ~11 ~12 target unless block ~17 ~11 ~12 target[power=0] run execute as @a[team=blue] at @s run playsound minecraft:gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~17 ~11 ~12 target unless block ~17 ~11 ~12 target[power=0] run setblock ~17 ~11 ~12 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~17 ~11 ~12 emerald_block run scoreboard players add 1 gr_blueobj 1

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~16 ~11 ~11 target unless block ~16 ~11 ~11 target[power=0] run execute as @a[team=blue] at @s run playsound minecraft:gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~16 ~11 ~11 target unless block ~16 ~11 ~11 target[power=0] run setblock ~16 ~11 ~11 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~16 ~11 ~11 emerald_block run scoreboard players add 1 gr_blueobj 1

execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~15 ~18 ~12 target unless block ~15 ~18 ~12 target[power=0] run execute as @a[team=blue] at @s run playsound minecraft:gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~15 ~18 ~12 target unless block ~15 ~18 ~12 target[power=0] run setblock ~15 ~18 ~12 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_blueanchor] at @s if block ~15 ~18 ~12 emerald_block run scoreboard players add 1 gr_blueobj 1



execute if score 1 gr_blueobj matches 13 run function gr:rooms/1/blue/complete
scoreboard objectives remove gr_blueobj