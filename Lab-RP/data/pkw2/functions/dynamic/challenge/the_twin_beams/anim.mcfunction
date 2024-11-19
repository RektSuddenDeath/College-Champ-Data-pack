
execute unless entity @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] run return 0

scoreboard players operation the_twin_beams pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 60 math 60
scoreboard players operation the_twin_beams pkw2_dynamic %= 60 math

# Animation (replace return 0 with the right item)

execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 0 run setblock ~-4 ~ ~2 air destroy
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 0 run setblock ~-7 ~ ~1 air destroy
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 0 run setblock ~-10 ~ ~2 air destroy
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 0 run setblock ~-15 ~ ~1 air destroy
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 0 run setblock ~-20 ~ ~2 air destroy
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 0 run setblock ~-23 ~ ~1 air destroy

execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 30 run setblock ~-4 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 30 run setblock ~-9 ~ ~-1 air destroy
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 30 run setblock ~-11 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 30 run setblock ~-15 ~ ~-1 air destroy
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 30 run setblock ~-17 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 30 run setblock ~-20 ~ ~-1 air destroy

execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 20 run particle smoke ~-4 ~ ~2 0.25 0.15 0.25 0.1 5
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 20 run particle smoke ~-7 ~ ~1 0.25 0.15 0.25 0.1 5
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 20 run particle smoke ~-10 ~ ~2 0.25 0.15 0.25 0.1 5
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 20 run particle smoke ~-15 ~ ~1 0.25 0.15 0.25 0.1 5
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 20 run particle smoke ~-20 ~ ~2 0.25 0.15 0.25 0.1 5
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 20 run particle smoke ~-23 ~ ~1 0.25 0.15 0.25 0.1 5

execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 50 run particle smoke ~-4 ~ ~-2 0.25 0.15 0.25 0.1 5
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 50 run particle smoke ~-9 ~ ~-1 0.25 0.15 0.25 0.1 5
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 50 run particle smoke ~-11 ~ ~-2 0.25 0.15 0.25 0.1 5
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 50 run particle smoke ~-15 ~ ~-1 0.25 0.15 0.25 0.1 5
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 50 run particle smoke ~-17 ~ ~-2 0.25 0.15 0.25 0.1 5
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 50 run particle smoke ~-20 ~ ~-1 0.25 0.15 0.25 0.1 5

execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 0 run place template pkw2:the_twin_beams/1 ~-25 ~ ~-2
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 20 run place template pkw2:the_twin_beams/0 ~-25 ~ ~-2
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 30 run place template pkw2:the_twin_beams/2 ~-25 ~ ~-2
execute at @e[type=marker,tag=the_twin_beams,tag=pw_dynamic] if score the_twin_beams pkw2_dynamic matches 50 run place template pkw2:the_twin_beams/0 ~-25 ~ ~-2