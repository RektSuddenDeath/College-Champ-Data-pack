
execute as @e[type=marker,tag=team_intro,tag=phase_1] store result score @s temp_rot run data get entity @s Rotation[0] 100
execute as @e[type=marker,tag=team_intro,tag=phase_1] run scoreboard players add @s temp_rot 5
execute as @e[type=marker,tag=team_intro,tag=phase_1] store result entity @s Rotation[0] float 0.01 run scoreboard players get @s temp_rot




execute as @e[type=marker,tag=team_intro,tag=phase_1] at @s run tp @e[type=armor_stand,tag=Intro] ^ ^ ^24.09 facing -10000 123 -10100

execute as @e[type=armor_stand,tag=Intro] at @s as @a[distance=0.0001..] run spectate @e[type=armor_stand,tag=Intro,sort=nearest,limit=1] @s

schedule function decisiondome:team_intro/phase_loop/1 1t