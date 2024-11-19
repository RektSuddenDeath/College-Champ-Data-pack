execute as @a at @s if block ~ ~-2 ~ magenta_wool run scoreboard players set @s ar_cp2 1
execute as @a at @s if block ~ ~-2 ~ magenta_wool run title @s title " "
execute as @a at @s if block ~ ~-2 ~ magenta_wool run title @s subtitle [{"text":"存档点-2","color":"green"}]
execute as @a at @s if block ~ ~-2 ~ magenta_wool run spawnpoint @s ~ ~ ~ 90

execute as @a[x=-1063,y=113,z=-1106,dx=17,dy=10,dz=7] at @s run scoreboard players set @s ar_cp2 1

execute if score gameflag ar_game matches 1 run schedule function acerace:checkpoint/2 2t