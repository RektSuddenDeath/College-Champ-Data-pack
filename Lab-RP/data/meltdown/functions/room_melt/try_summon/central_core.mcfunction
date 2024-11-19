
summon marker ~ ~ ~ {Tags:["meltdown_melt_point","central_core_melt_point","starting_point","desync_1"]}
spreadplayers ~ ~ 10 20 under 203 true @e[type=marker,tag=starting_point,tag=central_core_melt_point,sort=nearest,limit=1]
summon marker ~ ~ ~ {Tags:["meltdown_melt_point","central_core_melt_point","starting_point","desync_2"]}
spreadplayers ~ ~ 10 20 under 203 true @e[type=marker,tag=starting_point,tag=central_core_melt_point,sort=nearest,limit=1]

scoreboard players add attempts meltdown_begin_points 1

execute as @e[type=marker,tag=starting_point,tag=central_core_melt_point] at @s unless block ~ ~-1 ~ #meltdown:valid_starting_blocks run kill @s

scoreboard players set central_core meltdown_begin_points 0
execute as @e[type=marker,tag=starting_point,tag=central_core_melt_point] run scoreboard players add central_core meltdown_begin_points 1


#execute if score central_core meltdown_begin_points matches 0..3 if score attempts meltdown_begin_points matches 0..360 run function meltdown:room_melt/try_summon/central_core

tag @s add is_melting