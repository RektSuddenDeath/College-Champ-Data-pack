
execute as @e[type=marker,tag=wall_mover,tag=north] at @s run function hitw:wall/north/move_single


schedule function hitw:wall/north/cleanup 1t