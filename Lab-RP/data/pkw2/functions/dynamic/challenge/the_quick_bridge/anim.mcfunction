
execute unless entity @e[type=marker,tag=the_quick_bridge,tag=pw_dynamic] run return 0

scoreboard players operation the_quick_bridge pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 40 math 40
scoreboard players operation the_quick_bridge pkw2_dynamic %= 40 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_quick_bridge,tag=pw_dynamic] if score the_quick_bridge pkw2_dynamic matches 0 run place template pkw2:quick_bridge/1 ~-24 ~ ~-4
execute at @e[type=marker,tag=the_quick_bridge,tag=pw_dynamic] if score the_quick_bridge pkw2_dynamic matches 3 run setblock ~-5 ~ ~-3 air destroy
execute at @e[type=marker,tag=the_quick_bridge,tag=pw_dynamic] if score the_quick_bridge pkw2_dynamic matches 3 run setblock ~-10 ~ ~-3 air destroy
execute at @e[type=marker,tag=the_quick_bridge,tag=pw_dynamic] if score the_quick_bridge pkw2_dynamic matches 3 run setblock ~-15 ~ ~-3 air destroy
execute at @e[type=marker,tag=the_quick_bridge,tag=pw_dynamic] if score the_quick_bridge pkw2_dynamic matches 3 run setblock ~-20 ~ ~-3 air destroy

execute at @e[type=marker,tag=the_quick_bridge,tag=pw_dynamic] if score the_quick_bridge pkw2_dynamic matches 3 run fill ~-2 ~ ~-4 ~-24 ~ ~-2 air

execute at @e[type=marker,tag=the_quick_bridge,tag=pw_dynamic] if score the_quick_bridge pkw2_dynamic matches 20 run place template pkw2:quick_bridge/1 ~-24 ~ ~-4
execute at @e[type=marker,tag=the_quick_bridge,tag=pw_dynamic] if score the_quick_bridge pkw2_dynamic matches 23 run setblock ~-5 ~ ~3 air destroy
execute at @e[type=marker,tag=the_quick_bridge,tag=pw_dynamic] if score the_quick_bridge pkw2_dynamic matches 23 run setblock ~-10 ~ ~3 air destroy
execute at @e[type=marker,tag=the_quick_bridge,tag=pw_dynamic] if score the_quick_bridge pkw2_dynamic matches 23 run setblock ~-15 ~ ~3 air destroy
execute at @e[type=marker,tag=the_quick_bridge,tag=pw_dynamic] if score the_quick_bridge pkw2_dynamic matches 23 run setblock ~-20 ~ ~3 air destroy
execute at @e[type=marker,tag=the_quick_bridge,tag=pw_dynamic] if score the_quick_bridge pkw2_dynamic matches 23 run fill ~-2 ~ ~2 ~-24 ~ ~4 air
