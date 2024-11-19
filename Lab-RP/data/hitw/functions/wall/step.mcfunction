

execute as @e[type=marker,tag=wall_mover,tag=east] at @s run clone ~1 ~ ~ ~1 ~5 ~13 ~ ~ ~

execute as @e[type=marker,tag=wall_mover,tag=east] at @s run fill ~1 ~ ~ ~1 ~5 ~13 warped_button[face=wall,facing=east,powered=true] replace piston
#execute as @e[type=marker,tag=wall_mover,tag=east] at @s run fill ~2 ~ ~ ~2 ~5 ~13 air
execute as @e[type=marker,tag=wall_mover,tag=east] at @s run tp @s ~-1 ~ ~


schedule function hitw:wall/loop2 2t