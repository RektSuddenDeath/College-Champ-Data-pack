

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

summon area_effect_cloud -10000 2 -10000 {Duration:999999,Tags:["teamsort","red"]}
summon area_effect_cloud -10000 2 -10000 {Duration:999999,Tags:["teamsort","blue"]}
summon area_effect_cloud -10000 2 -10000 {Duration:999999,Tags:["teamsort","green"]}
summon area_effect_cloud -10000 2 -10000 {Duration:999999,Tags:["teamsort","yellow"]}
summon area_effect_cloud -10000 2 -10000 {Duration:999999,Tags:["teamsort","cyan"]}
summon area_effect_cloud -10000 2 -10000 {Duration:999999,Tags:["teamsort","orange"]}
summon area_effect_cloud -10000 2 -10000 {Duration:999999,Tags:["teamsort","purple"]}
summon area_effect_cloud -10000 2 -10000 {Duration:999999,Tags:["teamsort","pink"]}

# 
execute if score gamecount tourney_stats matches 0 run data modify storage tourney:debug game_count set value 1
execute if score gamecount tourney_stats matches 1 run data modify storage tourney:debug game_count set value 2
execute if score gamecount tourney_stats matches 2 run data modify storage tourney:debug game_count set value 3
execute if score gamecount tourney_stats matches 3 run data modify storage tourney:debug game_count set value 4
execute if score gamecount tourney_stats matches 4 run data modify storage tourney:debug game_count set value 5
execute if score gamecount tourney_stats matches 5 run data modify storage tourney:debug game_count set value 6
execute if score gamecount tourney_stats matches 6 run data modify storage tourney:debug game_count set value 7
execute if score gamecount tourney_stats matches 7 run data modify storage tourney:debug game_count set value 8
function utils:gamerank/save_to_log with storage tourney:debug


# Attach team score to aec in the respective team
scoreboard players operation @e[type=area_effect_cloud,tag=red] TeamSort = red GameRankTarget
scoreboard players operation @e[type=area_effect_cloud,tag=blue] TeamSort = blue GameRankTarget
scoreboard players operation @e[type=area_effect_cloud,tag=green] TeamSort = green GameRankTarget
scoreboard players operation @e[type=area_effect_cloud,tag=yellow] TeamSort = yellow GameRankTarget
scoreboard players operation @e[type=area_effect_cloud,tag=cyan] TeamSort = cyan GameRankTarget
scoreboard players operation @e[type=area_effect_cloud,tag=orange] TeamSort = orange GameRankTarget
scoreboard players operation @e[type=area_effect_cloud,tag=pink] TeamSort = pink GameRankTarget
scoreboard players operation @e[type=area_effect_cloud,tag=purple] TeamSort = purple GameRankTarget


execute as @e[type=area_effect_cloud,tag=teamsort] run scoreboard players operation @s TeamCached = @s TeamSort

function utils:gamerank/calculaterank