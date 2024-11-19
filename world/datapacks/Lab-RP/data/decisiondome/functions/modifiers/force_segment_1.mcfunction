
schedule clear decisiondome:player
schedule clear decisiondome:vote/cycle

function decisiondome:vote/displayvotes
function decisiondome:vote/whiteout
scoreboard players set phase tourney_stats 5

function decisiondome:choosegame/sector/1

schedule function decisiondome:breakfloor 6s
schedule function decisiondome:vote/cleanup 155t
function master:timer/decisiondome/8s

execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2
title @a times 0 80 20
title @a subtitle ["",{"text": "即将传送……","color":"gold"}]

team modify placeholder_5 prefix ["",{"text": "传送到游戏: ","bold": true,"color":"red"}]
team modify placeholder_5 suffix ""

tellraw @a[tag=admin] ["§bForced the game in Segment 1 to be selected."]