execute as @e[type=armor_stand,tag=intro,limit=1] at @s run execute as @a[gamemode=spectator,distance=0.1..] run spectate 
execute as @e[type=armor_stand,tag=intro,limit=1] at @s run execute as @a[gamemode=spectator,distance=0.1..] run spectate @e[type=armor_stand,tag=intro,limit=1] @s

# MAP:GLIDE
execute if score map1 tgttos_game matches 6 as @e[type=armor_stand,tag=intro] at @s run tp @s ~0.01 ~0.01 ~
# MAP:BOATS
execute if score map1 tgttos_game matches 2 as @e[type=armor_stand,tag=intro] at @s run tp @s ~-0.02 ~-0.01 ~-0.04
# MAP:CAVERN DRIVE
execute if score map1 tgttos_game matches 3 as @e[type=armor_stand,tag=intro] at @s run tp @s ~ ~0.003 ~0.005

schedule function tgttos:intro/hold 1t