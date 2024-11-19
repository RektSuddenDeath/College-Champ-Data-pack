
execute unless entity @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] run return 0

scoreboard players operation the_split_conveyor_f pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 32 math 32
scoreboard players operation the_split_conveyor_f pkw2_dynamic %= 32 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 0 run fill ~-4 ~ ~24 ~-2 ~ ~24 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 0 run fill ~4 ~ ~24 ~2 ~ ~24 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 4 run fill ~-4 ~ ~23 ~-2 ~ ~23 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 4 run fill ~4 ~ ~23 ~2 ~ ~23 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 8 run fill ~-4 ~ ~22 ~-2 ~ ~22 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 8 run fill ~4 ~ ~22 ~2 ~ ~22 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 12 run fill ~-4 ~ ~21 ~-2 ~ ~21 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 12 run fill ~4 ~ ~21 ~2 ~ ~21 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 16 run fill ~-4 ~ ~20 ~-2 ~ ~20 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 16 run fill ~4 ~ ~20 ~2 ~ ~20 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 20 run fill ~-4 ~ ~19 ~-2 ~ ~19 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 20 run fill ~4 ~ ~19 ~2 ~ ~19 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 24 run fill ~-4 ~ ~18 ~-2 ~ ~18 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 24 run fill ~4 ~ ~18 ~2 ~ ~18 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 28 run fill ~-4 ~ ~17 ~-2 ~ ~17 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 28 run fill ~4 ~ ~17 ~2 ~ ~17 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 0 run fill ~-4 ~ ~16 ~-2 ~ ~16 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 0 run fill ~4 ~ ~16 ~2 ~ ~16 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 4 run fill ~-4 ~ ~15 ~-2 ~ ~15 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 4 run fill ~4 ~ ~15 ~2 ~ ~15 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 8 run fill ~-4 ~ ~14 ~-2 ~ ~14 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 8 run fill ~4 ~ ~14 ~2 ~ ~14 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 12 run fill ~-4 ~ ~13 ~-2 ~ ~13 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 12 run fill ~4 ~ ~13 ~2 ~ ~13 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 16 run fill ~-4 ~ ~12 ~-2 ~ ~12 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 16 run fill ~4 ~ ~12 ~2 ~ ~12 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 20 run fill ~-4 ~ ~11 ~-2 ~ ~11 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 20 run fill ~4 ~ ~11 ~2 ~ ~11 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 24 run fill ~-4 ~ ~10 ~-2 ~ ~10 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 24 run fill ~4 ~ ~10 ~2 ~ ~10 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 28 run fill ~-4 ~ ~9 ~-2 ~ ~9 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 28 run fill ~4 ~ ~9 ~2 ~ ~9 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 0 run fill ~-4 ~ ~8 ~-2 ~ ~8 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 0 run fill ~4 ~ ~8 ~2 ~ ~8 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 4 run fill ~-4 ~ ~7 ~-2 ~ ~7 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 4 run fill ~4 ~ ~7 ~2 ~ ~7 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 8 run fill ~-4 ~ ~6 ~-2 ~ ~6 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 8 run fill ~4 ~ ~6 ~2 ~ ~6 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 12 run fill ~-4 ~ ~5 ~-2 ~ ~5 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 12 run fill ~4 ~ ~5 ~2 ~ ~5 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 16 run fill ~-4 ~ ~4 ~-2 ~ ~4 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 16 run fill ~4 ~ ~4 ~2 ~ ~4 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 20 run fill ~-4 ~ ~3 ~-2 ~ ~3 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 20 run fill ~4 ~ ~3 ~2 ~ ~3 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 24 run fill ~-4 ~ ~2 ~-2 ~ ~2 polished_granite
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 24 run fill ~4 ~ ~2 ~2 ~ ~2 polished_granite


execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 24 run fill ~-3 ~ ~24 ~-3 ~ ~24 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 24 run fill ~3 ~ ~24 ~3 ~ ~24 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 28 run fill ~-3 ~ ~23 ~-3 ~ ~23 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 28 run fill ~3 ~ ~23 ~3 ~ ~23 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 0 run fill ~-3 ~ ~22 ~-3 ~ ~22 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 0 run fill ~3 ~ ~22 ~3 ~ ~22 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 4 run fill ~-3 ~ ~21 ~-3 ~ ~21 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 4 run fill ~3 ~ ~21 ~3 ~ ~21 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 8 run fill ~-3 ~ ~20 ~-3 ~ ~20 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 8 run fill ~3 ~ ~20 ~3 ~ ~20 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 12 run fill ~-3 ~ ~19 ~-3 ~ ~19 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 12 run fill ~3 ~ ~19 ~3 ~ ~19 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 16 run fill ~-3 ~ ~18 ~-3 ~ ~18 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 16 run fill ~3 ~ ~18 ~3 ~ ~18 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 20 run fill ~-3 ~ ~17 ~-3 ~ ~17 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 20 run fill ~3 ~ ~17 ~3 ~ ~17 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 24 run fill ~-3 ~ ~16 ~-3 ~ ~16 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 24 run fill ~3 ~ ~16 ~3 ~ ~16 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 28 run fill ~-3 ~ ~15 ~-3 ~ ~15 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 28 run fill ~3 ~ ~15 ~3 ~ ~15 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 0 run fill ~-3 ~ ~14 ~-3 ~ ~14 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 0 run fill ~3 ~ ~14 ~3 ~ ~14 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 4 run fill ~-3 ~ ~13 ~-3 ~ ~13 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 4 run fill ~3 ~ ~13 ~3 ~ ~13 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 8 run fill ~-3 ~ ~12 ~-3 ~ ~12 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 8 run fill ~3 ~ ~12 ~3 ~ ~12 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 12 run fill ~-3 ~ ~11 ~-3 ~ ~11 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 12 run fill ~3 ~ ~11 ~3 ~ ~11 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 16 run fill ~-3 ~ ~10 ~-3 ~ ~10 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 16 run fill ~3 ~ ~10 ~3 ~ ~10 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 20 run fill ~-3 ~ ~9 ~-3 ~ ~9 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 20 run fill ~3 ~ ~9 ~3 ~ ~9 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 24 run fill ~-3 ~ ~8 ~-3 ~ ~8 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 24 run fill ~3 ~ ~8 ~3 ~ ~8 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 28 run fill ~-3 ~ ~7 ~-3 ~ ~7 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 28 run fill ~3 ~ ~7 ~3 ~ ~7 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 0 run fill ~-3 ~ ~6 ~-3 ~ ~6 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 0 run fill ~3 ~ ~6 ~3 ~ ~6 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 4 run fill ~-3 ~ ~5 ~-3 ~ ~5 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 4 run fill ~3 ~ ~5 ~3 ~ ~5 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 8 run fill ~-3 ~ ~4 ~-3 ~ ~4 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 8 run fill ~3 ~ ~4 ~3 ~ ~4 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 12 run fill ~-3 ~ ~3 ~-3 ~ ~3 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 12 run fill ~3 ~ ~3 ~3 ~ ~3 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 16 run fill ~-3 ~ ~2 ~-3 ~ ~2 air destroy
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 16 run fill ~3 ~ ~2 ~3 ~ ~2 air destroy

execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 24 run fill ~-4 ~ ~24 ~-2 ~ ~24 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 24 run fill ~4 ~ ~24 ~2 ~ ~24 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 28 run fill ~-4 ~ ~23 ~-2 ~ ~23 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 28 run fill ~4 ~ ~23 ~2 ~ ~23 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 0 run fill ~-4 ~ ~22 ~-2 ~ ~22 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 0 run fill ~4 ~ ~22 ~2 ~ ~22 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 4 run fill ~-4 ~ ~21 ~-2 ~ ~21 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 4 run fill ~4 ~ ~21 ~2 ~ ~21 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 8 run fill ~-4 ~ ~20 ~-2 ~ ~20 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 8 run fill ~4 ~ ~20 ~2 ~ ~20 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 12 run fill ~-4 ~ ~19 ~-2 ~ ~19 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 12 run fill ~4 ~ ~19 ~2 ~ ~19 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 16 run fill ~-4 ~ ~18 ~-2 ~ ~18 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 16 run fill ~4 ~ ~18 ~2 ~ ~18 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 20 run fill ~-4 ~ ~17 ~-2 ~ ~17 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 20 run fill ~4 ~ ~17 ~2 ~ ~17 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 24 run fill ~-4 ~ ~16 ~-2 ~ ~16 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 24 run fill ~4 ~ ~16 ~2 ~ ~16 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 28 run fill ~-4 ~ ~15 ~-2 ~ ~15 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 28 run fill ~4 ~ ~15 ~2 ~ ~15 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 0 run fill ~-4 ~ ~14 ~-2 ~ ~14 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 0 run fill ~4 ~ ~14 ~2 ~ ~14 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 4 run fill ~-4 ~ ~13 ~-2 ~ ~13 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 4 run fill ~4 ~ ~13 ~2 ~ ~13 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 8 run fill ~-4 ~ ~12 ~-2 ~ ~12 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 8 run fill ~4 ~ ~12 ~2 ~ ~12 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 12 run fill ~-4 ~ ~11 ~-2 ~ ~11 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 12 run fill ~4 ~ ~11 ~2 ~ ~11 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 16 run fill ~-4 ~ ~10 ~-2 ~ ~10 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 16 run fill ~4 ~ ~10 ~2 ~ ~10 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 20 run fill ~-4 ~ ~9 ~-2 ~ ~9 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 20 run fill ~4 ~ ~9 ~2 ~ ~9 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 24 run fill ~-4 ~ ~8 ~-2 ~ ~8 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 24 run fill ~4 ~ ~8 ~2 ~ ~8 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 28 run fill ~-4 ~ ~7 ~-2 ~ ~7 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 28 run fill ~4 ~ ~7 ~2 ~ ~7 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 0 run fill ~-4 ~ ~6 ~-2 ~ ~6 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 0 run fill ~4 ~ ~6 ~2 ~ ~6 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 4 run fill ~-4 ~ ~5 ~-2 ~ ~5 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 4 run fill ~4 ~ ~5 ~2 ~ ~5 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 8 run fill ~-4 ~ ~4 ~-2 ~ ~4 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 8 run fill ~4 ~ ~4 ~2 ~ ~4 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 12 run fill ~-4 ~ ~3 ~-2 ~ ~3 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 12 run fill ~4 ~ ~3 ~2 ~ ~3 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 16 run fill ~-4 ~ ~2 ~-2 ~ ~2 air
execute at @e[type=marker,tag=the_split_conveyor_f,tag=pw_dynamic] if score the_split_conveyor_f pkw2_dynamic matches 16 run fill ~4 ~ ~2 ~2 ~ ~2 air