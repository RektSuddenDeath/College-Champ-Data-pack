
tellraw @s ["","[","§e⭐","] ","§a你的队伍剩余§21§a名玩家，§e3§a个复活之星已分布在你周围32格内的箱子中。你的队伍至多可以至多复活§6§l1§a§l名成员。"]

execute as @e[type=marker,tag=sgchest,tag=tier1,distance=0..32,sort=random,limit=1] at @s run scoreboard players operation @s sg_chestid = gameid sg_game
execute as @e[type=marker,tag=sgchest,tag=tier1,distance=0..32,sort=random,limit=1] at @s run data merge block ~ ~0.5 ~ {Items:[{Slot:13,id:"minecraft:nether_star",Count:1b,tag:{display:{Name:'["§6§l复活之星 （按Q使用）"]'}}}]}