execute as @a at @s if block ~ ~-2 ~ light_blue_wool run scoreboard players set @s ar_cp3 1
execute as @a at @s if block ~ ~-2 ~ light_blue_wool run title @s title " "
execute as @a at @s if block ~ ~-2 ~ light_blue_wool run title @s subtitle [{"text":"存档点-3","color":"green"}]
execute as @a at @s if block ~ ~-2 ~ light_blue_wool run spawnpoint @s ~ ~ ~ 270
execute as @a at @s if block ~ ~-2 ~ light_blue_wool run kill @e[type=boat,distance=0..5]
execute as @a at @s if block ~ ~-2 ~ light_blue_wool run clear @s oak_boat

execute if score gameflag ar_game matches 1 run schedule function acerace:checkpoint/3 2t