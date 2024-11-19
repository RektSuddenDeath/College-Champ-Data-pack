
execute unless entity @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] run return 0

scoreboard players operation the_slippy_checker pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 30 math 30
scoreboard players operation the_slippy_checker pkw2_dynamic %= 30 math

# Animation (replace return 0 with the right item)

execute at @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] if score the_slippy_checker pkw2_dynamic matches 0 run setblock ~-3 ~ ~ air destroy
execute at @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] if score the_slippy_checker pkw2_dynamic matches 0 run setblock ~-8 ~ ~2 air destroy
execute at @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] if score the_slippy_checker pkw2_dynamic matches 0 run setblock ~-13 ~ ~5 air destroy
execute at @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] if score the_slippy_checker pkw2_dynamic matches 0 run setblock ~-21 ~ ~1 air destroy
execute at @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] if score the_slippy_checker pkw2_dynamic matches 0 run setblock ~-29 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] if score the_slippy_checker pkw2_dynamic matches 0 run setblock ~-34 ~ ~ air destroy
execute at @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] if score the_slippy_checker pkw2_dynamic matches 0 run setblock ~-37 ~ ~-2 air destroy

execute at @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] if score the_slippy_checker pkw2_dynamic matches 0 run fill ~-37 ~ ~-7 ~-2 ~ ~8 air replace blue_ice
execute at @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] if score the_slippy_checker pkw2_dynamic matches 0 run place template pkw2:slippy_checker/a2 ~-37 ~ ~-7 


execute at @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] if score the_slippy_checker pkw2_dynamic matches 15 run setblock ~-4 ~ ~3 air destroy
execute at @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] if score the_slippy_checker pkw2_dynamic matches 15 run setblock ~-9 ~ ~-1 air destroy
execute at @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] if score the_slippy_checker pkw2_dynamic matches 15 run setblock ~-16 ~ ~3 air destroy
execute at @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] if score the_slippy_checker pkw2_dynamic matches 15 run setblock ~-22 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] if score the_slippy_checker pkw2_dynamic matches 15 run setblock ~-27 ~ ~2 air destroy
execute at @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] if score the_slippy_checker pkw2_dynamic matches 15 run setblock ~-31 ~ ~5 air destroy
execute at @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] if score the_slippy_checker pkw2_dynamic matches 15 run setblock ~-36 ~ ~ air destroy

execute at @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] if score the_slippy_checker pkw2_dynamic matches 15 run fill ~-37 ~ ~-7 ~-2 ~ ~8 air replace ice
execute at @e[type=marker,tag=the_slippy_checker,tag=pw_dynamic] if score the_slippy_checker pkw2_dynamic matches 15 run place template pkw2:slippy_checker/a1 ~-37 ~ ~-7 