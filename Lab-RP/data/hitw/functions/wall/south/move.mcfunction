
execute as @e[type=marker,tag=wall_mover,tag=south] at @s run function hitw:wall/south/move_single


schedule function hitw:wall/south/cleanup 1t