
# Each game has an unique ID which increases over time.
# If the chest ID does NOT match the "unique ID", means it should generate new loot.

execute as @e[type=marker,tag=sgchest,tag=tier1] at @s if entity @p[gamemode=!spectator,distance=0..6] unless score @s sg_chestid = gameid sg_game run data merge block ~ ~0.5 ~ {Items:[]}

execute as @e[type=marker,tag=sgchest,tag=tier1] at @s if entity @p[gamemode=!spectator,distance=0..6] unless score @s sg_chestid = gameid sg_game run data merge block ~ ~0.5 ~ {LootTable:"sg:t1chest"}
execute as @e[type=marker,tag=sgchest,tag=tier2] at @s if entity @p[gamemode=!spectator,distance=0..6] unless score @s sg_chestid = gameid sg_game run data merge block ~ ~0.5 ~ {LootTable:"sg:t2chest"}

execute as @e[type=marker,tag=sgchest] at @s if entity @p[gamemode=!spectator,distance=0..6] unless score @s sg_chestid = gameid sg_game run scoreboard players operation @s sg_chestid = gameid sg_game


execute if score gameflag sg_game matches 1 run schedule function sg:chest/placeloot 1t