execute as @e[type=marker,tag=gate_anchor,tag=spawn_north] at @s run particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 50
execute as @e[type=marker,tag=gate_anchor,tag=spawn_east] at @s run particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 50

execute if score round meltdown_game matches 1 as @e[type=marker,tag=gate_anchor,tag=spawn_north,tag=meltdown_anchor_round_1] at @s run fill ~-2 ~ ~ ~2 ~ ~ air replace cyan_stained_glass
execute if score round meltdown_game matches 1 as @e[type=marker,tag=gate_anchor,tag=spawn_east,tag=meltdown_anchor_round_1] at @s run fill ~ ~ ~-2 ~ ~ ~2 air replace cyan_stained_glass

execute if score round meltdown_game matches 2 as @e[type=marker,tag=gate_anchor,tag=spawn_north,tag=meltdown_anchor_round_2] at @s run fill ~-2 ~ ~ ~2 ~ ~ air replace cyan_stained_glass
execute if score round meltdown_game matches 2 as @e[type=marker,tag=gate_anchor,tag=spawn_east,tag=meltdown_anchor_round_2] at @s run fill ~ ~ ~-2 ~ ~ ~2 air replace cyan_stained_glass

execute if score round meltdown_game matches 3 as @e[type=marker,tag=gate_anchor,tag=spawn_north,tag=meltdown_anchor_round_3] at @s run fill ~-2 ~ ~ ~2 ~ ~ air replace cyan_stained_glass
execute if score round meltdown_game matches 3 as @e[type=marker,tag=gate_anchor,tag=spawn_east,tag=meltdown_anchor_round_3] at @s run fill ~ ~ ~-2 ~ ~ ~2 air replace cyan_stained_glass

schedule function meltdown:gate_anim/spawn_2 2t