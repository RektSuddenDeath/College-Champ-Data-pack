
execute unless entity @e[type=marker,tag=the_two_gates,tag=pw_dynamic] run return 0

scoreboard players operation the_two_gates pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 60 math 60
scoreboard players operation the_two_gates pkw2_dynamic %= 60 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_two_gates,tag=pw_dynamic] if score the_two_gates pkw2_dynamic matches 0 run fill ~1 ~1 ~7 ~3 ~3 ~7 iron_bars
execute at @e[type=marker,tag=the_two_gates,tag=pw_dynamic] if score the_two_gates pkw2_dynamic matches 0 run playsound block.stone.place record @a ~2 ~2 ~7
execute at @e[type=marker,tag=the_two_gates,tag=pw_dynamic] if score the_two_gates pkw2_dynamic matches 0 run fill ~-1 ~1 ~7 ~-3 ~3 ~7 air

execute at @e[type=marker,tag=the_two_gates,tag=pw_dynamic] if score the_two_gates pkw2_dynamic matches 30 run fill ~1 ~1 ~7 ~3 ~3 ~7 air
execute at @e[type=marker,tag=the_two_gates,tag=pw_dynamic] if score the_two_gates pkw2_dynamic matches 30 run playsound block.stone.place record @a ~-2 ~2 ~7
execute at @e[type=marker,tag=the_two_gates,tag=pw_dynamic] if score the_two_gates pkw2_dynamic matches 30 run fill ~-1 ~1 ~7 ~-3 ~3 ~7 iron_bars

execute at @e[type=marker,tag=the_two_gates,tag=pw_dynamic] if score the_two_gates pkw2_dynamic matches 0 run fill ~1 ~1 ~13 ~3 ~3 ~13 iron_bars
execute at @e[type=marker,tag=the_two_gates,tag=pw_dynamic] if score the_two_gates pkw2_dynamic matches 0 run playsound block.stone.place record @a ~2 ~2 ~13
execute at @e[type=marker,tag=the_two_gates,tag=pw_dynamic] if score the_two_gates pkw2_dynamic matches 0 run fill ~-1 ~1 ~13 ~-3 ~3 ~13 air

execute at @e[type=marker,tag=the_two_gates,tag=pw_dynamic] if score the_two_gates pkw2_dynamic matches 30 run fill ~1 ~1 ~13 ~3 ~3 ~13 air
execute at @e[type=marker,tag=the_two_gates,tag=pw_dynamic] if score the_two_gates pkw2_dynamic matches 30 run playsound block.stone.place record @a ~-2 ~2 ~13
execute at @e[type=marker,tag=the_two_gates,tag=pw_dynamic] if score the_two_gates pkw2_dynamic matches 30 run fill ~-1 ~1 ~13 ~-3 ~3 ~13 iron_bars

execute at @e[type=marker,tag=the_two_gates,tag=pw_dynamic] if score the_two_gates pkw2_dynamic matches 30 run fill ~1 ~1 ~19 ~3 ~3 ~19 iron_bars
execute at @e[type=marker,tag=the_two_gates,tag=pw_dynamic] if score the_two_gates pkw2_dynamic matches 30 run playsound block.stone.place record @a ~2 ~2 ~19
execute at @e[type=marker,tag=the_two_gates,tag=pw_dynamic] if score the_two_gates pkw2_dynamic matches 30 run fill ~-1 ~1 ~19 ~-3 ~3 ~19 air

execute at @e[type=marker,tag=the_two_gates,tag=pw_dynamic] if score the_two_gates pkw2_dynamic matches 0 run fill ~1 ~1 ~19 ~3 ~3 ~19 air
execute at @e[type=marker,tag=the_two_gates,tag=pw_dynamic] if score the_two_gates pkw2_dynamic matches 0 run playsound block.stone.place record @a ~-2 ~2 ~19
execute at @e[type=marker,tag=the_two_gates,tag=pw_dynamic] if score the_two_gates pkw2_dynamic matches 0 run fill ~-1 ~1 ~19 ~-3 ~3 ~19 iron_bars

