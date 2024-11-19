# Run 1 final check through all builds
function buildmart:verify/all

# Flag
scoreboard players set RoundActive tourney_stats 0
scoreboard players set gameflag bm_game 0
scoreboard players set OvertimeActive OvertimeMusic 0


schedule clear master:latejoinspec
schedule clear master:timer/timeleft/sec
schedule clear buildmart:blocktitle
# Clear
effect clear @a glowing
clear @a
gamemode adventure @a[team=!spec]
# Title & sfx

title @a times 0 60 20
title @a subtitle ""
title @a title "§c§l游戏结束！"
stopsound @a voice
execute as @a at @s run playsound sound.end record @s
execute as @a at @s run playsound music.gameendmusic voice @s

# Take away all recipes
recipe take @a *

# Other Visuals
function buildmart:portal/close_portal

execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/45s

# Score

scoreboard objectives add temp_indvscore dummy
scoreboard players operation @a[team=red] temp_indvscore = red bm_teamscore
scoreboard players operation @a[team=blue] temp_indvscore = blue bm_teamscore
scoreboard players operation @a[team=green] temp_indvscore = green bm_teamscore
scoreboard players operation @a[team=yellow] temp_indvscore = yellow bm_teamscore
scoreboard players operation @a[team=cyan] temp_indvscore = cyan bm_teamscore
scoreboard players operation @a[team=orange] temp_indvscore = orange bm_teamscore
scoreboard players operation @a[team=pink] temp_indvscore = pink bm_teamscore
scoreboard players operation @a[team=purple] temp_indvscore = purple bm_teamscore
scoreboard players operation @a temp_indvscore /= 4 math
execute as @a run scoreboard players operation @s tourney_indv += @s temp_indvscore
scoreboard objectives remove temp_indvscore

scoreboard players operation red bm_teamscore *= multiplier1 tourney_stats
scoreboard players operation red bm_teamscore /= multiplier2 tourney_stats

scoreboard players operation blue bm_teamscore *= multiplier1 tourney_stats
scoreboard players operation blue bm_teamscore /= multiplier2 tourney_stats

scoreboard players operation green bm_teamscore *= multiplier1 tourney_stats
scoreboard players operation green bm_teamscore /= multiplier2 tourney_stats

scoreboard players operation yellow bm_teamscore *= multiplier1 tourney_stats
scoreboard players operation yellow bm_teamscore /= multiplier2 tourney_stats

scoreboard players operation cyan bm_teamscore *= multiplier1 tourney_stats
scoreboard players operation cyan bm_teamscore /= multiplier2 tourney_stats

scoreboard players operation orange bm_teamscore *= multiplier1 tourney_stats
scoreboard players operation orange bm_teamscore /= multiplier2 tourney_stats

scoreboard players operation purple bm_teamscore *= multiplier1 tourney_stats
scoreboard players operation purple bm_teamscore /= multiplier2 tourney_stats

scoreboard players operation pink bm_teamscore *= multiplier1 tourney_stats
scoreboard players operation pink bm_teamscore /= multiplier2 tourney_stats

scoreboard players operation 红队 overallscore += red bm_teamscore
scoreboard players operation 蓝队 overallscore += blue bm_teamscore
scoreboard players operation 绿队 overallscore += green bm_teamscore
scoreboard players operation 黄队 overallscore += yellow bm_teamscore
scoreboard players operation 青队 overallscore += cyan bm_teamscore
scoreboard players operation 橙队 overallscore += orange bm_teamscore
scoreboard players operation 紫队 overallscore += purple bm_teamscore
scoreboard players operation 粉队 overallscore += pink bm_teamscore


scoreboard players operation red GameRankTarget = red bm_teamscore
scoreboard players operation blue GameRankTarget = blue bm_teamscore
scoreboard players operation green GameRankTarget = green bm_teamscore
scoreboard players operation yellow GameRankTarget = yellow bm_teamscore
scoreboard players operation cyan GameRankTarget = cyan bm_teamscore
scoreboard players operation orange GameRankTarget = orange bm_teamscore
scoreboard players operation purple GameRankTarget = purple bm_teamscore
scoreboard players operation pink GameRankTarget = pink bm_teamscore

function utils:personal/update

schedule function utils:text/gamescore 2s
schedule function utils:text/eventstandings 10s
