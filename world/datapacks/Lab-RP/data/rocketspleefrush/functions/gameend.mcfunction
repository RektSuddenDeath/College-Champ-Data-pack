
schedule clear master:latejoinspec
function utils:no_drop_stop
schedule clear rocketspleefrush:novoid
stopsound @a voice minecraft:music.rsr

# Recap Message, try up to 8 times.
execute as @r[scores={rsr_recap_played=0},team=!spec] run function rocketspleefrush:player_action/play_recap
execute as @r[scores={rsr_recap_played=0},team=!spec] run function rocketspleefrush:player_action/play_recap
execute as @r[scores={rsr_recap_played=0},team=!spec] run function rocketspleefrush:player_action/play_recap
execute as @r[scores={rsr_recap_played=0},team=!spec] run function rocketspleefrush:player_action/play_recap
execute as @r[scores={rsr_recap_played=0},team=!spec] run function rocketspleefrush:player_action/play_recap
execute as @r[scores={rsr_recap_played=0},team=!spec] run function rocketspleefrush:player_action/play_recap
execute as @r[scores={rsr_recap_played=0},team=!spec] run function rocketspleefrush:player_action/play_recap
execute as @r[scores={rsr_recap_played=0},team=!spec] run function rocketspleefrush:player_action/play_recap
# 
title @a times 0 60 10
title @a title ["",{"text": "游戏结束！","color":"red","bold": true}]

execute as @a at @s run playsound music.gameendmusic record @s

scoreboard players set red rsr_teamscore 0
scoreboard players set blue rsr_teamscore 0
scoreboard players set green rsr_teamscore 0
scoreboard players set yellow rsr_teamscore 0
scoreboard players set cyan rsr_teamscore 0
scoreboard players set orange rsr_teamscore 0
scoreboard players set purple rsr_teamscore 0
scoreboard players set pink rsr_teamscore 0


execute as @a[team=red] run scoreboard players operation red rsr_teamscore += @s rsr_indvscore
execute as @a[team=blue] run scoreboard players operation blue rsr_teamscore += @s rsr_indvscore
execute as @a[team=green] run scoreboard players operation green rsr_teamscore += @s rsr_indvscore
execute as @a[team=yellow] run scoreboard players operation yellow rsr_teamscore += @s rsr_indvscore
execute as @a[team=cyan] run scoreboard players operation cyan rsr_teamscore += @s rsr_indvscore
execute as @a[team=orange] run scoreboard players operation orange rsr_teamscore += @s rsr_indvscore
execute as @a[team=purple] run scoreboard players operation purple rsr_teamscore += @s rsr_indvscore
execute as @a[team=pink] run scoreboard players operation pink rsr_teamscore += @s rsr_indvscore



scoreboard players operation red rsr_teamscore *= multiplier1 tourney_stats
scoreboard players operation red rsr_teamscore /= multiplier2 tourney_stats

scoreboard players operation blue rsr_teamscore *= multiplier1 tourney_stats
scoreboard players operation blue rsr_teamscore /= multiplier2 tourney_stats

scoreboard players operation green rsr_teamscore *= multiplier1 tourney_stats
scoreboard players operation green rsr_teamscore /= multiplier2 tourney_stats

scoreboard players operation yellow rsr_teamscore *= multiplier1 tourney_stats
scoreboard players operation yellow rsr_teamscore /= multiplier2 tourney_stats

scoreboard players operation cyan rsr_teamscore *= multiplier1 tourney_stats
scoreboard players operation cyan rsr_teamscore /= multiplier2 tourney_stats

scoreboard players operation orange rsr_teamscore *= multiplier1 tourney_stats
scoreboard players operation orange rsr_teamscore /= multiplier2 tourney_stats

scoreboard players operation purple rsr_teamscore *= multiplier1 tourney_stats
scoreboard players operation purple rsr_teamscore /= multiplier2 tourney_stats

scoreboard players operation pink rsr_teamscore *= multiplier1 tourney_stats
scoreboard players operation pink rsr_teamscore /= multiplier2 tourney_stats

# Negative Multi Init
execute if score multiplier1 tourney_stats matches ..-1 run data modify storage master:negative_multi namespace set value "rsr_teamscore"
execute if score multiplier1 tourney_stats matches ..-1 run function master:negative_multi/init with storage master:negative_multi

scoreboard players operation 红队 overallscore += red rsr_teamscore
scoreboard players operation 蓝队 overallscore += blue rsr_teamscore
scoreboard players operation 绿队 overallscore += green rsr_teamscore
scoreboard players operation 黄队 overallscore += yellow rsr_teamscore
scoreboard players operation 青队 overallscore += cyan rsr_teamscore
scoreboard players operation 橙队 overallscore += orange rsr_teamscore
scoreboard players operation 紫队 overallscore += purple rsr_teamscore
scoreboard players operation 粉队 overallscore += pink rsr_teamscore

scoreboard players operation red GameRankTarget = red rsr_teamscore
scoreboard players operation blue GameRankTarget = blue rsr_teamscore
scoreboard players operation green GameRankTarget = green rsr_teamscore
scoreboard players operation yellow GameRankTarget = yellow rsr_teamscore
scoreboard players operation cyan GameRankTarget = cyan rsr_teamscore
scoreboard players operation orange GameRankTarget = orange rsr_teamscore
scoreboard players operation purple GameRankTarget = purple rsr_teamscore
scoreboard players operation pink GameRankTarget = pink rsr_teamscore

function utils:personal/update

execute as @a[team=!spec] run scoreboard players operation @s tourney_indv += @s rsr_indvscore
execute as @a[team=!spec] run scoreboard players operation @s SortTarget = @s rsr_indvscore
function utils:rankstart

schedule function utils:text/gamescore 2s
schedule function utils:text/mvp 12s
schedule function rocketspleefrush:finalscore/mvp 14s
schedule function utils:text/eventstandings 22s

execute if score eventmode tourney_stats matches 0 run scoreboard players reset : rsr_sb
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : rsr_sb_red
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : rsr_sb_blue
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : rsr_sb_green
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : rsr_sb_yellow
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : rsr_sb_cyan
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : rsr_sb_orange
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : rsr_sb_pink
execute if score eventmode tourney_stats matches 0 run scoreboard players reset : rsr_sb_purple

execute if score eventmode tourney_stats matches 0 run scoreboard players set §7 rsr_sb 13
execute if score eventmode tourney_stats matches 0 run scoreboard players set §7 rsr_sb_red 13
execute if score eventmode tourney_stats matches 0 run scoreboard players set §7 rsr_sb_blue 13
execute if score eventmode tourney_stats matches 0 run scoreboard players set §7 rsr_sb_green 13
execute if score eventmode tourney_stats matches 0 run scoreboard players set §7 rsr_sb_yellow 13
execute if score eventmode tourney_stats matches 0 run scoreboard players set §7 rsr_sb_cyan 13
execute if score eventmode tourney_stats matches 0 run scoreboard players set §7 rsr_sb_pink 13
execute if score eventmode tourney_stats matches 0 run scoreboard players set §7 rsr_sb_orange 13
execute if score eventmode tourney_stats matches 0 run scoreboard players set §7 rsr_sb_purple 13

execute if score eventmode tourney_stats matches 0 run team modify placeholder_7 suffix ""
execute if score eventmode tourney_stats matches 0 run team modify placeholder_7 prefix ["",{"text": "游戏结束","color":"red","bold":true}]
execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/45s