
execute unless entity @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] run return 0

scoreboard players operation the_shifting_sweets pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 120 math 120
scoreboard players operation the_shifting_sweets pkw2_dynamic %= 120 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 0 run fill ~6 ~ ~6 ~4 ~ ~8 pink_glazed_terracotta[facing=east]
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 30 run fill ~1 ~ ~6 ~-1 ~ ~8 light_blue_glazed_terracotta[facing=east]
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 60 run fill ~-6 ~ ~6 ~-4 ~ ~8 pink_glazed_terracotta[facing=east]
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 90 run fill ~1 ~ ~6 ~-1 ~ ~8 light_blue_glazed_terracotta[facing=east]

execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 30 run fill ~6 ~ ~6 ~4 ~ ~8 air destroy
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 60 run fill ~1 ~ ~6 ~-1 ~ ~8 air destroy
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 90 run fill ~-6 ~ ~6 ~-4 ~ ~8 air destroy
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 0 run fill ~1 ~ ~6 ~-1 ~ ~8 air destroy

execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 30 run fill ~6 ~1 ~14 ~4 ~1 ~16 pink_glazed_terracotta[facing=east]
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 60 run fill ~1 ~1 ~14 ~-1 ~1 ~16 light_blue_glazed_terracotta[facing=east]
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 90 run fill ~-6 ~1 ~14 ~-4 ~1 ~16 pink_glazed_terracotta[facing=east]
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 0 run fill ~1 ~1 ~14 ~-1 ~1 ~16 light_blue_glazed_terracotta[facing=east]

execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 60 run fill ~6 ~1 ~14 ~4 ~1 ~16 air destroy
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 90 run fill ~1 ~1 ~14 ~-1 ~1 ~16 air destroy
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 0 run fill ~-6 ~1 ~14 ~-4 ~1 ~16 air destroy
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 30 run fill ~1 ~1 ~14 ~-1 ~1 ~16 air destroy

execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 60 run fill ~6 ~ ~22 ~4 ~ ~24 pink_glazed_terracotta[facing=east]
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 90 run fill ~1 ~ ~22 ~-1 ~ ~24 light_blue_glazed_terracotta[facing=east]
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 0 run fill ~-6 ~ ~22 ~-4 ~ ~24 pink_glazed_terracotta[facing=east]
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 30 run fill ~1 ~ ~22 ~-1 ~ ~24 light_blue_glazed_terracotta[facing=east]

execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 90 run fill ~6 ~ ~22 ~4 ~ ~24 air destroy
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 0 run fill ~1 ~ ~22 ~-1 ~ ~24 air destroy
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 30 run fill ~-6 ~ ~22 ~-4 ~ ~24 air destroy
execute at @e[type=marker,tag=the_shifting_sweets,tag=pw_dynamic] if score the_shifting_sweets pkw2_dynamic matches 60 run fill ~1 ~ ~22 ~-1 ~ ~24 air destroy
