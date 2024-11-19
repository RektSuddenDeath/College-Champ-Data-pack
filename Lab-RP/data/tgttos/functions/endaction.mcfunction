
schedule clear master:latejoinspec
schedule clear master:timer/timeleft/sec
# Game End music
execute as @a at @s run playsound music.gameendmusic record @s

# Plays recap to all unfinished players, assume a maximum of 8
execute as @r[scores={tgttos_recap_played=0},team=!spec] run function tgttos:player_action/play_recap
execute as @r[scores={tgttos_recap_played=0},team=!spec] run function tgttos:player_action/play_recap
execute as @r[scores={tgttos_recap_played=0},team=!spec] run function tgttos:player_action/play_recap
execute as @r[scores={tgttos_recap_played=0},team=!spec] run function tgttos:player_action/play_recap
execute as @r[scores={tgttos_recap_played=0},team=!spec] run function tgttos:player_action/play_recap
execute as @r[scores={tgttos_recap_played=0},team=!spec] run function tgttos:player_action/play_recap
execute as @r[scores={tgttos_recap_played=0},team=!spec] run function tgttos:player_action/play_recap
execute as @r[scores={tgttos_recap_played=0},team=!spec] run function tgttos:player_action/play_recap

# Ranks players
execute as @a[team=!spec] run scoreboard players operation @s tourney_indv += @s tgttos_indvscore
execute as @a[team=!spec] run scoreboard players operation @s SortTarget = @s tgttos_indvscore
function utils:rankstart

# Team scorings
scoreboard players set red tgttos_teamscore 0
scoreboard players set blue tgttos_teamscore 0
scoreboard players set green tgttos_teamscore 0
scoreboard players set yellow tgttos_teamscore 0
scoreboard players set cyan tgttos_teamscore 0
scoreboard players set orange tgttos_teamscore 0
scoreboard players set purple tgttos_teamscore 0
scoreboard players set pink tgttos_teamscore 0

execute as @a[team=red] run scoreboard players operation red tgttos_teamscore += @s tgttos_indvscore
execute as @a[team=blue] run scoreboard players operation blue tgttos_teamscore += @s tgttos_indvscore
execute as @a[team=green] run scoreboard players operation green tgttos_teamscore += @s tgttos_indvscore
execute as @a[team=yellow] run scoreboard players operation yellow tgttos_teamscore += @s tgttos_indvscore
execute as @a[team=cyan] run scoreboard players operation cyan tgttos_teamscore += @s tgttos_indvscore
execute as @a[team=orange] run scoreboard players operation orange tgttos_teamscore += @s tgttos_indvscore
execute as @a[team=purple] run scoreboard players operation purple tgttos_teamscore += @s tgttos_indvscore
execute as @a[team=pink] run scoreboard players operation pink tgttos_teamscore += @s tgttos_indvscore

scoreboard players operation red tgttos_teamscore *= multiplier1 tourney_stats
scoreboard players operation red tgttos_teamscore /= multiplier2 tourney_stats

scoreboard players operation blue tgttos_teamscore *= multiplier1 tourney_stats
scoreboard players operation blue tgttos_teamscore /= multiplier2 tourney_stats

scoreboard players operation green tgttos_teamscore *= multiplier1 tourney_stats
scoreboard players operation green tgttos_teamscore /= multiplier2 tourney_stats

scoreboard players operation yellow tgttos_teamscore *= multiplier1 tourney_stats
scoreboard players operation yellow tgttos_teamscore /= multiplier2 tourney_stats

scoreboard players operation cyan tgttos_teamscore *= multiplier1 tourney_stats
scoreboard players operation cyan tgttos_teamscore /= multiplier2 tourney_stats

scoreboard players operation orange tgttos_teamscore *= multiplier1 tourney_stats
scoreboard players operation orange tgttos_teamscore /= multiplier2 tourney_stats

scoreboard players operation purple tgttos_teamscore *= multiplier1 tourney_stats
scoreboard players operation purple tgttos_teamscore /= multiplier2 tourney_stats

scoreboard players operation pink tgttos_teamscore *= multiplier1 tourney_stats
scoreboard players operation pink tgttos_teamscore /= multiplier2 tourney_stats

scoreboard players operation 红队 overallscore += red tgttos_teamscore
scoreboard players operation 蓝队 overallscore += blue tgttos_teamscore
scoreboard players operation 绿队 overallscore += green tgttos_teamscore
scoreboard players operation 黄队 overallscore += yellow tgttos_teamscore
scoreboard players operation 青队 overallscore += cyan tgttos_teamscore
scoreboard players operation 橙队 overallscore += orange tgttos_teamscore
scoreboard players operation 紫队 overallscore += purple tgttos_teamscore
scoreboard players operation 粉队 overallscore += pink tgttos_teamscore

scoreboard players operation red GameRankTarget = red tgttos_teamscore
scoreboard players operation blue GameRankTarget = blue tgttos_teamscore
scoreboard players operation green GameRankTarget = green tgttos_teamscore
scoreboard players operation yellow GameRankTarget = yellow tgttos_teamscore
scoreboard players operation cyan GameRankTarget = cyan tgttos_teamscore
scoreboard players operation orange GameRankTarget = orange tgttos_teamscore
scoreboard players operation purple GameRankTarget = purple tgttos_teamscore
scoreboard players operation pink GameRankTarget = pink tgttos_teamscore

function utils:personal/update

# Announcement and calculation related
schedule function utils:text/gamescore 2s
schedule function utils:text/mvp 10s
schedule function tgttos:scorings/mvp 12s
schedule function utils:text/eventstandings 20s

# Display and back to hub

# team modify placeholder_2 suffix ""
# team modify placeholder_2 prefix ["",{"text":"游戏结束","color":"red","bold":true}]

execute if score eventmode tourney_stats matches 0 run scoreboard players reset : tgttos_sb
# execute if score eventmode tourney_stats matches 0 run scoreboard players set §2 tgttos_sb 2
execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/45s

# No Drop clean up
function utils:no_drop_stop