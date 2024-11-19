
execute unless entity @e[type=marker,tag=the_flowering_path,tag=pw_dynamic] run return 0

scoreboard players operation the_flowering_path pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 100 math 100
scoreboard players operation the_flowering_path pkw2_dynamic %= 100 math

# Animation
execute at @e[type=marker,tag=the_flowering_path,tag=pw_dynamic] if score the_flowering_path pkw2_dynamic matches 0 run place template pkw2:flowering_path/1 ~-4 ~-2 ~12

execute at @e[type=marker,tag=the_flowering_path,tag=pw_dynamic] if score the_flowering_path pkw2_dynamic matches 0 run particle smoke ~-3 ~1 ~14 0.1 0.1 0.1 0.08 4
execute at @e[type=marker,tag=the_flowering_path,tag=pw_dynamic] if score the_flowering_path pkw2_dynamic matches 0 run particle smoke ~-1 ~1 ~16 0.1 0.1 0.1 0.08 4

execute at @e[type=marker,tag=the_flowering_path,tag=pw_dynamic] if score the_flowering_path pkw2_dynamic matches 60 run fill ~-3 ~3 ~14 ~-4 ~-3 ~12 air destroy
execute at @e[type=marker,tag=the_flowering_path,tag=pw_dynamic] if score the_flowering_path pkw2_dynamic matches 70 run fill ~-1 ~1 ~18 ~ ~-4 ~16 air destroy