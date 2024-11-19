
execute unless entity @e[type=marker,tag=the_sideways_skip,tag=pw_dynamic] run return 0

scoreboard players operation the_sideways_skip pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 60 math 60
scoreboard players operation the_sideways_skip pkw2_dynamic %= 60 math

# Animation (replace return 0 with the right item)

execute at @e[type=marker,tag=the_sideways_skip,tag=pw_dynamic] if score the_sideways_skip pkw2_dynamic matches 30 run fill ~-6 ~ ~4 ~-8 ~ ~4 air destroy
execute at @e[type=marker,tag=the_sideways_skip,tag=pw_dynamic] if score the_sideways_skip pkw2_dynamic matches 30 run fill ~-14 ~ ~4 ~-16 ~ ~4 air destroy
execute at @e[type=marker,tag=the_sideways_skip,tag=pw_dynamic] if score the_sideways_skip pkw2_dynamic matches 30 run fill ~-20 ~ ~-2 ~-22 ~ ~-2 air destroy

execute at @e[type=marker,tag=the_sideways_skip,tag=pw_dynamic] if score the_sideways_skip pkw2_dynamic matches 0 run particle smoke ~-7 ~ ~4 0.1 0.1 0.1 0.08 4
execute at @e[type=marker,tag=the_sideways_skip,tag=pw_dynamic] if score the_sideways_skip pkw2_dynamic matches 0 run particle smoke ~-15 ~ ~4 0.1 0.1 0.1 0.08 4
execute at @e[type=marker,tag=the_sideways_skip,tag=pw_dynamic] if score the_sideways_skip pkw2_dynamic matches 0 run particle smoke ~-21 ~ ~-2 0.1 0.1 0.1 0.08 4

execute at @e[type=marker,tag=the_sideways_skip,tag=pw_dynamic] if score the_sideways_skip pkw2_dynamic matches 0 run place template pkw2:the_sideways_skip/1 ~-25 ~ ~-5
execute at @e[type=marker,tag=the_sideways_skip,tag=pw_dynamic] if score the_sideways_skip pkw2_dynamic matches 30 run place template pkw2:the_sideways_skip/2 ~-25 ~ ~-5