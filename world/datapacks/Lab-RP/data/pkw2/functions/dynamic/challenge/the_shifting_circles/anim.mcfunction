
execute unless entity @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] run return 0

scoreboard players operation the_shifting_circles pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 28 math 28
scoreboard players operation the_shifting_circles pkw2_dynamic %= 28 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] if score the_shifting_circles pkw2_dynamic matches 0 run setblock ~-4 ~ ~ air destroy
execute at @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] if score the_shifting_circles pkw2_dynamic matches 0 run setblock ~-6 ~ ~2 air destroy
execute at @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] if score the_shifting_circles pkw2_dynamic matches 0 run setblock ~-6 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] if score the_shifting_circles pkw2_dynamic matches 0 run setblock ~-8 ~ ~ air destroy
execute at @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] if score the_shifting_circles pkw2_dynamic matches 0 run setblock ~-17 ~ ~ air destroy
execute at @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] if score the_shifting_circles pkw2_dynamic matches 0 run setblock ~-23 ~ ~ air destroy
execute at @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] if score the_shifting_circles pkw2_dynamic matches 0 run setblock ~-20 ~ ~-3 air destroy
execute at @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] if score the_shifting_circles pkw2_dynamic matches 0 run setblock ~-20 ~ ~3 air destroy

execute at @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] if score the_shifting_circles pkw2_dynamic matches 14 run setblock ~-2 ~ ~ air destroy
execute at @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] if score the_shifting_circles pkw2_dynamic matches 14 run setblock ~-6 ~ ~4 air destroy
execute at @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] if score the_shifting_circles pkw2_dynamic matches 14 run setblock ~-6 ~ ~-4 air destroy
execute at @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] if score the_shifting_circles pkw2_dynamic matches 14 run setblock ~-8 ~ ~ air destroy
execute at @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] if score the_shifting_circles pkw2_dynamic matches 14 run setblock ~-15 ~ ~ air destroy
execute at @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] if score the_shifting_circles pkw2_dynamic matches 14 run setblock ~-25 ~ ~ air destroy
execute at @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] if score the_shifting_circles pkw2_dynamic matches 14 run setblock ~-20 ~ ~-5 air destroy
execute at @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] if score the_shifting_circles pkw2_dynamic matches 14 run setblock ~-20 ~ ~5 air destroy

execute at @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] if score the_shifting_circles pkw2_dynamic matches 0 run place template pkw2:shifting_circles/1 ~-25 ~ ~-5
execute at @e[type=marker,tag=the_shifting_circles,tag=pw_dynamic] if score the_shifting_circles pkw2_dynamic matches 14 run place template pkw2:shifting_circles/2 ~-25 ~ ~-5