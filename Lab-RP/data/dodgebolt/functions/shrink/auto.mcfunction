
execute as @e[x=10012.5,y=185,z=9962,dx=1,dy=4,dz=31,type=arrow,tag=!marked] run scoreboard players add arrowsUsed db_game 1
execute as @e[x=10012.5,y=185,z=9962,dx=1,dy=4,dz=31,type=arrow,tag=!marked] run tag @s add marked

# Shrink by arrows used are disabled during Megabolt.
execute unless score mega_mode db_game matches 1 if score arrowsUsed db_game matches 5 run scoreboard players add all db_death 1
execute unless score mega_mode db_game matches 1 if score arrowsUsed db_game matches 5 run scoreboard players set arrowsUsed db_game 0


schedule function dodgebolt:shrink/auto 1t