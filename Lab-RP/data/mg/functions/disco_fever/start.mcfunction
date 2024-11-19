

scoreboard players set gameflag mg_df_game 1
scoreboard players set duration_tick mg_df_game 0
# Remove barriers
fill -40011 99 -39994 -40007 104 -40006 air

# Generate the anchor as well as the first floor
function mg:disco_fever/cleanup
summon minecraft:marker -40000 100 -40000 {Tags:[mg_df,center]}
function mg:disco_fever/rand
execute as @e[type=marker,tag=mg_df,tag=center] at @s run function mg:disco_fever/generate_floor/init

data modify storage mg:disco_fever platform_time set value "6.0s"

# effects
execute as @a at @s run playsound sound.start record @s
title @a title ""
title @a subtitle ""
# Count Players
scoreboard players set TotalPlayers mg_df_game 0
execute as @a[gamemode=!spectator] run scoreboard players add TotalPlayers mg_df_game 1

# In Round Game Compos
function mg:disco_fever/inround_loop