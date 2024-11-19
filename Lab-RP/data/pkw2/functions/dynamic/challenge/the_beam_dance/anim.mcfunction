
execute unless entity @e[type=marker,tag=the_beam_dance,tag=pw_dynamic] run return 0

scoreboard players operation the_beam_dance pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 60 math 60
scoreboard players operation the_beam_dance pkw2_dynamic %= 60 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_beam_dance,tag=pw_dynamic] if score the_beam_dance pkw2_dynamic matches 0 run fill ~-15 ~ ~-2 ~-25 ~1 ~-2 air destroy
execute at @e[type=marker,tag=the_beam_dance,tag=pw_dynamic] if score the_beam_dance pkw2_dynamic matches 0 run fill ~-12 ~ ~-2 ~-1 ~1 ~-2 air destroy
execute at @e[type=marker,tag=the_beam_dance,tag=pw_dynamic] if score the_beam_dance pkw2_dynamic matches 30 run fill ~-15 ~ ~-2 ~-25 ~1 ~-2 air destroy
execute at @e[type=marker,tag=the_beam_dance,tag=pw_dynamic] if score the_beam_dance pkw2_dynamic matches 30 run fill ~-12 ~ ~-2 ~-1 ~1 ~-2 air destroy

execute at @e[type=marker,tag=the_beam_dance,tag=pw_dynamic] if score the_beam_dance pkw2_dynamic matches 0 run fill ~-15 ~ ~ ~-25 ~1 ~ air destroy
execute at @e[type=marker,tag=the_beam_dance,tag=pw_dynamic] if score the_beam_dance pkw2_dynamic matches 0 run fill ~-12 ~ ~ ~-1 ~1 ~ air destroy
execute at @e[type=marker,tag=the_beam_dance,tag=pw_dynamic] if score the_beam_dance pkw2_dynamic matches 30 run fill ~-15 ~ ~ ~-25 ~1 ~ air destroy
execute at @e[type=marker,tag=the_beam_dance,tag=pw_dynamic] if score the_beam_dance pkw2_dynamic matches 30 run fill ~-12 ~ ~ ~-1 ~1 ~ air destroy

execute at @e[type=marker,tag=the_beam_dance,tag=pw_dynamic] if score the_beam_dance pkw2_dynamic matches 0 run fill ~-15 ~ ~2 ~-25 ~1 ~2 air destroy
execute at @e[type=marker,tag=the_beam_dance,tag=pw_dynamic] if score the_beam_dance pkw2_dynamic matches 0 run fill ~-12 ~ ~2 ~-1 ~1 ~2 air destroy
execute at @e[type=marker,tag=the_beam_dance,tag=pw_dynamic] if score the_beam_dance pkw2_dynamic matches 30 run fill ~-15 ~ ~2 ~-25 ~1 ~2 air destroy
execute at @e[type=marker,tag=the_beam_dance,tag=pw_dynamic] if score the_beam_dance pkw2_dynamic matches 30 run fill ~-12 ~ ~2 ~-1 ~1 ~2 air destroy

execute at @e[type=marker,tag=the_beam_dance,tag=pw_dynamic] if score the_beam_dance pkw2_dynamic matches 0 run place template pkw2:the_beam_dance/1 ~-25 ~ ~-5
execute at @e[type=marker,tag=the_beam_dance,tag=pw_dynamic] if score the_beam_dance pkw2_dynamic matches 30 run place template pkw2:the_beam_dance/2 ~-25 ~ ~-5

