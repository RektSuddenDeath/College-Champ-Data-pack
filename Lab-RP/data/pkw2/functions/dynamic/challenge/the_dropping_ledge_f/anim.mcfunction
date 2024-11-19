
execute unless entity @e[type=marker,tag=the_dropping_ledge_f,tag=pw_dynamic] run return 0

scoreboard players operation the_dropping_ledge_f pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 80 math 80
scoreboard players operation the_dropping_ledge_f pkw2_dynamic %= 80 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_dropping_ledge_f,tag=pw_dynamic] if score the_dropping_ledge_f pkw2_dynamic matches 0 run fill ~1 ~ ~3 ~1 ~ ~6 air destroy
execute at @e[type=marker,tag=the_dropping_ledge_f,tag=pw_dynamic] if score the_dropping_ledge_f pkw2_dynamic matches 0 run fill ~4 ~ ~6 ~4 ~ ~9 air destroy
execute at @e[type=marker,tag=the_dropping_ledge_f,tag=pw_dynamic] if score the_dropping_ledge_f pkw2_dynamic matches 0 run fill ~-2 ~ ~12 ~-2 ~ ~15 air destroy
execute at @e[type=marker,tag=the_dropping_ledge_f,tag=pw_dynamic] if score the_dropping_ledge_f pkw2_dynamic matches 0 run fill ~1 ~ ~15 ~1 ~ ~18 air destroy
execute at @e[type=marker,tag=the_dropping_ledge_f,tag=pw_dynamic] if score the_dropping_ledge_f pkw2_dynamic matches 0 run fill ~1 ~ ~21 ~1 ~ ~24 air destroy

execute at @e[type=marker,tag=the_dropping_ledge_f,tag=pw_dynamic] if score the_dropping_ledge_f pkw2_dynamic matches 30 run fill ~1 ~ ~3 ~1 ~ ~6 iron_trapdoor[half=top]
execute at @e[type=marker,tag=the_dropping_ledge_f,tag=pw_dynamic] if score the_dropping_ledge_f pkw2_dynamic matches 30 run fill ~4 ~ ~6 ~4 ~ ~9 iron_trapdoor[half=top]
execute at @e[type=marker,tag=the_dropping_ledge_f,tag=pw_dynamic] if score the_dropping_ledge_f pkw2_dynamic matches 30 run fill ~-2 ~ ~12 ~-2 ~ ~15 iron_trapdoor[half=top]
execute at @e[type=marker,tag=the_dropping_ledge_f,tag=pw_dynamic] if score the_dropping_ledge_f pkw2_dynamic matches 30 run fill ~1 ~ ~15 ~1 ~ ~18 iron_trapdoor[half=top]
execute at @e[type=marker,tag=the_dropping_ledge_f,tag=pw_dynamic] if score the_dropping_ledge_f pkw2_dynamic matches 30 run fill ~1 ~ ~21 ~1 ~ ~24 iron_trapdoor[half=top]