
execute as @e[type=marker,tag=wall_mover,tag=east] at @s run function hitw:wall/east/move_single


schedule function hitw:wall/east/cleanup 1t