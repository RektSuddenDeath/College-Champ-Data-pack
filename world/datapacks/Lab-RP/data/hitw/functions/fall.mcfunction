

tag @a[team=!spec,tag=hitw_alive,x=-5020,y=80,z=-5020,dx=41,dy=8,dz=41] add fallen

execute as @a[tag=fallen] run tag @s remove hitw_alive

execute as @a[tag=fallen] run scoreboard players operation @s hitw_roundrank = TotalPlayers hitw_game

execute as @a[tag=fallen] if score round hitw_game matches 1 run scoreboard players operation @s hitw_recap_r1 = @s hitw_roundrank
execute as @a[tag=fallen] if score round hitw_game matches 2 run scoreboard players operation @s hitw_recap_r2 = @s hitw_roundrank
execute as @a[tag=fallen] if score round hitw_game matches 3 run scoreboard players operation @s hitw_recap_r3 = @s hitw_roundrank

execute as @a[tag=fallen] run scoreboard players remove TotalPlayers hitw_game 1


# Death Message and Score addition.
execute as @a[tag=fallen] run function hitw:deathmsg

execute as @a[tag=fallen] run execute as @a[tag=hitw_alive] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1

execute as @a[tag=fallen] run scoreboard players add @a[tag=hitw_alive] hitw_roundscore 5
execute as @a[tag=fallen] run execute as @a[tag=hitw_alive] at @s run playsound minecraft:sound.coinsminor record @s ~ ~ ~ 1

execute as @a[tag=fallen] run kill @s
execute as @a[tag=fallen] run tellraw @s ["","§c[§r楒§c] ",{"text": "你掉出了游戏场地！","color":"white","bold":true}]
execute as @a[tag=fallen] run tellraw @s ["","§c[§r輶§c] ","§7你本轮躲避了",{"score":{"name": "@s","objective": "hitw_round_dodged"},"color": "aqua"},"§7面墙。"]

#execute as @a[tag=fallen] run tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@s"}," 掉出了游戏场地。"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

# Team Elimination Message (Doesn't matter since it's last man standing.)
execute as @a[tag=fallen,team=red] run scoreboard players remove red hitw_game 1
execute as @a[tag=fallen,team=blue] run scoreboard players remove blue hitw_game 1
execute as @a[tag=fallen,team=green] run scoreboard players remove green hitw_game 1
execute as @a[tag=fallen,team=yellow] run scoreboard players remove yellow hitw_game 1
execute as @a[tag=fallen,team=cyan] run scoreboard players remove cyan hitw_game 1
execute as @a[tag=fallen,team=orange] run scoreboard players remove orange hitw_game 1
execute as @a[tag=fallen,team=pink] run scoreboard players remove pink hitw_game 1
execute as @a[tag=fallen,team=purple] run scoreboard players remove purple hitw_game 1

execute as @a[tag=fallen,team=red] if score red hitw_game matches 0 run tellraw @a ["","§7[§r楒§7] ",{"text": "红队","color":"red"},{"text": "已被团灭！"}]
execute as @a[tag=fallen,team=blue] if score blue hitw_game matches 0 run tellraw @a ["","§7[§r楒§7] ",{"text": "蓝队","color":"blue"},{"text": "已被团灭！"}]
execute as @a[tag=fallen,team=green] if score green hitw_game matches 0 run tellraw @a ["","§7[§r楒§7] ",{"text": "绿队","color":"green"},{"text": "已被团灭！"}]
execute as @a[tag=fallen,team=yellow] if score yellow hitw_game matches 0 run tellraw @a ["","§7[§r楒§7] ",{"text": "黄队","color":"yellow"},{"text": "已被团灭！"}]
execute as @a[tag=fallen,team=cyan] if score cyan hitw_game matches 0 run tellraw @a ["","§7[§r楒§7] ",{"text": "青队","color":"dark_aqua"},{"text": "已被团灭！"}]
execute as @a[tag=fallen,team=orange] if score orange hitw_game matches 0 run tellraw @a ["","§7[§r楒§7] ",{"text": "橙队","color":"gold"},{"text": "已被团灭！"}]
execute as @a[tag=fallen,team=pink] if score pink hitw_game matches 0 run tellraw @a ["","§7[§r楒§7] ",{"text": "粉队","color":"light_purple"},{"text": "已被团灭！"}]
execute as @a[tag=fallen,team=purple] if score purple hitw_game matches 0 run tellraw @a ["","§7[§r楒§7] ",{"text": "紫队","color":"dark_purple"},{"text": "已被团灭！"}]

execute as @r[tag=fallen] if score TotalPlayers hitw_game matches 20 run tellraw @a ["","§b[§r輶§b] ","§b剩余",{"text": "20","color": "#E3E3E3"},"§b名玩家！"]
execute as @r[tag=fallen] if score TotalPlayers hitw_game matches 10 run tellraw @a ["","§b[§r輶§b] ","§b剩余",{"text": "10","color": "#E3E3E3"},"§b名玩家！"]
execute as @r[tag=fallen] if score TotalPlayers hitw_game matches 5 run tellraw @a ["","§b[§r輶§b] ","§b剩余",{"text": "5","color": "#E3E3E3"},"§b名玩家！"]
execute as @r[tag=fallen] if score TotalPlayers hitw_game matches 4 run tellraw @a ["","§b[§r輶§b] ","§b剩余",{"text": "4","color": "#E3E3E3"},"§b名玩家！"]
execute as @r[tag=fallen] if score TotalPlayers hitw_game matches 3 run tellraw @a ["","§b[§r輶§b] ","§b剩余",{"text": "3","color": "#E3E3E3"},"§b名玩家！"]
execute as @r[tag=fallen] if score TotalPlayers hitw_game matches 2 run tellraw @a ["","§b[§r輶§b] ","§b剩余",{"text": "2","color": "#E3E3E3"},"§b名玩家！"]

execute as @r[tag=fallen] if score TotalPlayers hitw_game matches 3 unless score OvertimeActive OvertimeMusic matches 1 run function master:overtime/init
# Cleanup
tag @a remove fallen
scoreboard players add deathmsg hitw_game 1
execute if score deathmsg hitw_game matches 31 run scoreboard players set deathmsg hitw_game 0

execute if score gameflag hitw_game matches 1 run schedule function hitw:fall 1t