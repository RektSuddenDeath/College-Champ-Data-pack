
execute unless entity @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] run return 0

scoreboard players operation the_neo_leaps pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 70 math 70
scoreboard players operation the_neo_leaps pkw2_dynamic %= 70 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] if score the_neo_leaps pkw2_dynamic matches 0 run setblock ~-3 ~ ~2 air destroy
execute at @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] if score the_neo_leaps pkw2_dynamic matches 0 run setblock ~-9 ~ ~2 air destroy
execute at @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] if score the_neo_leaps pkw2_dynamic matches 0 run setblock ~-15 ~ ~2 air destroy
execute at @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] if score the_neo_leaps pkw2_dynamic matches 0 run setblock ~-21 ~ ~2 air destroy
execute at @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] if score the_neo_leaps pkw2_dynamic matches 0 run setblock ~-5 ~ ~2 air destroy
execute at @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] if score the_neo_leaps pkw2_dynamic matches 0 run setblock ~-11 ~ ~2 air destroy
execute at @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] if score the_neo_leaps pkw2_dynamic matches 0 run setblock ~-17 ~ ~2 air destroy
execute at @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] if score the_neo_leaps pkw2_dynamic matches 0 run setblock ~-23 ~ ~2 air destroy
execute at @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] if score the_neo_leaps pkw2_dynamic matches 0 run place template pkw2:the_neo_leaps/1 ~-23 ~ ~-2

execute at @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] if score the_neo_leaps pkw2_dynamic matches 35 run setblock ~-3 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] if score the_neo_leaps pkw2_dynamic matches 35 run setblock ~-9 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] if score the_neo_leaps pkw2_dynamic matches 35 run setblock ~-15 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] if score the_neo_leaps pkw2_dynamic matches 35 run setblock ~-21 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] if score the_neo_leaps pkw2_dynamic matches 35 run setblock ~-5 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] if score the_neo_leaps pkw2_dynamic matches 35 run setblock ~-11 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] if score the_neo_leaps pkw2_dynamic matches 35 run setblock ~-17 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] if score the_neo_leaps pkw2_dynamic matches 35 run setblock ~-23 ~ ~-2 air destroy
execute at @e[type=marker,tag=the_neo_leaps,tag=pw_dynamic] if score the_neo_leaps pkw2_dynamic matches 35 run place template pkw2:the_neo_leaps/2 ~-23 ~ ~-2
