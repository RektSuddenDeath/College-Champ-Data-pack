
execute as @a[team=!spec] run scoreboard players operation @s SortTarget = @s meltdown_indvscore
function utils:rankstart

execute if score eventmode tourney_stats matches 0 run scoreboard players reset :
execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/45s

execute as @a at @s run playsound music.gameendmusic voice @s

# Recap all remaining players, maximum of 8.
execute as @r[scores={meltdown_recap_played=0},team=!spec] at @s run function meltdown:player_action/play_recap
execute as @r[scores={meltdown_recap_played=0},team=!spec] at @s run function meltdown:player_action/play_recap
execute as @r[scores={meltdown_recap_played=0},team=!spec] at @s run function meltdown:player_action/play_recap
execute as @r[scores={meltdown_recap_played=0},team=!spec] at @s run function meltdown:player_action/play_recap
execute as @r[scores={meltdown_recap_played=0},team=!spec] at @s run function meltdown:player_action/play_recap
execute as @r[scores={meltdown_recap_played=0},team=!spec] at @s run function meltdown:player_action/play_recap
execute as @r[scores={meltdown_recap_played=0},team=!spec] at @s run function meltdown:player_action/play_recap
execute as @r[scores={meltdown_recap_played=0},team=!spec] at @s run function meltdown:player_action/play_recap

# Game Scoring Calculate
scoreboard players set red meltdown_teamscore 0
scoreboard players set blue meltdown_teamscore 0
scoreboard players set green meltdown_teamscore 0
scoreboard players set yellow meltdown_teamscore 0
scoreboard players set cyan meltdown_teamscore 0
scoreboard players set orange meltdown_teamscore 0
scoreboard players set purple meltdown_teamscore 0
scoreboard players set pink meltdown_teamscore 0

execute as @a run scoreboard players operation @s tourney_indv += @s meltdown_indvscore

execute as @a[team=red] run scoreboard players operation red meltdown_teamscore += @s meltdown_indvscore
execute as @a[team=blue] run scoreboard players operation blue meltdown_teamscore += @s meltdown_indvscore
execute as @a[team=green] run scoreboard players operation green meltdown_teamscore += @s meltdown_indvscore
execute as @a[team=yellow] run scoreboard players operation yellow meltdown_teamscore += @s meltdown_indvscore
execute as @a[team=cyan] run scoreboard players operation cyan meltdown_teamscore += @s meltdown_indvscore
execute as @a[team=orange] run scoreboard players operation orange meltdown_teamscore += @s meltdown_indvscore
execute as @a[team=purple] run scoreboard players operation purple meltdown_teamscore += @s meltdown_indvscore
execute as @a[team=pink] run scoreboard players operation pink meltdown_teamscore += @s meltdown_indvscore




scoreboard players operation red meltdown_teamscore *= multiplier1 tourney_stats
scoreboard players operation red meltdown_teamscore /= multiplier2 tourney_stats

scoreboard players operation blue meltdown_teamscore *= multiplier1 tourney_stats
scoreboard players operation blue meltdown_teamscore /= multiplier2 tourney_stats

scoreboard players operation green meltdown_teamscore *= multiplier1 tourney_stats
scoreboard players operation green meltdown_teamscore /= multiplier2 tourney_stats

scoreboard players operation yellow meltdown_teamscore *= multiplier1 tourney_stats
scoreboard players operation yellow meltdown_teamscore /= multiplier2 tourney_stats

scoreboard players operation cyan meltdown_teamscore *= multiplier1 tourney_stats
scoreboard players operation cyan meltdown_teamscore /= multiplier2 tourney_stats

scoreboard players operation orange meltdown_teamscore *= multiplier1 tourney_stats
scoreboard players operation orange meltdown_teamscore /= multiplier2 tourney_stats

scoreboard players operation purple meltdown_teamscore *= multiplier1 tourney_stats
scoreboard players operation purple meltdown_teamscore /= multiplier2 tourney_stats

scoreboard players operation pink meltdown_teamscore *= multiplier1 tourney_stats
scoreboard players operation pink meltdown_teamscore /= multiplier2 tourney_stats


# Negative Multi Init
execute if score multiplier1 tourney_stats matches ..-1 run data modify storage master:negative_multi namespace set value "meltdown_teamscore"
execute if score multiplier1 tourney_stats matches ..-1 run function master:negative_multi/init with storage master:negative_multi

scoreboard players operation 红队 overallscore += red meltdown_teamscore
scoreboard players operation 蓝队 overallscore += blue meltdown_teamscore
scoreboard players operation 绿队 overallscore += green meltdown_teamscore
scoreboard players operation 黄队 overallscore += yellow meltdown_teamscore
scoreboard players operation 青队 overallscore += cyan meltdown_teamscore
scoreboard players operation 橙队 overallscore += orange meltdown_teamscore
scoreboard players operation 紫队 overallscore += purple meltdown_teamscore
scoreboard players operation 粉队 overallscore += pink meltdown_teamscore

scoreboard players operation red GameRankTarget = red meltdown_teamscore
scoreboard players operation blue GameRankTarget = blue meltdown_teamscore
scoreboard players operation green GameRankTarget = green meltdown_teamscore
scoreboard players operation yellow GameRankTarget = yellow meltdown_teamscore
scoreboard players operation cyan GameRankTarget = cyan meltdown_teamscore
scoreboard players operation orange GameRankTarget = orange meltdown_teamscore
scoreboard players operation purple GameRankTarget = purple meltdown_teamscore
scoreboard players operation pink GameRankTarget = pink meltdown_teamscore

function utils:personal/update
schedule function utils:text/gamescore 8s
schedule function utils:text/mvp 14s
schedule function meltdown:mvpannouncement 16s
schedule function utils:text/eventstandings 22s
