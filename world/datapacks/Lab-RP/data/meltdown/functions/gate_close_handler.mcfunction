
execute as @e[type=marker,tag=meltdown_anchor,tag=gate_anchor] if score @s meltdown_gate_close_time matches 0.. at @s run scoreboard players add @s meltdown_gate_close_time 1

execute as @e[type=marker,tag=meltdown_anchor,tag=gate_anchor] if score @s meltdown_gate_close_time matches 4 at @s run fill ~2 ~3 ~2 ~-2 ~3 ~-2 netherite_block
execute as @e[type=marker,tag=meltdown_anchor,tag=gate_anchor] if score @s meltdown_gate_close_time matches 8 at @s run fill ~2 ~2 ~2 ~-2 ~2 ~-2 netherite_block
execute as @e[type=marker,tag=meltdown_anchor,tag=gate_anchor] if score @s meltdown_gate_close_time matches 12 at @s run fill ~2 ~1 ~2 ~-2 ~ ~-2 netherite_block

execute if score gameflag meltdown_game matches 1 run schedule function meltdown:gate_close_handler 1s