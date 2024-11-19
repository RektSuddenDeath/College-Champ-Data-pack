
schedule clear master:latejoinspec

title @a times 0 60 10
title @a title ["",{"text": "游戏结束！","color":"red","bold": true}]

execute as @a at @s run playsound music.gameendmusic record @s
# Friendly invisible revert
# Play recap
function hitw:player_action/final_recap

# Prevents Invisible
team modify blue seeFriendlyInvisibles true
team modify green seeFriendlyInvisibles true
team modify red seeFriendlyInvisibles true
team modify yellow seeFriendlyInvisibles true
team modify cyan seeFriendlyInvisibles true
team modify orange seeFriendlyInvisibles true
team modify purple seeFriendlyInvisibles true
team modify pink seeFriendlyInvisibles true
# Game Scoring Calculate
scoreboard players set red hitw_teamscore 0
scoreboard players set blue hitw_teamscore 0
scoreboard players set green hitw_teamscore 0
scoreboard players set yellow hitw_teamscore 0
scoreboard players set cyan hitw_teamscore 0
scoreboard players set orange hitw_teamscore 0
scoreboard players set purple hitw_teamscore 0
scoreboard players set pink hitw_teamscore 0

execute as @a[team=red] run scoreboard players operation red hitw_teamscore += @s hitw_indvscore
execute as @a[team=blue] run scoreboard players operation blue hitw_teamscore += @s hitw_indvscore
execute as @a[team=green] run scoreboard players operation green hitw_teamscore += @s hitw_indvscore
execute as @a[team=yellow] run scoreboard players operation yellow hitw_teamscore += @s hitw_indvscore
execute as @a[team=cyan] run scoreboard players operation cyan hitw_teamscore += @s hitw_indvscore
execute as @a[team=orange] run scoreboard players operation orange hitw_teamscore += @s hitw_indvscore
execute as @a[team=purple] run scoreboard players operation purple hitw_teamscore += @s hitw_indvscore
execute as @a[team=pink] run scoreboard players operation pink hitw_teamscore += @s hitw_indvscore

scoreboard players operation red hitw_teamscore *= multiplier1 tourney_stats
scoreboard players operation red hitw_teamscore /= multiplier2 tourney_stats

scoreboard players operation blue hitw_teamscore *= multiplier1 tourney_stats
scoreboard players operation blue hitw_teamscore /= multiplier2 tourney_stats

scoreboard players operation green hitw_teamscore *= multiplier1 tourney_stats
scoreboard players operation green hitw_teamscore /= multiplier2 tourney_stats

scoreboard players operation yellow hitw_teamscore *= multiplier1 tourney_stats
scoreboard players operation yellow hitw_teamscore /= multiplier2 tourney_stats

scoreboard players operation cyan hitw_teamscore *= multiplier1 tourney_stats
scoreboard players operation cyan hitw_teamscore /= multiplier2 tourney_stats

scoreboard players operation orange hitw_teamscore *= multiplier1 tourney_stats
scoreboard players operation orange hitw_teamscore /= multiplier2 tourney_stats

scoreboard players operation purple hitw_teamscore *= multiplier1 tourney_stats
scoreboard players operation purple hitw_teamscore /= multiplier2 tourney_stats

scoreboard players operation pink hitw_teamscore *= multiplier1 tourney_stats
scoreboard players operation pink hitw_teamscore /= multiplier2 tourney_stats

scoreboard players operation 红队 overallscore += red hitw_teamscore
scoreboard players operation 蓝队 overallscore += blue hitw_teamscore
scoreboard players operation 绿队 overallscore += green hitw_teamscore
scoreboard players operation 黄队 overallscore += yellow hitw_teamscore
scoreboard players operation 青队 overallscore += cyan hitw_teamscore
scoreboard players operation 橙队 overallscore += orange hitw_teamscore
scoreboard players operation 紫队 overallscore += purple hitw_teamscore
scoreboard players operation 粉队 overallscore += pink hitw_teamscore

scoreboard players operation red GameRankTarget = red hitw_teamscore
scoreboard players operation blue GameRankTarget = blue hitw_teamscore
scoreboard players operation green GameRankTarget = green hitw_teamscore
scoreboard players operation yellow GameRankTarget = yellow hitw_teamscore
scoreboard players operation cyan GameRankTarget = cyan hitw_teamscore
scoreboard players operation orange GameRankTarget = orange hitw_teamscore
scoreboard players operation purple GameRankTarget = purple hitw_teamscore
scoreboard players operation pink GameRankTarget = pink hitw_teamscore

# Annoucing Game Results.
execute as @a[team=!spec] run scoreboard players operation @s tourney_indv += @s hitw_indvscore
execute as @a[team=!spec] run scoreboard players operation @s SortTarget = @s hitw_indvscore
function utils:rankstart

schedule function utils:text/gamescore 2s
schedule function utils:text/mvp 10s
schedule function hitw:finalscore/mvp 12s
schedule function utils:text/eventstandings 20s

function utils:personal/update

execute if score eventmode tourney_stats matches 0 run scoreboard players reset : hitw_sb
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : hitw_sb_red
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : hitw_sb_blue
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : hitw_sb_green
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : hitw_sb_yellow
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : hitw_sb_cyan
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : hitw_sb_orange
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : hitw_sb_pink
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : hitw_sb_purple

execute if score eventmode tourney_stats matches 0 run scoreboard players set §2 hitw_sb 13
execute if score eventmode tourney_stats matches 0 run team modify placeholder_2 suffix ""
execute if score eventmode tourney_stats matches 0 run team modify placeholder_2 prefix ["",{"text": "游戏结束","color":"red","bold":true}]
execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/45s