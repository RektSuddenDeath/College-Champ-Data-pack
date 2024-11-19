
execute unless entity @e[type=marker,tag=the_pad_swap,tag=pw_dynamic] run return 0

scoreboard players operation the_pad_swap pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 60 math 60
scoreboard players operation the_pad_swap pkw2_dynamic %= 60 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_pad_swap,tag=pw_dynamic] if score the_pad_swap pkw2_dynamic matches 10 run setblock ~-3 ~ ~2 air destroy
execute at @e[type=marker,tag=the_pad_swap,tag=pw_dynamic] if score the_pad_swap pkw2_dynamic matches 10 run setblock ~-11 ~ ~2 air destroy
execute at @e[type=marker,tag=the_pad_swap,tag=pw_dynamic] if score the_pad_swap pkw2_dynamic matches 10 run setblock ~-19 ~ ~2 air destroy

execute at @e[type=marker,tag=the_pad_swap,tag=pw_dynamic] if score the_pad_swap pkw2_dynamic matches 40 run setblock ~-5 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_pad_swap,tag=pw_dynamic] if score the_pad_swap pkw2_dynamic matches 40 run setblock ~-13 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_pad_swap,tag=pw_dynamic] if score the_pad_swap pkw2_dynamic matches 40 run setblock ~-21 ~ ~-2 air destroy

execute at @e[type=marker,tag=the_pad_swap,tag=pw_dynamic] if score the_pad_swap pkw2_dynamic matches 0 run place template pkw2:the_pad_swap/1 ~-24 ~ ~-3 
execute at @e[type=marker,tag=the_pad_swap,tag=pw_dynamic] if score the_pad_swap pkw2_dynamic matches 10 run place template pkw2:the_pad_swap/2 ~-24 ~ ~-3 
execute at @e[type=marker,tag=the_pad_swap,tag=pw_dynamic] if score the_pad_swap pkw2_dynamic matches 30 run place template pkw2:the_pad_swap/1 ~-24 ~ ~-3
execute at @e[type=marker,tag=the_pad_swap,tag=pw_dynamic] if score the_pad_swap pkw2_dynamic matches 40 run place template pkw2:the_pad_swap/3 ~-24 ~ ~-3