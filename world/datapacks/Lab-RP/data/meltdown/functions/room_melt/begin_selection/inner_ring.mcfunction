

execute if score round meltdown_game matches 1 as @e[type=marker,tag=room_center_anchor,tag=meltdown_anchor_round_1,tag=inner_ring,tag=!is_melting,sort=random,limit=1] at @s run function meltdown:room_melt/try_summon/inner_ring
execute if score round meltdown_game matches 2 as @e[type=marker,tag=room_center_anchor,tag=meltdown_anchor_round_2,tag=inner_ring,tag=!is_melting,sort=random,limit=1] at @s run function meltdown:room_melt/try_summon/inner_ring
execute if score round meltdown_game matches 3 as @e[type=marker,tag=room_center_anchor,tag=meltdown_anchor_round_3,tag=inner_ring,tag=!is_melting,sort=random,limit=1] at @s run function meltdown:room_melt/try_summon/inner_ring

execute as @e[type=marker,tag=inner_ring_melt_point] run tag @s remove starting_point
execute if score round meltdown_game matches 1 if entity @e[type=marker,tag=room_center_anchor,tag=meltdown_anchor_round_1,tag=inner_ring,tag=!is_melting] run function meltdown:room_melt/begin_selection/inner_ring
execute if score round meltdown_game matches 2 if entity @e[type=marker,tag=room_center_anchor,tag=meltdown_anchor_round_2,tag=inner_ring,tag=!is_melting] run function meltdown:room_melt/begin_selection/inner_ring
execute if score round meltdown_game matches 3 if entity @e[type=marker,tag=room_center_anchor,tag=meltdown_anchor_round_3,tag=inner_ring,tag=!is_melting] run function meltdown:room_melt/begin_selection/inner_ring
