execute as @a at @s if block ~ ~-2 ~ green_wool run scoreboard players set @s ar_cp4 1
execute as @a at @s if block ~ ~-2 ~ green_wool run title @s title " "
execute as @a at @s if block ~ ~-2 ~ green_wool run title @s subtitle [{"text":"存档点-4","color":"green"}]
execute as @a at @s if block ~ ~-2 ~ green_wool run spawnpoint @s ~ ~ ~ 270

execute if score gameflag ar_game matches 1 run schedule function acerace:checkpoint/4 2t