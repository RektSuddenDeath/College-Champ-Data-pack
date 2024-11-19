
execute unless entity @e[type=marker,tag=the_dropping_sides_2,tag=pw_dynamic] run return 0

scoreboard players operation the_dropping_sides_2 pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 40 math 40
scoreboard players operation the_dropping_sides_2 pkw2_dynamic %= 40 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_dropping_sides_2,tag=pw_dynamic] if score the_dropping_sides_2 pkw2_dynamic matches 0 run particle smoke ~-8 ~ ~-1 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_dropping_sides_2,tag=pw_dynamic] if score the_dropping_sides_2 pkw2_dynamic matches 0 run particle smoke ~-14 ~ ~-4 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_dropping_sides_2,tag=pw_dynamic] if score the_dropping_sides_2 pkw2_dynamic matches 0 run particle smoke ~-18 ~ ~-2 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_dropping_sides_2,tag=pw_dynamic] if score the_dropping_sides_2 pkw2_dynamic matches 0 run particle smoke ~-24 ~ ~-5 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_dropping_sides_2,tag=pw_dynamic] if score the_dropping_sides_2 pkw2_dynamic matches 0 run particle smoke ~-26 ~ ~1 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_dropping_sides_2,tag=pw_dynamic] if score the_dropping_sides_2 pkw2_dynamic matches 0 run particle smoke ~-31 ~ ~ 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_dropping_sides_2,tag=pw_dynamic] if score the_dropping_sides_2 pkw2_dynamic matches 0 run particle smoke ~-37 ~ ~ 0.20 0.1 0.20 0.08 6

execute at @e[type=marker,tag=the_dropping_sides_2,tag=pw_dynamic] if score the_dropping_sides_2 pkw2_dynamic matches 0 run place template pkw2:dropping_sides/0 ~-38 ~ ~-6

execute at @e[type=marker,tag=the_dropping_sides_2,tag=pw_dynamic] if score the_dropping_sides_2 pkw2_dynamic matches 30 run setblock ~-8 ~ ~-1 air destroy
execute at @e[type=marker,tag=the_dropping_sides_2,tag=pw_dynamic] if score the_dropping_sides_2 pkw2_dynamic matches 30 run setblock ~-14 ~ ~-4 air destroy
execute at @e[type=marker,tag=the_dropping_sides_2,tag=pw_dynamic] if score the_dropping_sides_2 pkw2_dynamic matches 30 run setblock ~-18 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_dropping_sides_2,tag=pw_dynamic] if score the_dropping_sides_2 pkw2_dynamic matches 30 run setblock ~-24 ~ ~-5 air destroy
execute at @e[type=marker,tag=the_dropping_sides_2,tag=pw_dynamic] if score the_dropping_sides_2 pkw2_dynamic matches 30 run setblock ~-26 ~ ~1 air destroy
execute at @e[type=marker,tag=the_dropping_sides_2,tag=pw_dynamic] if score the_dropping_sides_2 pkw2_dynamic matches 30 run setblock ~-31 ~ ~ air destroy
execute at @e[type=marker,tag=the_dropping_sides_2,tag=pw_dynamic] if score the_dropping_sides_2 pkw2_dynamic matches 30 run setblock ~-37 ~ ~ air destroy

execute at @e[type=marker,tag=the_dropping_sides_2,tag=pw_dynamic] if score the_dropping_sides_2 pkw2_dynamic matches 30 run place template pkw2:dropping_sides/3 ~-38 ~ ~-6
