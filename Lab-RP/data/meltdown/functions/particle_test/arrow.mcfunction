
execute as @e[type=arrow,tag=particle_wait_2] at @s run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 0 normal @a
tag @e[type=arrow,tag=particle_wait] add particle_wait_2
tag @e[type=arrow,tag=!particle_wait] add particle_wait

schedule function meltdown:particle_test/arrow 1t