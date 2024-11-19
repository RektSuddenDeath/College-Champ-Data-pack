

execute if score round meltdown_game matches 1 as @e[type=marker,tag=room_center_anchor,tag=meltdown_anchor_round_1,tag=outer_corner,tag=!is_melting,sort=random,limit=1] at @s run function meltdown:room_melt/try_summon/outer_corner
execute if score round meltdown_game matches 2 as @e[type=marker,tag=room_center_anchor,tag=meltdown_anchor_round_2,tag=outer_corner,tag=!is_melting,sort=random,limit=1] at @s run function meltdown:room_melt/try_summon/outer_corner
execute if score round meltdown_game matches 3 as @e[type=marker,tag=room_center_anchor,tag=meltdown_anchor_round_3,tag=outer_corner,tag=!is_melting,sort=random,limit=1] at @s run function meltdown:room_melt/try_summon/outer_corner

execute as @e[type=marker,tag=outer_corner_melt_point] run tag @s remove starting_point
execute if score round meltdown_game matches 1 if entity @e[type=marker,tag=room_center_anchor,tag=meltdown_anchor_round_1,tag=outer_corner,tag=!is_melting] run function meltdown:room_melt/begin_selection/outer_corner
execute if score round meltdown_game matches 2 if entity @e[type=marker,tag=room_center_anchor,tag=meltdown_anchor_round_2,tag=outer_corner,tag=!is_melting] run function meltdown:room_melt/begin_selection/outer_corner
execute if score round meltdown_game matches 3 if entity @e[type=marker,tag=room_center_anchor,tag=meltdown_anchor_round_3,tag=outer_corner,tag=!is_melting] run function meltdown:room_melt/begin_selection/outer_corner
