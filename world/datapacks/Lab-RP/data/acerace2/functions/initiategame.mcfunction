
#This will load the map

team add spec "Spectators"

forceload add 3988 4014 4013 4009
fill 3989 135 4013 4012 142 4013 glass
fill 4012 142 4009 3989 135 4009 glass
#This will set all no-teamers spectators
team join spec @a[team=]
clear @a

#This tps all players to the arena

tp @a[team=!spec] 4000 135 4011
#This starts the countdown & intro

# xp set @a 61 levels

schedule function acerace2:intro/1b 3s
schedule function acerace2:intro/1a 4s
schedule function acerace2:intro/2a 6s
schedule function acerace2:intro/3a 14s
schedule function acerace2:intro/4a 22s
schedule function acerace2:intro/5a 30s
schedule function acerace2:intro/6a 38s

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

function acerace2:scoreboard
function master:timer/starting/acerace
function acerace2:beginlistener

# Teamscore erase
scoreboard objectives remove ar_teamscore
scoreboard objectives add ar_teamscore dummy
scoreboard objectives remove ar_indvscore
scoreboard objectives add ar_indvscore dummy
# Score adjustment
scoreboard players set 完成一圈 acerace_stats 15
scoreboard players set 第一个完赛 acerace_stats 384
scoreboard players set 后完赛递减 acerace_stats 12
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
