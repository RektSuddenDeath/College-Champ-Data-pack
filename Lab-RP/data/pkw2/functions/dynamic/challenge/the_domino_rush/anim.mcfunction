
execute unless entity @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] run return 0

scoreboard players operation the_domino_rush pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 32 math 32
scoreboard players operation the_domino_rush pkw2_dynamic %= 32 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 0 run setblock ~-2 ~ ~ air destroy
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 0 run fill ~-2 ~ ~-1 ~-2 ~-3 ~1 air

execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 8 run setblock ~-4 ~ ~ air destroy
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 8 run fill ~-4 ~ ~-1 ~-4 ~-3 ~1 air

execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 16 run setblock ~-6 ~ ~ air destroy
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 16 run fill ~-6 ~ ~-1 ~-6 ~-3 ~1 air

execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 24 run setblock ~-8 ~ ~ air destroy
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 24 run fill ~-8 ~ ~-1 ~-8 ~-3 ~1 air

execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 0 run setblock ~-10 ~ ~ air destroy
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 0 run fill ~-10 ~ ~-1 ~-10 ~-3 ~1 air

execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 8 run setblock ~-12 ~ ~ air destroy
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 8 run fill ~-12 ~ ~-1 ~-12 ~-3 ~1 air

execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 16 run setblock ~-14 ~ ~ air destroy
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 16 run fill ~-14 ~ ~-1 ~-14 ~-3 ~1 air

execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 24 run setblock ~-16 ~ ~ air destroy
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 24 run fill ~-16 ~ ~-1 ~-16 ~-3 ~1 air

execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 0 run setblock ~-18 ~ ~ air destroy
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 0 run fill ~-18 ~ ~-1 ~-18 ~-3 ~1 air

execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 8 run setblock ~-20 ~ ~ air destroy
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 8 run fill ~-20 ~ ~-1 ~-20 ~-3 ~1 air

execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 16 run setblock ~-22 ~ ~ air destroy
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 16 run fill ~-22 ~ ~-1 ~-22 ~-3 ~1 air

execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 24 run setblock ~-24 ~ ~ air destroy
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 24 run fill ~-24 ~ ~-1 ~-24 ~-3 ~1 air




execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 16 run fill ~-2 ~ ~-1 ~-2 ~-3 ~1 calcite
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 24 run fill ~-4 ~ ~-1 ~-4 ~-3 ~1 calcite
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 0 run fill ~-6 ~ ~-1 ~-6 ~-3 ~1 calcite
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 8 run fill ~-8 ~ ~-1 ~-8 ~-3 ~1 calcite

execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 16 run fill ~-10 ~ ~-1 ~-10 ~-3 ~1 calcite
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 24 run fill ~-12 ~ ~-1 ~-12 ~-3 ~1 calcite
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 0 run fill ~-14 ~ ~-1 ~-14 ~-3 ~1 calcite
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 8 run fill ~-16 ~ ~-1 ~-16 ~-3 ~1 calcite

execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 16 run fill ~-18 ~ ~-1 ~-18 ~-3 ~1 calcite
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 24 run fill ~-20 ~ ~-1 ~-20 ~-3 ~1 calcite
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 0 run fill ~-22 ~ ~-1 ~-22 ~-3 ~1 calcite
execute at @e[type=marker,tag=the_domino_rush,tag=pw_dynamic] if score the_domino_rush pkw2_dynamic matches 8 run fill ~-24 ~ ~-1 ~-24 ~-3 ~1 calcite
