
execute as @e[type=armor_stand,tag=Intro,limit=1] at @s run tp @s ~ ~0.01 ~0.015
execute as @e[type=armor_stand,tag=Intro,limit=1] at @s run execute as @a[gamemode=spectator,distance=0.1..] run spectate
execute as @e[type=armor_stand,tag=Intro,limit=1] at @s run execute as @a[gamemode=spectator,distance=0.1..] run spectate @e[type=armor_stand,tag=Intro,limit=1] @s

schedule function hitw:intro/hold 2t