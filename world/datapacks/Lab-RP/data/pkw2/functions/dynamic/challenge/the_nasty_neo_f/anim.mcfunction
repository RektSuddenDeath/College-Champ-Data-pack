
execute unless entity @e[type=marker,tag=the_nasty_neo_f,tag=pw_dynamic] run return 0

scoreboard players operation the_nasty_neo_f pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 60 math 60
scoreboard players operation the_nasty_neo_f pkw2_dynamic %= 60 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_nasty_neo_f,tag=pw_dynamic] if score the_nasty_neo_f pkw2_dynamic matches 0 run fill ~2 ~2 ~7 ~2 ~4 ~7 air destroy
execute at @e[type=marker,tag=the_nasty_neo_f,tag=pw_dynamic] if score the_nasty_neo_f pkw2_dynamic matches 0 run fill ~-2 ~2 ~7 ~-2 ~4 ~7 air destroy

execute at @e[type=marker,tag=the_nasty_neo_f,tag=pw_dynamic] if score the_nasty_neo_f pkw2_dynamic matches 20 run fill ~2 ~3 ~14 ~2 ~5 ~14 air destroy
execute at @e[type=marker,tag=the_nasty_neo_f,tag=pw_dynamic] if score the_nasty_neo_f pkw2_dynamic matches 20 run fill ~-2 ~3 ~14 ~-2 ~5 ~14 air destroy

execute at @e[type=marker,tag=the_nasty_neo_f,tag=pw_dynamic] if score the_nasty_neo_f pkw2_dynamic matches 40 run fill ~2 ~4 ~21 ~2 ~6 ~21 air destroy
execute at @e[type=marker,tag=the_nasty_neo_f,tag=pw_dynamic] if score the_nasty_neo_f pkw2_dynamic matches 40 run fill ~-2 ~4 ~21 ~-2 ~6 ~21 air destroy

execute at @e[type=marker,tag=the_nasty_neo_f,tag=pw_dynamic] if score the_nasty_neo_f pkw2_dynamic matches 20 run fill ~2 ~2 ~7 ~2 ~4 ~7 red_stained_glass_pane
execute at @e[type=marker,tag=the_nasty_neo_f,tag=pw_dynamic] if score the_nasty_neo_f pkw2_dynamic matches 20 run fill ~-2 ~2 ~7 ~-2 ~4 ~7 red_stained_glass_pane

execute at @e[type=marker,tag=the_nasty_neo_f,tag=pw_dynamic] if score the_nasty_neo_f pkw2_dynamic matches 40 run fill ~2 ~3 ~14 ~2 ~5 ~14 red_stained_glass_pane
execute at @e[type=marker,tag=the_nasty_neo_f,tag=pw_dynamic] if score the_nasty_neo_f pkw2_dynamic matches 40 run fill ~-2 ~3 ~14 ~-2 ~5 ~14 red_stained_glass_pane

execute at @e[type=marker,tag=the_nasty_neo_f,tag=pw_dynamic] if score the_nasty_neo_f pkw2_dynamic matches 0 run fill ~2 ~4 ~21 ~2 ~6 ~21 red_stained_glass_pane
execute at @e[type=marker,tag=the_nasty_neo_f,tag=pw_dynamic] if score the_nasty_neo_f pkw2_dynamic matches 0 run fill ~-2 ~4 ~21 ~-2 ~6 ~21 red_stained_glass_pane