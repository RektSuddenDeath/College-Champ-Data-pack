

#This will load the map
function acerace:loadmap/1
team add spec "Spectators"

forceload add -1004 -991 -997 -1010
fill -1002 101 -991 -1002 104 -1010 glass
fill -998 104 -992 -997 101 -1010 glass
#This will set all no-teamers spectators
team join spec @a[team=]
clear @a

#This tps all players to the arena

spreadplayers -1000 -998 0 1 true @a[team=!spec]
#This starts the countdown & intro

# xp set @a 61 levels
# function acerace:intro/xp
schedule function acerace:intro/1b 3s
schedule function acerace:intro/1a 4s
schedule function acerace:intro/2a 6s
schedule function acerace:intro/3a 14s
schedule function acerace:intro/4a 22s
schedule function acerace:intro/5a 30s
schedule function acerace:intro/6a 38s
schedule function acerace:intro/7a 55s
schedule function acerace:intro/8a 56s
schedule function acerace:intro/9a 57s
schedule function acerace:intro/10a 58s
schedule function acerace:intro/11a 59s

#Clears cached team scores and laps

##

##
scoreboard players set red ar_results 0
scoreboard players set blue ar_results 0
scoreboard players set green ar_results 0
scoreboard players set yellow ar_results 0

scoreboard players set @a[team=!spec] ar_laps 1
scoreboard players set @a[team=spec] ar_laps -1
scoreboard objectives setdisplay list ar_laps
scoreboard players set completedplayers ar_game 0
scoreboard players set liveplayers ar_game 0

execute as @a[team=!spec] run scoreboard players add liveplayers ar_game 1

scoreboard players set minute ar_time 0
scoreboard players set second ar_time 0
scoreboard players set endtime ar_time 720

function acerace:scoreboard
