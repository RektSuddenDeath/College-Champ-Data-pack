execute as @a at @s if block ~ ~-2 ~ orange_wool run scoreboard players set @s ar_cp1 1
execute as @a at @s if block ~ ~-2 ~ orange_wool run title @s title " "
execute as @a at @s if block ~ ~-2 ~ orange_wool run title @s subtitle [{"text":"存档点-1","color":"green"}]
execute as @a at @s if block ~ ~-2 ~ orange_wool run spawnpoint @s ~ ~ ~ 90

execute if score gameflag ar_game matches 1 run schedule function acerace:checkpoint/1 2t