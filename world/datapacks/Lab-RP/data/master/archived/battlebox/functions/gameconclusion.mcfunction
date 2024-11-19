
# This function would sum up the total scores of the current game, then teleport everyone to the lobby for the next minigame.
title @a title [{"text":"游戏结束！","color":"yellow","bold":true}]
schedule function battlebox:scoreannouncement 5s
execute as @a at @s run playsound minecraft:block.anvilland block @s ~ ~ ~ 1 1

tellraw @a [{"text":"————————————————————————————","color":"green"},{"text":"\n\n\n\n"}]
tellraw @a [{"text":"以下是各队本游戏积分情况","color":"yellow"}]
tellraw @a [{"text":"\n\n\n"},{"text":"————————————————————————————","color":"green"}]
#removes death detection
setblock -18 4 5 air
kill @e[type=item]

#resets game count
scoreboard players set red announced 0
scoreboard players set blue announced 0
scoreboard players set green announced 0
scoreboard players set yellow announced 0

scoreboard players operation red bb_teamscore += red battlebox_game
scoreboard players operation green bb_teamscore += green battlebox_game
scoreboard players operation blue bb_teamscore += blue battlebox_game
scoreboard players operation yellow bb_teamscore += yellow battlebox_game

scoreboard players operation 红队 overallscore += red battlebox_game
scoreboard players operation 绿队 overallscore += green battlebox_game
scoreboard players operation 蓝队 overallscore += blue battlebox_game
scoreboard players operation 黄队 overallscore += yellow battlebox_game

scoreboard players set red battlebox_game 0
scoreboard players set blue battlebox_game 0
scoreboard players set green battlebox_game 0
scoreboard players set yellow battlebox_game 0

scoreboard players reset : battlebox_sb
scoreboard players set §8 battlebox_sb 8
team modify placeholder_8 suffix [{"text":"游戏结束","color":"red","bold":true}]

schedule clear battlebox:killdetect
schedule clear battlebox:windetect
schedule clear master:timer/timeleft/sec