
execute as @e[type=armor_stand,tag=intro] at @s as @a[distance=0.0001..] run spectate @e[type=armor_stand,tag=intro,sort=nearest,limit=1] @s
execute as @e[type=armor_stand,tag=intro] at @s run tp @s ^ ^ ^-0.02
schedule function buildmart:intro/hold 1t