
execute as @e[type=marker,tag=killarena_marker] run function rocketspleefrush:disintegrate/accel with entity @s data
execute as @e[type=marker,tag=killarena_marker] at @s positioned ~-1 ~ ~-1 run function rocketspleefrush:disintegrate/stru with entity @s data

execute if score gameflag rsr_game matches 1 run schedule function rocketspleefrush:disintegrate/_new_method/master 1t