
execute unless entity @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] run return 0

scoreboard players operation the_sweet_squares pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 60 math 60
scoreboard players operation the_sweet_squares pkw2_dynamic %= 60 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] if score the_sweet_squares pkw2_dynamic matches 0 run fill ~-3 ~ ~3 ~-1 ~ ~5 light_blue_glazed_terracotta[facing=east]
execute at @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] if score the_sweet_squares pkw2_dynamic matches 0 run fill ~2 ~1 ~12 ~4 ~1 ~14 light_blue_glazed_terracotta[facing=east]
execute at @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] if score the_sweet_squares pkw2_dynamic matches 0 run fill ~2 ~1 ~20 ~4 ~1 ~22 light_blue_glazed_terracotta[facing=east]

execute at @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] if score the_sweet_squares pkw2_dynamic matches 5 run fill ~2 ~ ~7 ~4 ~ ~9 air destroy
execute at @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] if score the_sweet_squares pkw2_dynamic matches 5 run fill ~-4 ~ ~9 ~-2 ~ ~11 air destroy
execute at @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] if score the_sweet_squares pkw2_dynamic matches 5 run fill ~-3 ~1 ~15 ~-1 ~1 ~17 air destroy

execute at @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] if score the_sweet_squares pkw2_dynamic matches 30 run fill ~2 ~ ~7 ~4 ~ ~9 pink_glazed_terracotta
execute at @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] if score the_sweet_squares pkw2_dynamic matches 30 run fill ~-4 ~ ~9 ~-2 ~ ~11 pink_glazed_terracotta
execute at @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] if score the_sweet_squares pkw2_dynamic matches 30 run fill ~-3 ~1 ~15 ~-1 ~1 ~17 pink_glazed_terracotta

execute at @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] if score the_sweet_squares pkw2_dynamic matches 35 run fill ~-3 ~ ~3 ~-1 ~ ~5 air destroy
execute at @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] if score the_sweet_squares pkw2_dynamic matches 35 run fill ~2 ~1 ~12 ~4 ~1 ~14 air destroy
execute at @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] if score the_sweet_squares pkw2_dynamic matches 35 run fill ~2 ~1 ~20 ~4 ~1 ~22 air destroy

execute at @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] if score the_sweet_squares pkw2_dynamic matches 0 run particle smoke ~-2 ~0.5 ~3 0.25 0.1 0.25 0.08 5
execute at @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] if score the_sweet_squares pkw2_dynamic matches 0 run particle smoke ~3 ~1.5 ~13 0.25 0.1 0.25 0.08 5
execute at @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] if score the_sweet_squares pkw2_dynamic matches 0 run particle smoke ~3 ~1.5 ~21 0.25 0.1 0.25 0.08 5

execute at @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] if score the_sweet_squares pkw2_dynamic matches 30 run particle smoke ~3 ~0.5 ~8 0.25 0.1 0.25 0.08 5
execute at @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] if score the_sweet_squares pkw2_dynamic matches 30 run particle smoke ~-3 ~0.5 ~10 0.25 0.1 0.25 0.08 5
execute at @e[type=marker,tag=the_sweet_squares,tag=pw_dynamic] if score the_sweet_squares pkw2_dynamic matches 30 run particle smoke ~-2 ~1.5 ~16 0.25 0.1 0.25 0.08 5