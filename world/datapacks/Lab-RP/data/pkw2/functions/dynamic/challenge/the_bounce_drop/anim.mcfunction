
execute unless entity @e[type=marker,tag=the_bounce_drop,tag=pw_dynamic] run return 0

scoreboard players operation the_bounce_drop pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 80 math 80
scoreboard players operation the_bounce_drop pkw2_dynamic %= 80 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_bounce_drop,tag=pw_dynamic] if score the_bounce_drop pkw2_dynamic matches 0 run fill ~-1 ~6 ~12 ~1 ~6 ~14 air destroy
execute at @e[type=marker,tag=the_bounce_drop,tag=pw_dynamic] if score the_bounce_drop pkw2_dynamic matches 40 run fill ~-1 ~6 ~12 ~1 ~6 ~14 glass destroy
execute at @e[type=marker,tag=the_bounce_drop,tag=pw_dynamic] if score the_bounce_drop pkw2_dynamic matches 40 run particle smoke ~ ~6 ~13 0.25 0.1 0.25 0.1 5