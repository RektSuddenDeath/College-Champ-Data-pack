
execute unless entity @e[type=marker,tag=the_dropping_sides,tag=pw_dynamic] run return 0

scoreboard players operation the_dropping_sides pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 40 math 40
scoreboard players operation the_dropping_sides pkw2_dynamic %= 40 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_dropping_sides,tag=pw_dynamic] if score the_dropping_sides pkw2_dynamic matches 0 run place template pkw2:dropping_sides/1 ~-38 ~ ~-6
execute at @e[type=marker,tag=the_dropping_sides,tag=pw_dynamic] if score the_dropping_sides pkw2_dynamic matches 0 run setblock ~-5 ~ ~ air destroy
execute at @e[type=marker,tag=the_dropping_sides,tag=pw_dynamic] if score the_dropping_sides pkw2_dynamic matches 0 run setblock ~-15 ~ ~-1 air destroy
execute at @e[type=marker,tag=the_dropping_sides,tag=pw_dynamic] if score the_dropping_sides pkw2_dynamic matches 0 run setblock ~-25 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_dropping_sides,tag=pw_dynamic] if score the_dropping_sides pkw2_dynamic matches 0 run setblock ~-34 ~ ~1 air destroy

execute at @e[type=marker,tag=the_dropping_sides,tag=pw_dynamic] if score the_dropping_sides pkw2_dynamic matches 20 run place template pkw2:dropping_sides/2 ~-38 ~ ~-6
execute at @e[type=marker,tag=the_dropping_sides,tag=pw_dynamic] if score the_dropping_sides pkw2_dynamic matches 20 run setblock ~-5 ~ ~ air destroy
execute at @e[type=marker,tag=the_dropping_sides,tag=pw_dynamic] if score the_dropping_sides pkw2_dynamic matches 20 run setblock ~-15 ~ ~-1 air destroy
execute at @e[type=marker,tag=the_dropping_sides,tag=pw_dynamic] if score the_dropping_sides pkw2_dynamic matches 20 run setblock ~-25 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_dropping_sides,tag=pw_dynamic] if score the_dropping_sides pkw2_dynamic matches 20 run setblock ~-34 ~ ~1 air destroy