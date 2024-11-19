
execute unless entity @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] run return 0

scoreboard players operation the_bending_blink pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 26 math 26
scoreboard players operation the_bending_blink pkw2_dynamic %= 26 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 0 run particle smoke ~-6 ~ ~ 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 0 run particle smoke ~-7 ~ ~-2 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 0 run particle smoke ~-11 ~ ~-4 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 0 run particle smoke ~-12 ~ ~-2 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 0 run particle smoke ~-16 ~ ~3 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 0 run particle smoke ~-17 ~ ~1 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 0 run particle smoke ~-21 ~ ~-2 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 0 run particle smoke ~-22 ~ ~ 0.20 0.1 0.20 0.08 6

execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 0 run place template pkw2:bending_blink/0 ~-25 ~ ~-5
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 1 run setblock ~-2 ~ ~ air destroy
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 1 run setblock ~-4 ~ ~1 air destroy
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 1 run setblock ~-6 ~ ~-4 air destroy
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 1 run setblock ~-8 ~ ~-5 air destroy
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 1 run setblock ~-11 ~ ~1 air destroy
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 1 run setblock ~-13 ~ ~2 air destroy
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 1 run setblock ~-16 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 1 run setblock ~-18 ~ ~-3 air destroy
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 1 run setblock ~-21 ~ ~3 air destroy
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 1 run setblock ~-23 ~ ~4 air destroy

execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 13 run particle smoke ~-2 ~ ~ 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 13 run particle smoke ~-4 ~ ~1 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 13 run particle smoke ~-6 ~ ~-4 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 13 run particle smoke ~-8 ~ ~-5 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 13 run particle smoke ~-11 ~ ~1 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 13 run particle smoke ~-13 ~ ~2 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 13 run particle smoke ~-16 ~ ~-2 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 13 run particle smoke ~-18 ~ ~-3 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 13 run particle smoke ~-21 ~ ~3 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 13 run particle smoke ~-23 ~ ~4 0.20 0.1 0.20 0.08 6

execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 1 run place template pkw2:bending_blink/1 ~-25 ~ ~-5

execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 13 run place template pkw2:bending_blink/0 ~-25 ~ ~-5
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 14 run setblock ~-6 ~ ~ air destroy
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 14 run setblock ~-7 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 14 run setblock ~-11 ~ ~-4 air destroy
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 14 run setblock ~-12 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 14 run setblock ~-16 ~ ~3 air destroy
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 14 run setblock ~-17 ~ ~1 air destroy
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 14 run setblock ~-21 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 14 run setblock ~-22 ~ ~ air destroy

execute at @e[type=marker,tag=the_bending_blink,tag=pw_dynamic] if score the_bending_blink pkw2_dynamic matches 14 run place template pkw2:bending_blink/2 ~-25 ~ ~-5
