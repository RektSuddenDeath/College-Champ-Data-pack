
execute unless entity @e[type=marker,tag=the_tiny_plates,tag=pw_dynamic] run return 0

scoreboard players operation the_tiny_plates pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 40 math 40
scoreboard players operation the_tiny_plates pkw2_dynamic %= 40 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_tiny_plates,tag=pw_dynamic] if score the_tiny_plates pkw2_dynamic matches 20 run setblock ~-3 ~ ~1 air destroy
execute at @e[type=marker,tag=the_tiny_plates,tag=pw_dynamic] if score the_tiny_plates pkw2_dynamic matches 20 run setblock ~-6 ~ ~ air destroy
execute at @e[type=marker,tag=the_tiny_plates,tag=pw_dynamic] if score the_tiny_plates pkw2_dynamic matches 20 run setblock ~-11 ~-1 ~-3 air destroy
execute at @e[type=marker,tag=the_tiny_plates,tag=pw_dynamic] if score the_tiny_plates pkw2_dynamic matches 20 run setblock ~-15 ~-1 ~-4 air destroy
execute at @e[type=marker,tag=the_tiny_plates,tag=pw_dynamic] if score the_tiny_plates pkw2_dynamic matches 20 run setblock ~-20 ~ ~2 air destroy
execute at @e[type=marker,tag=the_tiny_plates,tag=pw_dynamic] if score the_tiny_plates pkw2_dynamic matches 20 run setblock ~-23 ~ ~1 air destroy

execute at @e[type=marker,tag=the_tiny_plates,tag=pw_dynamic] if score the_tiny_plates pkw2_dynamic matches 0 run setblock ~-4 ~ ~ air destroy
execute at @e[type=marker,tag=the_tiny_plates,tag=pw_dynamic] if score the_tiny_plates pkw2_dynamic matches 0 run setblock ~-6 ~ ~1 air destroy
execute at @e[type=marker,tag=the_tiny_plates,tag=pw_dynamic] if score the_tiny_plates pkw2_dynamic matches 0 run setblock ~-12 ~-1 ~-3 air destroy
execute at @e[type=marker,tag=the_tiny_plates,tag=pw_dynamic] if score the_tiny_plates pkw2_dynamic matches 0 run setblock ~-16 ~-1 ~-6 air destroy
execute at @e[type=marker,tag=the_tiny_plates,tag=pw_dynamic] if score the_tiny_plates pkw2_dynamic matches 0 run setblock ~-19 ~ ~-1 air destroy
execute at @e[type=marker,tag=the_tiny_plates,tag=pw_dynamic] if score the_tiny_plates pkw2_dynamic matches 0 run setblock ~-24 ~ ~ air destroy

execute at @e[type=marker,tag=the_tiny_plates,tag=pw_dynamic] if score the_tiny_plates pkw2_dynamic matches 0 run place template pkw2:tiny_plates/1 ~-24 ~-1 ~-6
execute at @e[type=marker,tag=the_tiny_plates,tag=pw_dynamic] if score the_tiny_plates pkw2_dynamic matches 20 run place template pkw2:tiny_plates/2 ~-24 ~-1 ~-6