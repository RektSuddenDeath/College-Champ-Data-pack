
execute unless entity @e[type=marker,tag=the_bouncing_beams,tag=pw_dynamic] run return 0

scoreboard players operation the_bouncing_beams pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 48 math 48
scoreboard players operation the_bouncing_beams pkw2_dynamic %= 48 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_bouncing_beams,tag=pw_dynamic] if score the_bouncing_beams pkw2_dynamic matches 0 run fill ~-2 ~ ~ ~-23 ~ ~ air destroy
execute at @e[type=marker,tag=the_bouncing_beams,tag=pw_dynamic] if score the_bouncing_beams pkw2_dynamic matches 12 run fill ~-2 ~ ~1 ~-23 ~ ~1 air destroy
execute at @e[type=marker,tag=the_bouncing_beams,tag=pw_dynamic] if score the_bouncing_beams pkw2_dynamic matches 24 run fill ~-2 ~ ~-1 ~-23 ~ ~-1 air destroy
execute at @e[type=marker,tag=the_bouncing_beams,tag=pw_dynamic] if score the_bouncing_beams pkw2_dynamic matches 36 run fill ~-2 ~ ~ ~-23 ~ ~ air destroy

execute at @e[type=marker,tag=the_bouncing_beams,tag=pw_dynamic] if score the_bouncing_beams pkw2_dynamic matches 0 run place template pkw2:bouncing_beams/1 ~-23 ~ ~-2
execute at @e[type=marker,tag=the_bouncing_beams,tag=pw_dynamic] if score the_bouncing_beams pkw2_dynamic matches 12 run place template pkw2:bouncing_beams/2 ~-23 ~ ~-2
execute at @e[type=marker,tag=the_bouncing_beams,tag=pw_dynamic] if score the_bouncing_beams pkw2_dynamic matches 24 run place template pkw2:bouncing_beams/3 ~-23 ~ ~-2
execute at @e[type=marker,tag=the_bouncing_beams,tag=pw_dynamic] if score the_bouncing_beams pkw2_dynamic matches 36 run place template pkw2:bouncing_beams/2 ~-23 ~ ~-2
