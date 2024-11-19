
execute unless entity @e[type=marker,tag=the_stacked_pass,tag=pw_dynamic] run return 0

scoreboard players operation the_stacked_pass pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 50 math 50
scoreboard players operation the_stacked_pass pkw2_dynamic %= 50 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_stacked_pass,tag=pw_dynamic] if score the_stacked_pass pkw2_dynamic matches 0 run fill ~-4 ~1 ~ ~-8 ~1 ~-1 calcite
execute at @e[type=marker,tag=the_stacked_pass,tag=pw_dynamic] if score the_stacked_pass pkw2_dynamic matches 0 run fill ~-10 ~2 ~4 ~-14 ~2 ~3 calcite
execute at @e[type=marker,tag=the_stacked_pass,tag=pw_dynamic] if score the_stacked_pass pkw2_dynamic matches 0 run fill ~-16 ~3 ~ ~-20 ~3 ~1 calcite

execute at @e[type=marker,tag=the_stacked_pass,tag=pw_dynamic] if score the_stacked_pass pkw2_dynamic matches 25 run fill ~-4 ~1 ~ ~-8 ~1 ~-1 air destroy
execute at @e[type=marker,tag=the_stacked_pass,tag=pw_dynamic] if score the_stacked_pass pkw2_dynamic matches 25 run fill ~-10 ~2 ~4 ~-14 ~2 ~3 air destroy
execute at @e[type=marker,tag=the_stacked_pass,tag=pw_dynamic] if score the_stacked_pass pkw2_dynamic matches 25 run fill ~-16 ~3 ~ ~-20 ~3 ~1 air destroy