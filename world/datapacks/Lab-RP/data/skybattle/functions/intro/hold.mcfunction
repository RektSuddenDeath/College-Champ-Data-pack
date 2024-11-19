
execute as @e[type=armor_stand,tag=Intro,limit=1] at @s run execute as @a[gamemode=spectator,distance=0.1..] run spectate 
execute as @e[type=armor_stand,tag=Intro,limit=1] at @s run execute as @a[gamemode=spectator,distance=0.1..] run spectate @e[type=armor_stand,tag=Intro,limit=1,sort=nearest] @s
execute as @e[type=armor_stand,tag=Intro,limit=1,sort=nearest] at @s run tp @s ^ ^0.005 ^0.025
schedule function skybattle:intro/hold 1t