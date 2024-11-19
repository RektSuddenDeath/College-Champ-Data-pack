# y4 x/z: 15 10.605
execute as @e[type=marker,tag=team_intro,tag=color_particle] at @s run tp @s ~ ~0.2 ~-0.7500
execute as @e[type=marker,tag=team_intro,tag=color_particle] at @s run scoreboard players add @s temp_particle_direction 1
execute as @e[type=marker,tag=team_intro,tag=color_particle] at @s if score @s temp_particle_direction matches 3 run scoreboard players set @s temp_particle_direction 1

execute as @e[type=marker,tag=team_intro,tag=color_particle] at @s if score @s temp_particle_direction matches 1 run particle dust 1 0 0 1 ~ ~0.5 ~ 0 0 0 0 1 force
execute as @e[type=marker,tag=team_intro,tag=color_particle] at @s if score @s temp_particle_direction matches 1 run particle dust 1 0 0 1 ~ ~-0.5 ~ 0 0 0 0 1 force
execute as @e[type=marker,tag=team_intro,tag=color_particle] at @s if score @s temp_particle_direction matches 1 run particle dust 1 0 0 1 ~0.5 ~ ~ 0 0 0 0 1 force
execute as @e[type=marker,tag=team_intro,tag=color_particle] at @s if score @s temp_particle_direction matches 1 run particle dust 1 0 0 1 ~-0.5 ~ ~ 0 0 0 0 1 force

execute as @e[type=marker,tag=team_intro,tag=color_particle] at @s if score @s temp_particle_direction matches 2 run particle dust 1 0 0 1 ~0.3535 ~0.3535 ~ 0 0 0 0 1 force
execute as @e[type=marker,tag=team_intro,tag=color_particle] at @s if score @s temp_particle_direction matches 2 run particle dust 1 0 0 1 ~-0.3535 ~0.3535 ~ 0 0 0 0 1 force
execute as @e[type=marker,tag=team_intro,tag=color_particle] at @s if score @s temp_particle_direction matches 2 run particle dust 1 0 0 1 ~0.3535 ~-0.3535 ~ 0 0 0 0 1 force
execute as @e[type=marker,tag=team_intro,tag=color_particle] at @s if score @s temp_particle_direction matches 2 run particle dust 1 0 0 1 ~-0.3535 ~-0.3535 ~ 0 0 0 0 1 force

schedule function decisiondome:team_intro/phase_loop/10 1t