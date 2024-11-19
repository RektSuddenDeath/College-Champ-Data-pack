
execute unless entity @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] run return 0

scoreboard players operation the_rotating_cube_f pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 48 math 48
scoreboard players operation the_rotating_cube_f pkw2_dynamic %= 48 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 0 run setblock ~ ~ ~8 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 0 run setblock ~2 ~ ~10 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 0 run setblock ~4 ~ ~8 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 0 run setblock ~ ~ ~18 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 0 run setblock ~-2 ~ ~16 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 0 run setblock ~-4 ~ ~18 air destroy

execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 12 run setblock ~2 ~ ~6 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 12 run setblock ~4 ~ ~4 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 12 run setblock ~2 ~ ~2 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 12 run setblock ~-2 ~ ~20 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 12 run setblock ~-4 ~ ~22 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 12 run setblock ~-2 ~ ~24 air destroy

execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 24 run setblock ~ ~ ~4 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 24 run setblock ~-2 ~ ~2 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 24 run setblock ~-4 ~ ~4 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 24 run setblock ~ ~ ~22 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 24 run setblock ~2 ~ ~24 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 24 run setblock ~4 ~ ~22 air destroy

execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 36 run setblock ~-2 ~ ~6 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 36 run setblock ~-4 ~ ~8 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 36 run setblock ~-2 ~ ~10 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 36 run setblock ~2 ~ ~20 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 36 run setblock ~4 ~ ~18 air destroy
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 36 run setblock ~2 ~ ~16 air destroy

execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 0 run place template pkw2:the_rotating_cube/1 ~-4 ~ ~2
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 12 run place template pkw2:the_rotating_cube/2 ~-4 ~ ~2
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 24 run place template pkw2:the_rotating_cube/3 ~-4 ~ ~2
execute at @e[type=marker,tag=the_rotating_cube_f,tag=pw_dynamic] if score the_rotating_cube_f pkw2_dynamic matches 36 run place template pkw2:the_rotating_cube/4 ~-4 ~ ~2