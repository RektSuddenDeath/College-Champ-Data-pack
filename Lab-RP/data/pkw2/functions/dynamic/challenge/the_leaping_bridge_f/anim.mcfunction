
execute unless entity @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] run return 0

scoreboard players operation the_leaping_bridge_f pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 60 math 60
scoreboard players operation the_leaping_bridge_f pkw2_dynamic %= 60 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 0 run setblock ~-3 ~ ~5 air destroy
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 0 run setblock ~-3 ~ ~9 air destroy
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 0 run setblock ~-3 ~ ~13 air destroy
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 0 run setblock ~-3 ~ ~17 air destroy
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 0 run setblock ~-3 ~ ~21 air destroy
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 0 run setblock ~-3 ~ ~20 air destroy

execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 30 run setblock ~4 ~ ~5 air destroy
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 30 run setblock ~4 ~ ~9 air destroy
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 30 run setblock ~4 ~ ~13 air destroy
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 30 run setblock ~4 ~ ~17 air destroy
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 30 run setblock ~4 ~ ~21 air destroy
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 30 run setblock ~4 ~ ~20 air destroy

execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 15 run particle smoke ~-3 ~0.5 ~5 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 15 run particle smoke ~-3 ~0.5 ~9 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 15 run particle smoke ~-3 ~0.5 ~13 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 15 run particle smoke ~-3 ~0.5 ~17 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 15 run particle smoke ~-3 ~0.5 ~21 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 15 run particle smoke ~-3 ~0.5 ~20 0.20 0.1 0.20 0.08 6

execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 45 run particle smoke ~4 ~0.5 ~5 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 45 run particle smoke ~4 ~0.5 ~9 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 45 run particle smoke ~4 ~0.5 ~13 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 45 run particle smoke ~4 ~0.5 ~17 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 45 run particle smoke ~4 ~0.5 ~21 0.20 0.1 0.20 0.08 6
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 45 run particle smoke ~4 ~0.5 ~20 0.20 0.1 0.20 0.08 6



execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 0 run place template pkw2:the_leaping_bridge_f/1 ~-4 ~ ~1
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 15 run place template pkw2:the_leaping_bridge_f/0 ~-4 ~ ~1
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 30 run place template pkw2:the_leaping_bridge_f/2 ~-4 ~ ~1
execute at @e[type=marker,tag=the_leaping_bridge_f,tag=pw_dynamic] if score the_leaping_bridge_f pkw2_dynamic matches 45 run place template pkw2:the_leaping_bridge_f/0 ~-4 ~ ~1