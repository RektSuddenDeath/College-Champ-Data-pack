
execute unless entity @e[type=marker,tag=candy_connection,tag=pw_dynamic] run return 0

scoreboard players operation candy_connection pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 100 math 100
scoreboard players operation candy_connection pkw2_dynamic %= 100 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=candy_connection,tag=pw_dynamic] if score candy_connection pkw2_dynamic matches 0 run place template pkw2:candy_connection/1 ~-2 ~ ~3

execute at @e[type=marker,tag=candy_connection,tag=pw_dynamic] if score candy_connection pkw2_dynamic matches 20 run fill ~1 ~ ~6 ~-1 ~ ~6 air destroy
execute at @e[type=marker,tag=candy_connection,tag=pw_dynamic] if score candy_connection pkw2_dynamic matches 20 run fill ~1 ~ ~22 ~-1 ~ ~22 air destroy

execute at @e[type=marker,tag=candy_connection,tag=pw_dynamic] if score candy_connection pkw2_dynamic matches 50 run place template pkw2:candy_connection/1 ~-2 ~ ~3

execute at @e[type=marker,tag=candy_connection,tag=pw_dynamic] if score candy_connection pkw2_dynamic matches 70 run fill ~1 ~ ~10 ~-1 ~ ~10 air destroy
execute at @e[type=marker,tag=candy_connection,tag=pw_dynamic] if score candy_connection pkw2_dynamic matches 70 run fill ~1 ~ ~14 ~-1 ~ ~14 air destroy
execute at @e[type=marker,tag=candy_connection,tag=pw_dynamic] if score candy_connection pkw2_dynamic matches 70 run fill ~1 ~ ~18 ~-1 ~ ~18 air destroy
