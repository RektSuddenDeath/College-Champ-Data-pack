
scoreboard players set gameflag ar_game 0
gamemode spectator @a
scoreboard players set finishwarn ar_game 0

title @a times 0 60 20
title @a title [{"text":"游戏结束！","color":"red","bold":true}]

schedule function acerace:scoreannouncement 5s

tellraw @a [{"text":"———————————————————————————————————","color":"green"},{"text":"\n\n\n\n"}]
tellraw @a [{"text":"以下是各队本游戏积分情况","color":"yellow"}]
tellraw @a [{"text":"\n\n\n"},{"text":"———————————————————————————————————","color":"green"}]

scoreboard players set red announced 0
scoreboard players set blue announced 0
scoreboard players set green announced 0
scoreboard players set yellow announced 0

scoreboard players set @a ar_cp2 0

execute as @a at @s run playsound minecraft:block.anvilland block @s ~ ~ ~ 1 1

scoreboard players reset : ar_sb
scoreboard players set §6 ar_sb 6
team modify placeholder_6 suffix [{"text":"游戏结束","color":"red","bold":true}]

kill @e[type=boat]
clear @a

#This registers each team's scorings this match to overall scores.

scoreboard players operation 红队 overallscore += red ar_results
scoreboard players operation 蓝队 overallscore += blue ar_results
scoreboard players operation 绿队 overallscore += green ar_results
scoreboard players operation 黄队 overallscore += yellow ar_results

scoreboard objectives remove master.timer

effect clear @a