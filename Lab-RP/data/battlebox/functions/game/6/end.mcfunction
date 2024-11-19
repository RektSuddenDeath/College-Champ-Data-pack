
scoreboard players set RoundActive tourney_stats 0

schedule clear master:timer/timeleft/sec
schedule function battlebox:game/6/winanno 2s
scoreboard players set gameflag bb_game 0
tellraw @a ["",{"text": "以下是本轮对战情况: ","bold": true}]

execute as @a at @s run playsound minecraft:block.anvilland block @s ~ ~ ~ 1 1
stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2
title @a times 0 60 10
title @a title ["",{"text": "回合结束！","color": "red","bold": true}]

function master:timer/nextround/10s
schedule function battlebox:game/7/pregame 10s

team modify placeholder_r1 suffix "/6"
team modify placeholder_b1 suffix "/6"
team modify placeholder_g1 suffix "/6"
team modify placeholder_y1 suffix "/6"
team modify placeholder_or1 suffix "/6"
team modify placeholder_cy1 suffix "/6"
team modify placeholder_pu1 suffix "/6"
team modify placeholder_pi1 suffix "/6"

execute as @a run scoreboard players operation @s bb_gamekills += @s bb_roundkills
scoreboard players set @a bb_roundkills 0

schedule clear battlebox:statusbar/update
tag @a remove bb_alive