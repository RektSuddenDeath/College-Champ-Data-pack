
execute unless entity @e[type=marker,tag=stage_name,tag=pw_dynamic] run return 0

scoreboard players operation stage_name pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 1 math 1
scoreboard players operation stage_name pkw2_dynamic %= 1 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=stage_name,tag=pw_dynamic] if score stage_name pkw2_dynamic matches 1 run return 0