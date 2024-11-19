
summon marker ~ ~ ~ {Tags:["meltdown_melt_point","outer_ring_melt_point","starting_point"]}
spreadplayers ~ ~ 10 20 under 203 true @e[type=marker,tag=starting_point,tag=outer_ring_melt_point,sort=nearest,limit=1]
summon marker ~ ~ ~ {Tags:["meltdown_melt_point","outer_ring_melt_point","starting_point"]}
spreadplayers ~ ~ 10 20 under 203 true @e[type=marker,tag=starting_point,tag=outer_ring_melt_point,sort=nearest,limit=1]
summon marker ~ ~ ~ {Tags:["meltdown_melt_point","outer_ring_melt_point","starting_point"]}
spreadplayers ~ ~ 10 20 under 203 true @e[type=marker,tag=starting_point,tag=outer_ring_melt_point,sort=nearest,limit=1]



scoreboard players add attempts meltdown_begin_points 1

execute as @e[type=marker,tag=starting_point,tag=outer_ring_melt_point] at @s unless block ~ ~-1 ~ #meltdown:valid_starting_blocks run kill @s

scoreboard players set outer_ring meltdown_begin_points 0
execute as @e[type=marker,tag=starting_point,tag=outer_ring_melt_point] run scoreboard players add outer_ring meltdown_begin_points 1

execute if score outer_ring meltdown_begin_points matches 0..1 if score attempts meltdown_begin_points matches 0..110 run function meltdown:room_melt/try_summon/outer_ring

tag @s add is_melting