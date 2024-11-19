
scoreboard players set RoundActive tourney_stats 0

schedule clear battlebox:kitselection/clearadvancement
schedule clear master:timer/timeleft/sec
schedule function battlebox:game/7/winanno 2s
scoreboard players set gameflag bb_game 0
tellraw @a ["",{"text": "以下是本轮对战情况: ","bold": true}]

stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2
execute as @a at @s run playsound music.gameendmusic record @s
title @a times 0 60 10
title @a title ["",{"text": "游戏结束！","color": "red","bold": true}]

team modify placeholder_r1 suffix "/7"
team modify placeholder_b1 suffix "/7"
team modify placeholder_g1 suffix "/7"
team modify placeholder_y1 suffix "/7"
team modify placeholder_or1 suffix "/7"
team modify placeholder_cy1 suffix "/7"
team modify placeholder_pu1 suffix "/7"
team modify placeholder_pi1 suffix "/7"

execute as @a run scoreboard players operation @s bb_gamekills += @s bb_roundkills
scoreboard players set @a bb_roundkills 0

schedule clear battlebox:statusbar/update
tag @a remove bb_alive

# GAME END
function battlebox:statusbar/clear
execute as @a[team=!spec] run scoreboard players operation @s SortTarget = @s bb_indvscore
function utils:rankstart

gamemode spectator @a
difficulty peaceful
schedule clear utils:survivalregen
schedule clear master:latejoinspec
function utils:no_drop_stop

execute if score eventmode tourney_stats matches 0 run scoreboard players reset :
execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/45s

schedule clear battlebox:ranking

gamerule reducedDebugInfo false


# Game Scoring Calculate
scoreboard players set red bb_teamscore 0
scoreboard players set blue bb_teamscore 0
scoreboard players set green bb_teamscore 0
scoreboard players set yellow bb_teamscore 0
scoreboard players set cyan bb_teamscore 0
scoreboard players set orange bb_teamscore 0
scoreboard players set purple bb_teamscore 0
scoreboard players set pink bb_teamscore 0

execute as @a run scoreboard players operation @s tourney_indv += @s bb_indvscore

execute as @a[team=red] run scoreboard players operation red bb_teamscore += @s bb_indvscore
execute as @a[team=blue] run scoreboard players operation blue bb_teamscore += @s bb_indvscore
execute as @a[team=green] run scoreboard players operation green bb_teamscore += @s bb_indvscore
execute as @a[team=yellow] run scoreboard players operation yellow bb_teamscore += @s bb_indvscore
execute as @a[team=cyan] run scoreboard players operation cyan bb_teamscore += @s bb_indvscore
execute as @a[team=orange] run scoreboard players operation orange bb_teamscore += @s bb_indvscore
execute as @a[team=purple] run scoreboard players operation purple bb_teamscore += @s bb_indvscore
execute as @a[team=pink] run scoreboard players operation pink bb_teamscore += @s bb_indvscore





scoreboard players operation red bb_teamscore *= multiplier1 tourney_stats
scoreboard players operation red bb_teamscore /= multiplier2 tourney_stats

scoreboard players operation blue bb_teamscore *= multiplier1 tourney_stats
scoreboard players operation blue bb_teamscore /= multiplier2 tourney_stats

scoreboard players operation green bb_teamscore *= multiplier1 tourney_stats
scoreboard players operation green bb_teamscore /= multiplier2 tourney_stats

scoreboard players operation yellow bb_teamscore *= multiplier1 tourney_stats
scoreboard players operation yellow bb_teamscore /= multiplier2 tourney_stats

scoreboard players operation cyan bb_teamscore *= multiplier1 tourney_stats
scoreboard players operation cyan bb_teamscore /= multiplier2 tourney_stats

scoreboard players operation orange bb_teamscore *= multiplier1 tourney_stats
scoreboard players operation orange bb_teamscore /= multiplier2 tourney_stats

scoreboard players operation purple bb_teamscore *= multiplier1 tourney_stats
scoreboard players operation purple bb_teamscore /= multiplier2 tourney_stats

scoreboard players operation pink bb_teamscore *= multiplier1 tourney_stats
scoreboard players operation pink bb_teamscore /= multiplier2 tourney_stats

# Negative Multi Init
execute if score multiplier1 tourney_stats matches ..-1 run data modify storage master:negative_multi namespace set value "bb_teamscore"
execute if score multiplier1 tourney_stats matches ..-1 run function master:negative_multi/init with storage master:negative_multi

scoreboard players operation 红队 overallscore += red bb_teamscore
scoreboard players operation 蓝队 overallscore += blue bb_teamscore
scoreboard players operation 绿队 overallscore += green bb_teamscore
scoreboard players operation 黄队 overallscore += yellow bb_teamscore
scoreboard players operation 青队 overallscore += cyan bb_teamscore
scoreboard players operation 橙队 overallscore += orange bb_teamscore
scoreboard players operation 紫队 overallscore += purple bb_teamscore
scoreboard players operation 粉队 overallscore += pink bb_teamscore

scoreboard players operation red GameRankTarget = red bb_teamscore
scoreboard players operation blue GameRankTarget = blue bb_teamscore
scoreboard players operation green GameRankTarget = green bb_teamscore
scoreboard players operation yellow GameRankTarget = yellow bb_teamscore
scoreboard players operation cyan GameRankTarget = cyan bb_teamscore
scoreboard players operation orange GameRankTarget = orange bb_teamscore
scoreboard players operation purple GameRankTarget = purple bb_teamscore
scoreboard players operation pink GameRankTarget = pink bb_teamscore

function utils:personal/update
schedule function utils:text/gamescore 6s
schedule function utils:text/mvp 14s
schedule function battlebox:mvpannouncement 16s
schedule function utils:text/eventstandings 24s

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> §f§6Event State: §7BATTLE_BOX_INGAME§f -> GAME_ENDS"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

# Remix Clear up
tag @a remove bb_noclear
tag @a remove bb_lost_survive