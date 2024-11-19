
execute as @e[type=marker,tag=wall_mover,tag=west] at @s run function hitw:wall/west/move_single


schedule function hitw:wall/west/cleanup 1t