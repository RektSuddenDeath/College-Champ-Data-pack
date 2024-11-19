
execute unless entity @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] run return 0

scoreboard players operation the_checkerboard_swap pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 30 math 30
scoreboard players operation the_checkerboard_swap pkw2_dynamic %= 30 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 0 run setblock ~-4 ~ ~1 air destroy
execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 0 run setblock ~-14 ~ ~ air destroy
execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 0 run setblock ~-22 ~ ~3 air destroy
execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 0 run setblock ~-30 ~ ~ air destroy
execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 0 run setblock ~-6 ~ ~ air destroy
execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 0 run setblock ~-11 ~ ~3 air destroy
execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 0 run setblock ~-18 ~ ~-4 air destroy
execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 0 run setblock ~-26 ~ ~1 air destroy
execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 0 run fill ~-37 ~ ~-7 ~-2 ~ ~8 air replace polished_andesite
execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 0 run place template pkw2:checkboard_swap/b1 ~-37 ~ ~-7 

execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 15 run setblock ~-6 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 15 run setblock ~-12 ~ ~3 air destroy
execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 15 run setblock ~-18 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 15 run setblock ~-30 ~ ~2 air destroy
execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 15 run setblock ~-10 ~ ~-6 air destroy
execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 15 run setblock ~-14 ~ ~5 air destroy
execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 15 run setblock ~-25 ~ ~3 air destroy
execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 15 run setblock ~-27 ~ ~4 air destroy

execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 15 run fill ~-37 ~ ~-7 ~-2 ~ ~8 air replace polished_diorite
execute at @e[type=marker,tag=the_checkerboard_swap,tag=pw_dynamic] if score the_checkerboard_swap pkw2_dynamic matches 15 run place template pkw2:checkboard_swap/b2 ~-37 ~ ~-7 
