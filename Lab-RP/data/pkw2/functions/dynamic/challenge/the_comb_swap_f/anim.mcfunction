
execute unless entity @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] run return 0

scoreboard players operation the_comb_swap_f pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 80 math 80
scoreboard players operation the_comb_swap_f pkw2_dynamic %= 80 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 0 run particle smoke ~3 ~ ~2 0.25 0.1 0.25 0.08 2
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 0 run particle smoke ~3 ~ ~7 0.25 0.1 0.25 0.08 2
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 0 run particle smoke ~3 ~ ~14 0.25 0.1 0.25 0.08 2
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 0 run particle smoke ~3 ~ ~21 0.25 0.1 0.25 0.08 2
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 0 run particle smoke ~3 ~ ~24 0.25 0.1 0.25 0.08 2

execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 0 run place template pkw2:comb_swap_final/0 ~-3 ~ ~2
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 15 run setblock ~-3 ~ ~3 air destroy
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 15 run setblock ~-3 ~ ~6 air destroy
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 15 run setblock ~-3 ~ ~11 air destroy
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 15 run setblock ~-3 ~ ~15 air destroy
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 15 run setblock ~-3 ~ ~21 air destroy
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 15 run place template pkw2:comb_swap_final/1 ~-3 ~ ~2
#particle smoke ~-6 ~ ~-1 0.25 0.1 0.25 0.08 2

execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 40 run particle smoke ~-3 ~ ~3 0.25 0.1 0.25 0.08 2
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 40 run particle smoke ~-3 ~ ~6 0.25 0.1 0.25 0.08 2
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 40 run particle smoke ~-3 ~ ~11 0.25 0.1 0.25 0.08 2
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 40 run particle smoke ~-3 ~ ~15 0.25 0.1 0.25 0.08 2
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 40 run particle smoke ~-3 ~ ~21 0.25 0.1 0.25 0.08 2

execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 40 run place template pkw2:comb_swap_final/0 ~-3 ~ ~2
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 55 run setblock ~3 ~ ~2 air destroy
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 55 run setblock ~3 ~ ~7 air destroy
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 55 run setblock ~3 ~ ~14 air destroy
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 55 run setblock ~3 ~ ~21 air destroy
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 55 run setblock ~3 ~ ~24 air destroy
execute at @e[type=marker,tag=the_comb_swap_f,tag=pw_dynamic] if score the_comb_swap_f pkw2_dynamic matches 55 run place template pkw2:comb_swap_final/2 ~-3 ~ ~2