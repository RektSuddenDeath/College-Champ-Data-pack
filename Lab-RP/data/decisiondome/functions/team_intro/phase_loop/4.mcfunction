
execute as @e[type=armor_stand,tag=Intro] at @s run tp @s ~ ~ ~-0.08
execute as @e[type=armor_stand,tag=Intro] at @s as @a[distance=0.0001..] run spectate @e[type=armor_stand,tag=Intro,sort=nearest,limit=1] @s
schedule function decisiondome:team_intro/phase_loop/4 1t