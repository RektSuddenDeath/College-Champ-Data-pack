
execute unless entity @e[type=marker,tag=the_crossing_chain,tag=pw_dynamic] run return 0

scoreboard players operation the_crossing_chain pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 32 math 32
scoreboard players operation the_crossing_chain pkw2_dynamic %= 32 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_crossing_chain,tag=pw_dynamic] if score the_crossing_chain pkw2_dynamic matches 0 run fill ~-2 ~ ~1 ~-24 ~ ~1 chain[axis=x]
execute at @e[type=marker,tag=the_crossing_chain,tag=pw_dynamic] if score the_crossing_chain pkw2_dynamic matches 16 run fill ~-2 ~ ~-1 ~-24 ~ ~-1 chain[axis=x]

execute at @e[type=marker,tag=the_crossing_chain,tag=pw_dynamic] if score the_crossing_chain pkw2_dynamic matches 18 run fill ~-2 ~ ~1 ~-24 ~ ~1 air destroy
execute at @e[type=marker,tag=the_crossing_chain,tag=pw_dynamic] if score the_crossing_chain pkw2_dynamic matches 2 run fill ~-2 ~ ~-1 ~-24 ~ ~-1 air destroy