
execute unless entity @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] run return 0

scoreboard players operation the_dodging_gates pkw2_dynamic = dynamictick pkw2_dynamic
scoreboard players set 33 math 33
scoreboard players operation the_dodging_gates pkw2_dynamic %= 33 math

execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 1 run fill ~-5 ~5 ~5 ~-5 ~3 ~5 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 4 run fill ~-5 ~5 ~4 ~-5 ~3 ~4 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 7 run fill ~-5 ~5 ~3 ~-5 ~3 ~3 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 10 run fill ~-5 ~5 ~2 ~-5 ~3 ~2 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 13 run fill ~-5 ~5 ~1 ~-5 ~3 ~1 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 16 run fill ~-5 ~5 ~0 ~-5 ~3 ~0 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 19 run fill ~-5 ~5 ~-1 ~-5 ~3 ~-1 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 22 run fill ~-5 ~5 ~-2 ~-5 ~3 ~-2 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 25 run fill ~-5 ~5 ~-3 ~-5 ~3 ~-3 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 28 run fill ~-5 ~5 ~-4 ~-5 ~3 ~-4 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 31 run fill ~-5 ~5 ~-5 ~-5 ~3 ~-5 iron_bars

execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 13 run fill ~-5 ~5 ~5 ~-5 ~3 ~5 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 16 run fill ~-5 ~5 ~4 ~-5 ~3 ~4 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 19 run fill ~-5 ~5 ~3 ~-5 ~3 ~3 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 22 run fill ~-5 ~5 ~2 ~-5 ~3 ~2 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 25 run fill ~-5 ~5 ~1 ~-5 ~3 ~1 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 28 run fill ~-5 ~5 ~0 ~-5 ~3 ~0 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 31 run fill ~-5 ~5 ~-1 ~-5 ~3 ~-1 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 1 run fill ~-5 ~5 ~-2 ~-5 ~3 ~-2 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 4 run fill ~-5 ~5 ~-3 ~-5 ~3 ~-3 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 7 run fill ~-5 ~5 ~-4 ~-5 ~3 ~-4 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 10 run fill ~-5 ~5 ~-5 ~-5 ~3 ~-5 air destroy


execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 1 run fill ~-19 ~5 ~5 ~-19 ~3 ~5 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 4 run fill ~-19 ~5 ~4 ~-19 ~3 ~4 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 7 run fill ~-19 ~5 ~3 ~-19 ~3 ~3 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 10 run fill ~-19 ~5 ~2 ~-19 ~3 ~2 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 13 run fill ~-19 ~5 ~1 ~-19 ~3 ~1 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 16 run fill ~-19 ~5 ~0 ~-19 ~3 ~0 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 19 run fill ~-19 ~5 ~-1 ~-19 ~3 ~-1 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 22 run fill ~-19 ~5 ~-2 ~-19 ~3 ~-2 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 25 run fill ~-19 ~5 ~-3 ~-19 ~3 ~-3 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 28 run fill ~-19 ~5 ~-4 ~-19 ~3 ~-4 iron_bars
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 31 run fill ~-19 ~5 ~-5 ~-19 ~3 ~-5 iron_bars

execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 13 run fill ~-19 ~5 ~5 ~-19 ~3 ~5 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 16 run fill ~-19 ~5 ~4 ~-19 ~3 ~4 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 19 run fill ~-19 ~5 ~3 ~-19 ~3 ~3 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 22 run fill ~-19 ~5 ~2 ~-19 ~3 ~2 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 25 run fill ~-19 ~5 ~1 ~-19 ~3 ~1 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 28 run fill ~-19 ~5 ~0 ~-19 ~3 ~0 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 31 run fill ~-19 ~5 ~-1 ~-19 ~3 ~-1 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 1 run fill ~-19 ~5 ~-2 ~-19 ~3 ~-2 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 4 run fill ~-19 ~5 ~-3 ~-19 ~3 ~-3 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 7 run fill ~-19 ~5 ~-4 ~-19 ~3 ~-4 air destroy
execute at @e[type=marker,tag=the_dodging_gates,tag=pw_dynamic] if score the_dodging_gates pkw2_dynamic matches 10 run fill ~-19 ~5 ~-5 ~-19 ~3 ~-5 air destroy
