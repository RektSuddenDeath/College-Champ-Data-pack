
#This will load the map

team add spec "Spectators"

forceload add -29992 -30037 -30017 -30026
fill -30017 114 -30026 -29993 116 -30026 red_stained_glass
fill -29992 116 -30037 -30018 114 -30037 orange_stained_glass
#This will set all no-teamers spectators
team join spec @a[team=]
clear @a

scoreboard players set @a u.launchpad 0
#This tps all players to the arena

tp @a -30005 114 -30034
#This starts the countdown & intro

# xp set @a 61 levels

function acerace3:intro/1b
schedule function acerace3:intro/1a 2s
schedule function acerace3:intro/2a 4s
schedule function acerace3:intro/3a 14s
schedule function acerace3:intro/4a 24s
schedule function acerace3:intro/5a 34s
schedule function acerace3:intro/6a 44s

#Clears cached team scores and laps

##

##
scoreboard players set red ar_results 0
scoreboard players set blue ar_results 0
scoreboard players set green ar_results 0
scoreboard players set yellow ar_results 0
scoreboard players set cyan ar_results 0
scoreboard players set orange ar_results 0
scoreboard players set purple ar_results 0
scoreboard players set pink ar_results 0

scoreboard players set @a[team=!spec] ar_laps 1
scoreboard players set @a[team=spec] ar_laps -1
scoreboard objectives setdisplay list ar_laps
scoreboard players set completedplayers ar_game 0
scoreboard players set liveplayers ar_game 0

execute as @a[team=!spec] run scoreboard players add liveplayers ar_game 1

scoreboard players set minute ar_time 0
scoreboard players set second ar_time 0
scoreboard players set endtime ar_time 720

function acerace3:scoreboard/init
function master:timer/starting/acerace
function acerace3:beginlistener

# Teamscore erase
scoreboard objectives remove ar_teamscore
scoreboard objectives add ar_teamscore dummy
scoreboard objectives remove ar_indvscore
scoreboard objectives add ar_indvscore dummy

scoreboard objectives add ar_prevpos dummy
scoreboard players set @a ar_prevpos -1

# Score adjustment
scoreboard players set 完成一圈 acerace_stats 0
scoreboard players set 第一个完赛 acerace_stats 256
scoreboard players set 后完赛递减 acerace_stats 8
# MVP Function initialize
scoreboard players set @a mvprank 0
tag @a remove ar_pos1
tag @a remove ar_pos2
tag @a remove ar_pos3
tag @a remove ar_pos4
tag @a remove ar_pos5

# Prevents dropping
function utils:nodropping

tellraw @a[tag=_transcript] ["  §bTranscript >> §f§6Event State: §7GAME_SELECTED§f -> ACE_RACE_PRE_GAME"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
