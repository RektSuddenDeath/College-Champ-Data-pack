
execute unless entity @e[type=marker,tag=the_sweet_snake,tag=pw_dynamic] run return 0

scoreboard players operation the_sweet_snake pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 30 math 30
scoreboard players operation the_sweet_snake pkw2_dynamic %= 30 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_sweet_snake,tag=pw_dynamic] if score the_sweet_snake pkw2_dynamic matches 5 run setblock ~-5 ~ ~7 air destroy
execute at @e[type=marker,tag=the_sweet_snake,tag=pw_dynamic] if score the_sweet_snake pkw2_dynamic matches 5 run setblock ~-6 ~ ~14 air destroy
execute at @e[type=marker,tag=the_sweet_snake,tag=pw_dynamic] if score the_sweet_snake pkw2_dynamic matches 5 run setblock ~-2 ~ ~19 air destroy

execute at @e[type=marker,tag=the_sweet_snake,tag=pw_dynamic] if score the_sweet_snake pkw2_dynamic matches 20 run setblock ~-2 ~ ~5 air destroy
execute at @e[type=marker,tag=the_sweet_snake,tag=pw_dynamic] if score the_sweet_snake pkw2_dynamic matches 20 run setblock ~-6 ~ ~9 air destroy
execute at @e[type=marker,tag=the_sweet_snake,tag=pw_dynamic] if score the_sweet_snake pkw2_dynamic matches 20 run setblock ~-4 ~ ~16 air destroy
execute at @e[type=marker,tag=the_sweet_snake,tag=pw_dynamic] if score the_sweet_snake pkw2_dynamic matches 20 run setblock ~-1 ~ ~21 air destroy

execute at @e[type=marker,tag=the_sweet_snake,tag=pw_dynamic] if score the_sweet_snake pkw2_dynamic matches 0 run place template pkw2:sweet_snake/3 ~-10 ~-1 ~1
execute at @e[type=marker,tag=the_sweet_snake,tag=pw_dynamic] if score the_sweet_snake pkw2_dynamic matches 5 run place template pkw2:sweet_snake/1 ~-10 ~-1 ~1

execute at @e[type=marker,tag=the_sweet_snake,tag=pw_dynamic] if score the_sweet_snake pkw2_dynamic matches 15 run place template pkw2:sweet_snake/3 ~-10 ~-1 ~1
execute at @e[type=marker,tag=the_sweet_snake,tag=pw_dynamic] if score the_sweet_snake pkw2_dynamic matches 20 run place template pkw2:sweet_snake/2 ~-10 ~-1 ~1