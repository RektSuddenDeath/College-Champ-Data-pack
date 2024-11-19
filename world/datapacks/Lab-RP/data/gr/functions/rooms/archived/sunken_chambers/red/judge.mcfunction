# Anchor 14886 91 14968
# 
function gr:rooms/8/red/time

# Fallen Players
execute as @a[team=red,scores={health=1..,univ_death=1..}] run effect give @s saturation infinite 5 true
execute as @a[team=red,scores={health=1..,univ_death=1..}] run effect give @s night_vision infinite 0 true
execute as @a[team=red,scores={health=1..,univ_death=1..}] run effect give @s absorption infinite 1 true
execute as @a[team=red,scores={health=1..,univ_death=1..}] run attribute @s generic.max_health base set 1
execute as @a[team=red,scores={health=1..,univ_death=1..}] run scoreboard players set @s univ_death 0

scoreboard objectives add gr_redobj dummy
# Judge Plates
scoreboard players set plate_red gr_redobj 0
scoreboard players set plate_orange gr_redobj 0
scoreboard players set plate_yellow gr_redobj 0
scoreboard players set plate_pink gr_redobj 0
scoreboard players set plate_purple gr_redobj 0
scoreboard players set plate_green gr_redobj 0


execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~13 102 ~27 stone_pressure_plate[powered=true] run scoreboard players set plate_red gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~18 102 ~27 stone_pressure_plate[powered=true] run scoreboard players set plate_orange gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~23 102 ~27 stone_pressure_plate[powered=true] run scoreboard players set plate_yellow gr_redobj 1

execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~13 102 ~3 stone_pressure_plate[powered=true] run scoreboard players set plate_pink gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~18 102 ~3 stone_pressure_plate[powered=true] run scoreboard players set plate_purple gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~23 102 ~3 stone_pressure_plate[powered=true] run scoreboard players set plate_green gr_redobj 1

execute if score plate_red gr_redobj matches 1 if score plate_pink gr_redobj matches 1 run scoreboard players set pair_1 gr_redobj 1
execute if score plate_red gr_redobj matches 1 if score plate_purple gr_redobj matches 1 run scoreboard players set pair_2 gr_redobj 1
execute if score plate_red gr_redobj matches 1 if score plate_green gr_redobj matches 1 run scoreboard players set pair_3 gr_redobj 1
execute if score plate_orange gr_redobj matches 1 if score plate_pink gr_redobj matches 1 run scoreboard players set pair_4 gr_redobj 1
execute if score plate_orange gr_redobj matches 1 if score plate_purple gr_redobj matches 1 run scoreboard players set pair_5 gr_redobj 1
execute if score plate_orange gr_redobj matches 1 if score plate_green gr_redobj matches 1 run scoreboard players set pair_6 gr_redobj 1
execute if score plate_yellow gr_redobj matches 1 if score plate_pink gr_redobj matches 1 run scoreboard players set pair_7 gr_redobj 1
execute if score plate_yellow gr_redobj matches 1 if score plate_purple gr_redobj matches 1 run scoreboard players set pair_8 gr_redobj 1
execute if score plate_yellow gr_redobj matches 1 if score plate_green gr_redobj matches 1 run scoreboard players set pair_9 gr_redobj 1
# Gates (16)
execute if score pair_3 gr_redobj matches 1 run fill ~25 97 ~20 ~26 99 ~20 water
execute unless score pair_3 gr_redobj matches 1 run fill ~25 97 ~20 ~26 99 ~20 oxidized_copper

execute if score pair_7 gr_redobj matches 1 run fill ~25 97 ~10 ~26 99 ~10 water
execute unless score pair_7 gr_redobj matches 1 run fill ~25 97 ~10 ~26 99 ~10 oxidized_copper

execute if score pair_8 gr_redobj matches 1 run fill ~23 97 ~18 ~23 99 ~17 water
execute unless score pair_8 gr_redobj matches 1 run fill ~23 97 ~18 ~23 99 ~17 oxidized_copper

execute if score pair_1 gr_redobj matches 1 run fill ~23 97 ~9 ~23 99 ~8 water
execute unless score pair_1 gr_redobj matches 1 run fill ~23 97 ~9 ~23 99 ~8 oxidized_copper

execute if score pair_3 gr_redobj matches 1 run fill ~18 97 ~18 ~18 99 ~17 water
execute unless score pair_3 gr_redobj matches 1 run fill ~18 97 ~18 ~18 99 ~17 oxidized_copper

execute if score pair_4 gr_redobj matches 1 run fill ~18 97 ~13 ~18 99 ~12 water
execute unless score pair_4 gr_redobj matches 1 run fill ~18 97 ~13 ~18 99 ~12 oxidized_copper

execute if score pair_2 gr_redobj matches 1 run fill ~18 97 ~9 ~18 99 ~8 water
execute unless score pair_2 gr_redobj matches 1 run fill ~18 97 ~9 ~18 99 ~8 oxidized_copper

execute if score pair_8 gr_redobj matches 1 run fill ~15 97 ~20 ~16 99 ~20 water
execute unless score pair_8 gr_redobj matches 1 run fill ~15 97 ~20 ~16 99 ~20 oxidized_copper

execute if score pair_1 gr_redobj matches 1 run fill ~15 97 ~10 ~16 99 ~10 water
execute unless score pair_1 gr_redobj matches 1 run fill ~15 97 ~10 ~16 99 ~10 oxidized_copper

execute if score pair_6 gr_redobj matches 1 run fill ~13 97 ~22 ~13 99 ~21 water
execute unless score pair_6 gr_redobj matches 1 run fill ~13 97 ~22 ~13 99 ~21 oxidized_copper

execute if score pair_5 gr_redobj matches 1 run fill ~13 97 ~18 ~13 99 ~17 water
execute unless score pair_5 gr_redobj matches 1 run fill ~13 97 ~18 ~13 99 ~17 oxidized_copper

execute if score pair_3 gr_redobj matches 1 run fill ~10 97 ~15 ~11 99 ~15 water
execute unless score pair_3 gr_redobj matches 1 run fill ~10 97 ~15 ~11 99 ~15 oxidized_copper

execute if score pair_3 gr_redobj matches 1 run fill ~10 97 ~10 ~11 99 ~10 water
execute unless score pair_3 gr_redobj matches 1 run fill ~10 97 ~10 ~11 99 ~10 oxidized_copper

execute if score pair_7 gr_redobj matches 1 run fill ~8 97 ~22 ~8 99 ~21 water
execute unless score pair_7 gr_redobj matches 1 run fill ~8 97 ~22 ~8 99 ~21 oxidized_copper

execute if score pair_8 gr_redobj matches 1 run fill ~8 97 ~8 ~8 99 ~7 water
execute unless score pair_8 gr_redobj matches 1 run fill ~8 97 ~8 ~8 99 ~7 oxidized_copper

execute if score pair_2 gr_redobj matches 1 run fill ~6 97 ~20 ~7 99 ~20 water
execute unless score pair_2 gr_redobj matches 1 run fill ~6 97 ~20 ~7 99 ~20 oxidized_copper
# Lamps (14)
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~25 93 ~22 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~25 93 ~17 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~23 93 ~13 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~25 93 ~8 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~20 93 ~8 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~21 93 ~20 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~16 93 ~22 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~15 93 ~15 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~13 93 ~8 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~10 93 ~13 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~10 93 ~18 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~10 93 ~22 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~6 93 ~22 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1
execute as @e[type=area_effect_cloud,tag=gr_redanchor] at @s if block ~6 93 ~15 redstone_lamp[lit=true] run scoreboard players add 1 gr_redobj 1

execute if score 1 gr_redobj matches 14 run function gr:rooms/8/red/complete
scoreboard objectives remove gr_redobj