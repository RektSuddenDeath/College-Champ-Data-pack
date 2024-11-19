
execute unless entity @e[type=marker,tag=the_neo_run,tag=pw_dynamic] run return 0

scoreboard players operation the_neo_run pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 40 math 40
scoreboard players operation the_neo_run pkw2_dynamic %= 40 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_neo_run,tag=pw_dynamic] if score the_neo_run pkw2_dynamic matches 0 run fill ~-3 ~ ~ ~-7 ~ ~ andesite
execute at @e[type=marker,tag=the_neo_run,tag=pw_dynamic] if score the_neo_run pkw2_dynamic matches 20 run fill ~-9 ~ ~ ~-13 ~ ~ andesite

execute at @e[type=marker,tag=the_neo_run,tag=pw_dynamic] if score the_neo_run pkw2_dynamic matches 25 run fill ~-3 ~ ~ ~-7 ~ ~ air destroy
execute at @e[type=marker,tag=the_neo_run,tag=pw_dynamic] if score the_neo_run pkw2_dynamic matches 5 run fill ~-9 ~ ~ ~-13 ~ ~ air destroy

execute at @e[type=marker,tag=the_neo_run,tag=pw_dynamic] if score the_neo_run pkw2_dynamic matches 0 run fill ~-21 ~ ~ ~-25 ~ ~ andesite
execute at @e[type=marker,tag=the_neo_run,tag=pw_dynamic] if score the_neo_run pkw2_dynamic matches 20 run fill ~-27 ~ ~ ~-31 ~ ~ andesite

execute at @e[type=marker,tag=the_neo_run,tag=pw_dynamic] if score the_neo_run pkw2_dynamic matches 25 run fill ~-21 ~ ~ ~-25 ~ ~ air destroy
execute at @e[type=marker,tag=the_neo_run,tag=pw_dynamic] if score the_neo_run pkw2_dynamic matches 5 run fill ~-27 ~ ~ ~-31 ~ ~ air destroy