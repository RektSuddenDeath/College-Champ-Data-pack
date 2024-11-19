

# 这个函数将会初始化排名功能。

scoreboard objectives remove TeamSort
scoreboard objectives remove TeamRank
scoreboard objectives remove TeamCached

scoreboard objectives add TeamSort dummy
scoreboard objectives add TeamRank dummy
scoreboard objectives add TeamCached dummy

scoreboard players set Step TeamSort 1
scoreboard players set Total TeamSort 8
scoreboard players set Position TeamRank 1

summon marker -10000 2 -10000 {Tags:["teamsort","red"]}
summon marker -10000 2 -10000 {Tags:["teamsort","blue"]}
summon marker -10000 2 -10000 {Tags:["teamsort","green"]}
summon marker -10000 2 -10000 {Tags:["teamsort","yellow"]}
summon marker -10000 2 -10000 {Tags:["teamsort","cyan"]}
summon marker -10000 2 -10000 {Tags:["teamsort","orange"]}
summon marker -10000 2 -10000 {Tags:["teamsort","purple"]}
summon marker -10000 2 -10000 {Tags:["teamsort","pink"]}

# 
# execute if score gamecount tourney_stats matches 0 run data modify storage tourney:debug game_count set value 1
# execute if score gamecount tourney_stats matches 1 run data modify storage tourney:debug game_count set value 2
# execute if score gamecount tourney_stats matches 2 run data modify storage tourney:debug game_count set value 3
# execute if score gamecount tourney_stats matches 3 run data modify storage tourney:debug game_count set value 4
# execute if score gamecount tourney_stats matches 4 run data modify storage tourney:debug game_count set value 5
# execute if score gamecount tourney_stats matches 5 run data modify storage tourney:debug game_count set value 6
# execute if score gamecount tourney_stats matches 6 run data modify storage tourney:debug game_count set value 7
# execute if score gamecount tourney_stats matches 7 run data modify storage tourney:debug game_count set value 8
# function master:negative_multi/sort/save_to_log with storage tourney:debug


# Attach team score to aec in the respective team
scoreboard players operation @e[type=marker,tag=red,tag=teamsort,limit=1] TeamSort = red GameRankTarget
scoreboard players operation @e[type=marker,tag=blue,tag=teamsort,limit=1] TeamSort = blue GameRankTarget
scoreboard players operation @e[type=marker,tag=green,tag=teamsort,limit=1] TeamSort = green GameRankTarget
scoreboard players operation @e[type=marker,tag=yellow,tag=teamsort,limit=1] TeamSort = yellow GameRankTarget
scoreboard players operation @e[type=marker,tag=cyan,tag=teamsort,limit=1] TeamSort = cyan GameRankTarget
scoreboard players operation @e[type=marker,tag=orange,tag=teamsort,limit=1] TeamSort = orange GameRankTarget
scoreboard players operation @e[type=marker,tag=pink,tag=teamsort,limit=1] TeamSort = pink GameRankTarget
scoreboard players operation @e[type=marker,tag=purple,tag=teamsort,limit=1] TeamSort = purple GameRankTarget


execute as @e[type=marker,tag=teamsort] run scoreboard players operation @s TeamCached = @s TeamSort

function master:negative_multi/sort/calculaterank