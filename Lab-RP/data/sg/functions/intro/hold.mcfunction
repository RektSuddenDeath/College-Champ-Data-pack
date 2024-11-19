
execute as @e[type=armor_stand,tag=intro,limit=1] at @s run execute as @a[gamemode=spectator,distance=0.1..] run spectate
execute as @e[type=armor_stand,tag=intro,limit=1] at @s run execute as @a[gamemode=spectator,distance=0.1..] run execute as @a run spectate @e[type=armor_stand,tag=intro,limit=1] @s

execute as @e[type=armor_stand,tag=intro,limit=1] at @s run tp @s ~0.09 ~-0.01 ~
schedule function sg:intro/hold 1t