
execute if score round meltdown_game matches 1 as @e[type=marker,tag=gate_anchor,tag=spawn_north,tag=meltdown_anchor_round_1] at @s run fill ~-2 ~1 ~ ~2 ~1 ~ air replace cyan_stained_glass
execute if score round meltdown_game matches 1 as @e[type=marker,tag=gate_anchor,tag=spawn_east,tag=meltdown_anchor_round_1] at @s run fill ~ ~1 ~-2 ~ ~1 ~2 air replace cyan_stained_glass

execute if score round meltdown_game matches 2 as @e[type=marker,tag=gate_anchor,tag=spawn_north,tag=meltdown_anchor_round_2] at @s run fill ~-2 ~1 ~ ~2 ~1 ~ air replace cyan_stained_glass
execute if score round meltdown_game matches 2 as @e[type=marker,tag=gate_anchor,tag=spawn_east,tag=meltdown_anchor_round_2] at @s run fill ~ ~1 ~-2 ~ ~1 ~2 air replace cyan_stained_glass

execute if score round meltdown_game matches 3 as @e[type=marker,tag=gate_anchor,tag=spawn_north,tag=meltdown_anchor_round_3] at @s run fill ~-2 ~1 ~ ~2 ~1 ~ air replace cyan_stained_glass
execute if score round meltdown_game matches 3 as @e[type=marker,tag=gate_anchor,tag=spawn_east,tag=meltdown_anchor_round_3] at @s run fill ~ ~1 ~-2 ~ ~1 ~2 air replace cyan_stained_glass

schedule function meltdown:gate_anim/spawn_3 2t