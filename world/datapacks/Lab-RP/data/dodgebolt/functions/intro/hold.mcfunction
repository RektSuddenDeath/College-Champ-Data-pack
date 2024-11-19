
execute as @e[type=armor_stand,tag=Intro,limit=1] at @s run tp @s ~ ~0.05 ~

execute as @e[type=armor_stand,tag=Intro,limit=1] at @s run execute as @a[gamemode=spectator,distance=0.1..] run spectate
execute as @e[type=armor_stand,tag=Intro,limit=1] at @s run execute as @a[gamemode=spectator,distance=0.1..] run spectate @e[type=armor_stand,tag=Intro,limit=1] @s
schedule function dodgebolt:intro/hold 1t