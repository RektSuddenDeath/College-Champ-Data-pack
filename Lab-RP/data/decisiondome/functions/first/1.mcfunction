
function decisiondome:tp
execute as @a at @s run playsound minecraft:music.decisiondome voice @s ~ ~ ~ 1

# Reset the Dome
kill @e[type=armor_stand,tag=lobbyvote]
kill @e[type=area_effect_cloud,tag=lobbyvote]

function decisiondome:column/1/red
function decisiondome:column/2/red
function decisiondome:column/3/red
function decisiondome:column/4/red
function decisiondome:column/5/red
function decisiondome:column/6/red
function decisiondome:column/7/red
function decisiondome:column/8/red

# Intro
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["  ",{"text": "欢迎来到 Decision Dome!","bold": true,"color":"yellow"}]
tellraw @a " "
tellraw @a ""
tellraw @a ["  ",{"text": "比赛的全部游戏都将在这里选取。"}]
tellraw @a ["  ",{"text": "投票开始后每名玩家都将获得一个鸡蛋。"}]
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

# Others

scoreboard players set phase tourney_stats 2
function master:timer/decisiondome/58s

team modify placeholder_5 suffix ""
team modify placeholder_5 prefix ["",{"text": "投票开始: ","bold": true,"color":"red"}]

# Clear out individual scores
scoreboard players set @a tourney_indv 0