
execute unless entity @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] run return 0

scoreboard players operation the_cage_spin pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 32 math 32
scoreboard players operation the_cage_spin pkw2_dynamic %= 32 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 0 run fill ~-3 ~ ~ ~-5 ~ ~ chain[axis=x]
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 0 run fill ~-11 ~ ~-5 ~-13 ~ ~-5 chain[axis=x]
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 0 run fill ~-18 ~ ~ ~-20 ~ ~ chain[axis=x]

execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 8 run fill ~-6 ~ ~-1 ~-6 ~ ~-3 chain[axis=z]
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 8 run fill ~-14 ~ ~-6 ~-14 ~ ~-8 chain[axis=z]
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 8 run fill ~-21 ~ ~-1 ~-21 ~ ~-3 chain[axis=z]

execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 16 run fill ~-7 ~ ~ ~-9 ~ ~ chain[axis=x]
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 16 run fill ~-15 ~ ~-5 ~-17 ~ ~-5 chain[axis=x]
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 16 run fill ~-22 ~ ~ ~-24 ~ ~ chain[axis=x]

execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 24 run fill ~-6 ~ ~1 ~-6 ~ ~3 chain[axis=z]
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 24 run fill ~-14 ~ ~-2 ~-14 ~ ~-4 chain[axis=z]
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 24 run fill ~-21 ~ ~1 ~-21 ~ ~3 chain[axis=z]

execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 24 run fill ~-3 ~ ~ ~-5 ~ ~ air destroy
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 24 run fill ~-11 ~ ~-5 ~-13 ~ ~-5 air destroy
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 24 run fill ~-18 ~ ~ ~-20 ~ ~ air destroy

execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 0 run fill ~-6 ~ ~-1 ~-6 ~ ~-3 air destroy
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 0 run fill ~-14 ~ ~-6 ~-14 ~ ~-8 air destroy
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 0 run fill ~-21 ~ ~-1 ~-21 ~ ~-3 air destroy

execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 8 run fill ~-7 ~ ~ ~-9 ~ ~ air destroy
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 8 run fill ~-15 ~ ~-5 ~-17 ~ ~-5 air destroy
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 8 run fill ~-22 ~ ~ ~-24 ~ ~ air destroy

execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 16 run fill ~-6 ~ ~1 ~-6 ~ ~3 air destroy
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 16 run fill ~-14 ~ ~-2 ~-14 ~ ~-4 air destroy
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 16 run fill ~-21 ~ ~1 ~-21 ~ ~3 air destroy


execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 0 run particle smoke ~-3 ~ ~ 0.25 0.1 0.25 0.08 2
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 0 run particle smoke ~-11 ~ ~-5 0.25 0.1 0.25 0.08 2
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 0 run particle smoke ~-18 ~ ~ 0.25 0.1 0.25 0.08 2

execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 8 run particle smoke ~-6 ~ ~-1 0.25 0.1 0.25 0.08 2
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 8 run particle smoke ~-14 ~ ~-6 0.25 0.1 0.25 0.08 2
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 8 run particle smoke ~-21 ~ ~-1 0.25 0.1 0.25 0.08 2

execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 16 run particle smoke ~-7 ~ ~ 0.25 0.1 0.25 0.08 2
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 16 run particle smoke ~-15 ~ ~-5 0.25 0.1 0.25 0.08 2
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 16 run particle smoke ~-22 ~ ~ 0.25 0.1 0.25 0.08 2

execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 24 run particle smoke ~-6 ~ ~1 0.25 0.1 0.25 0.08 2
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 24 run particle smoke ~-14 ~ ~-2 0.25 0.1 0.25 0.08 2
execute at @e[type=marker,tag=the_cage_spin,tag=pw_dynamic] if score the_cage_spin pkw2_dynamic matches 24 run particle smoke ~-21 ~ ~1 0.25 0.1 0.25 0.08 2
