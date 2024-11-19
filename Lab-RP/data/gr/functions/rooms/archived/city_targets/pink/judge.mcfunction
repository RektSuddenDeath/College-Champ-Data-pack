# Anchor 14886 91 14968
# ID 1 City Targets
# 
function gr:rooms/1/pink/time
#

scoreboard objectives add gr_pinkobj dummy

execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~19 ~9 ~29 redstone_lamp[lit=true] if block ~19 ~10 ~29 target run execute as @a[team=pink] at @s run playsound gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~19 ~9 ~29 redstone_lamp[lit=true] run setblock ~19 ~10 ~29 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~19 ~10 ~29 emerald_block run scoreboard players add 1 gr_pinkobj 1

execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~22 ~8 ~19 redstone_lamp[lit=true] if block ~22 ~9 ~19 target run execute as @a[team=pink] at @s run playsound gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~22 ~8 ~19 redstone_lamp[lit=true] run setblock ~22 ~9 ~19 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~22 ~9 ~19 emerald_block run scoreboard players add 1 gr_pinkobj 1

execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~18 ~8 ~17 redstone_lamp[lit=true] if block ~18 ~9 ~17 target run execute as @a[team=pink] at @s run playsound gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~18 ~8 ~17 redstone_lamp[lit=true] run setblock ~18 ~9 ~17 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~18 ~9 ~17 emerald_block run scoreboard players add 1 gr_pinkobj 1

execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~17 ~9 ~12 redstone_lamp[lit=true] if block ~17 ~10 ~12 target run execute as @a[team=pink] at @s run playsound gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~17 ~9 ~12 redstone_lamp[lit=true] run setblock ~17 ~10 ~12 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~17 ~10 ~12 emerald_block run scoreboard players add 1 gr_pinkobj 1

execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~15 ~13 ~6 redstone_lamp[lit=true] if block ~16 ~13 ~6 target run execute as @a[team=pink] at @s run playsound gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~15 ~13 ~6 redstone_lamp[lit=true] run setblock ~16 ~13 ~6 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~16 ~13 ~6 emerald_block run scoreboard players add 1 gr_pinkobj 1

execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~14 ~12 ~5 redstone_lamp[lit=true] if block ~14 ~12 ~6 target run execute as @a[team=pink] at @s run playsound gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~14 ~12 ~5 redstone_lamp[lit=true] run setblock ~14 ~12 ~6 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~14 ~12 ~6 emerald_block run scoreboard players add 1 gr_pinkobj 1
###############
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~15 ~13 ~29 redstone_lamp[lit=true] if block ~15 ~13 ~28 target run execute as @a[team=pink] at @s run playsound gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~15 ~13 ~29 redstone_lamp[lit=true] run setblock ~15 ~13 ~28 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~15 ~13 ~28 emerald_block run scoreboard players add 1 gr_pinkobj 1

execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~10 ~11 ~24 redstone_lamp[lit=true] if block ~11 ~11 ~24 target run execute as @a[team=pink] at @s run playsound gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~10 ~11 ~24 redstone_lamp[lit=true] run setblock ~11 ~11 ~24 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~11 ~11 ~24 emerald_block run scoreboard players add 1 gr_pinkobj 1

execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~10 ~16 ~24 redstone_lamp[lit=true] if block ~11 ~16 ~24 target run execute as @a[team=pink] at @s run playsound gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~10 ~16 ~24 redstone_lamp[lit=true] run setblock ~11 ~16 ~24 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~11 ~16 ~24 emerald_block run scoreboard players add 1 gr_pinkobj 1

execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~2 ~11 ~20 redstone_lamp[lit=true] if block ~3 ~11 ~20 target run execute as @a[team=pink] at @s run playsound gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~2 ~11 ~20 redstone_lamp[lit=true] run setblock ~3 ~11 ~20 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~3 ~11 ~20 emerald_block run scoreboard players add 1 gr_pinkobj 1

execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~8 ~8 ~13 redstone_lamp[lit=true] if block ~8 ~9 ~13 target run execute as @a[team=pink] at @s run playsound gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~8 ~8 ~13 redstone_lamp[lit=true] run setblock ~8 ~9 ~13 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~8 ~9 ~13 emerald_block run scoreboard players add 1 gr_pinkobj 1

execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~8 ~8 ~17 redstone_lamp[lit=true] if block ~8 ~9 ~17 target run execute as @a[team=pink] at @s run playsound gr.targethit record @s
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~8 ~8 ~17 redstone_lamp[lit=true] run setblock ~8 ~9 ~17 emerald_block
execute as @e[type=area_effect_cloud,tag=gr_pinkanchor] at @s if block ~8 ~9 ~17 emerald_block run scoreboard players add 1 gr_pinkobj 1

execute if score 1 gr_pinkobj matches 12 run function gr:rooms/1/pink/complete
scoreboard objectives remove gr_pinkobj