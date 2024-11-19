
execute unless entity @e[type=marker,tag=the_tunnel_rush_f,tag=pw_dynamic] run return 0

scoreboard players operation the_tunnel_rush_f pkw2_dynamic = dynamictick pkw2_dynamic
# Set Loop time in ticks
scoreboard players set 32 math 32
scoreboard players operation the_tunnel_rush_f pkw2_dynamic %= 32 math

# Animation (replace return 0 with the right item)
execute at @e[type=marker,tag=the_tunnel_rush_f,tag=pw_dynamic] if score the_tunnel_rush_f pkw2_dynamic matches 0 run fill ~-1 ~ ~24 ~1 ~ ~22 dirt
execute at @e[type=marker,tag=the_tunnel_rush_f,tag=pw_dynamic] if score the_tunnel_rush_f pkw2_dynamic matches 8 run fill ~-1 ~ ~18 ~1 ~ ~16 coarse_dirt
execute at @e[type=marker,tag=the_tunnel_rush_f,tag=pw_dynamic] if score the_tunnel_rush_f pkw2_dynamic matches 16 run fill ~-1 ~ ~12 ~1 ~ ~10 rooted_dirt
execute at @e[type=marker,tag=the_tunnel_rush_f,tag=pw_dynamic] if score the_tunnel_rush_f pkw2_dynamic matches 24 run fill ~-1 ~ ~6 ~1 ~ ~4 dirt

execute at @e[type=marker,tag=the_tunnel_rush_f,tag=pw_dynamic] if score the_tunnel_rush_f pkw2_dynamic matches 8 run setblock ~ ~ ~23 air destroy
execute at @e[type=marker,tag=the_tunnel_rush_f,tag=pw_dynamic] if score the_tunnel_rush_f pkw2_dynamic matches 16 run setblock ~ ~ ~17 air destroy
execute at @e[type=marker,tag=the_tunnel_rush_f,tag=pw_dynamic] if score the_tunnel_rush_f pkw2_dynamic matches 24 run setblock ~ ~ ~11 air destroy
execute at @e[type=marker,tag=the_tunnel_rush_f,tag=pw_dynamic] if score the_tunnel_rush_f pkw2_dynamic matches 0 run setblock ~ ~ ~5 air destroy

execute at @e[type=marker,tag=the_tunnel_rush_f,tag=pw_dynamic] if score the_tunnel_rush_f pkw2_dynamic matches 8 run fill ~-1 ~ ~24 ~1 ~ ~22 air
execute at @e[type=marker,tag=the_tunnel_rush_f,tag=pw_dynamic] if score the_tunnel_rush_f pkw2_dynamic matches 16 run fill ~-1 ~ ~18 ~1 ~ ~16 air
execute at @e[type=marker,tag=the_tunnel_rush_f,tag=pw_dynamic] if score the_tunnel_rush_f pkw2_dynamic matches 24 run fill ~-1 ~ ~12 ~1 ~ ~10 air
execute at @e[type=marker,tag=the_tunnel_rush_f,tag=pw_dynamic] if score the_tunnel_rush_f pkw2_dynamic matches 0 run fill ~-1 ~ ~6 ~1 ~ ~4 air