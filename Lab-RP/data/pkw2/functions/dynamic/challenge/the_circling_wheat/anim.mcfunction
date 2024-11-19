
execute unless entity @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] run return 0

scoreboard players operation the_circling_wheat pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 60 math 60
scoreboard players operation the_circling_wheat pkw2_dynamic %= 60 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 50 run fill ~2 ~ ~2 ~3 ~ ~3 hay_block[axis=x]
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 40 run fill ~1 ~ ~2 ~ ~ ~3 hay_block[axis=z]
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 30 run fill ~-1 ~ ~2 ~-2 ~ ~3 hay_block[axis=x]

execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 20 run fill ~-3 ~ ~4 ~-4 ~ ~5 hay_block[axis=z]
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 10 run fill ~-3 ~ ~6 ~-4 ~ ~7 hay_block[axis=x]
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 0 run fill ~-3 ~ ~8 ~-4 ~ ~9 hay_block[axis=z]

execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 50 run fill ~-2 ~ ~10 ~-1 ~ ~11 hay_block[axis=x]
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 40 run fill ~ ~ ~10 ~1 ~ ~11 hay_block[axis=z]
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 30 run fill ~2 ~ ~10 ~3 ~ ~11 hay_block[axis=x]

execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 20 run fill ~4 ~ ~9 ~5 ~ ~8 hay_block[axis=z]
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 10 run fill ~4 ~ ~7 ~5 ~ ~6 hay_block[axis=x]
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 0 run fill ~4 ~ ~5 ~5 ~ ~4 hay_block[axis=z]

execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 20 run fill ~2 ~ ~2 ~3 ~ ~3 air destroy
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 10 run fill ~1 ~ ~2 ~ ~ ~3 air destroy
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 0 run fill ~-1 ~ ~2 ~-2 ~ ~3 air destroy

execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 50 run fill ~-3 ~ ~4 ~-4 ~ ~5 air destroy
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 40 run fill ~-3 ~ ~6 ~-4 ~ ~7 air destroy
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 30 run fill ~-3 ~ ~8 ~-4 ~ ~9 air destroy

execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 20 run fill ~-2 ~ ~10 ~-1 ~ ~11 air destroy
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 10 run fill ~ ~ ~10 ~1 ~ ~11 air destroy
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 0 run fill ~2 ~ ~10 ~3 ~ ~11 air destroy

execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 50 run fill ~4 ~ ~9 ~5 ~ ~8 air destroy
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 40 run fill ~4 ~ ~7 ~5 ~ ~6 air destroy
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 30 run fill ~4 ~ ~5 ~5 ~ ~4 air destroy




execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 0 run fill ~4 ~ ~15 ~5 ~ ~16 hay_block[axis=x]
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 10 run fill ~3 ~ ~15 ~2 ~ ~16 hay_block[axis=z]
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 20 run fill ~1 ~ ~15 ~ ~ ~16 hay_block[axis=x]

execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 30 run fill ~-1 ~ ~17 ~-2 ~ ~18 hay_block[axis=z]
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 40 run fill ~-1 ~ ~19 ~-2 ~ ~20 hay_block[axis=x]
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 50 run fill ~-1 ~ ~21 ~-2 ~ ~22 hay_block[axis=z]

execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 0 run fill ~ ~ ~23 ~1 ~ ~24 hay_block[axis=x]
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 10 run fill ~2 ~ ~23 ~3 ~ ~24 hay_block[axis=z]
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 20 run fill ~4 ~ ~23 ~5 ~ ~24 hay_block[axis=x]

execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 30 run fill ~6 ~ ~21 ~7 ~ ~22 hay_block[axis=z]
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 40 run fill ~6 ~ ~20 ~7 ~ ~19 hay_block[axis=x]
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 50 run fill ~6 ~ ~18 ~7 ~ ~17 hay_block[axis=z]

execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 30 run fill ~4 ~ ~15 ~5 ~ ~16 air destroy
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 40 run fill ~3 ~ ~15 ~2 ~ ~16 air destroy
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 50 run fill ~1 ~ ~15 ~ ~ ~16 air destroy

execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 0 run fill ~-1 ~ ~17 ~-2 ~ ~18 air destroy
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 10 run fill ~-1 ~ ~19 ~-2 ~ ~20 air destroy
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 20 run fill ~-1 ~ ~21 ~-2 ~ ~22 air destroy

execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 30 run fill ~ ~ ~23 ~1 ~ ~24 air destroy
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 40 run fill ~2 ~ ~23 ~3 ~ ~24 air destroy
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 50 run fill ~4 ~ ~23 ~5 ~ ~24 air destroy

execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 0 run fill ~6 ~ ~21 ~7 ~ ~22 air destroy
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 10 run fill ~6 ~ ~20 ~7 ~ ~19 air destroy
execute at @e[type=marker,tag=the_circling_wheat,tag=pw_dynamic] if score the_circling_wheat pkw2_dynamic matches 20 run fill ~6 ~ ~18 ~7 ~ ~17 air destroy