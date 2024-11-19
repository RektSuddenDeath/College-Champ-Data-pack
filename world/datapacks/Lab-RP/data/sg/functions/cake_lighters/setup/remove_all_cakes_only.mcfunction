

execute as @e[type=marker,tag=sg_cakelighters] at @s run setblock ~ ~ ~ air
tellraw @s "Success"