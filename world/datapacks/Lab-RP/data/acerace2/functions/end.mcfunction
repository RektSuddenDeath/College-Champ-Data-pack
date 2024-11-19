
scoreboard players set RoundActive tourney_stats 0

scoreboard players set gameflag ar_game 0
gamemode spectator @a
scoreboard players set finishwarn ar_game 0
schedule clear master:sfx/overtime
schedule clear master:timer/timeleft/sec
schedule clear utils:launchpad/loop

execute as @a run attribute @s generic.movement_speed base set 0.1

title @a times 0 60 20
title @a title [{"text":"游戏结束！","color":"red","bold":true}]

tellraw @a " "

scoreboard players set @a ar_cp 0

# execute as @a at @s run playsound minecraft:block.anvilland block @s ~ ~ ~ 1 1
stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1
execute as @a at @s run playsound music.gameendmusic record @s

kill @e[type=boat]
clear @a

# Game Scoring Calculate
scoreboard players set red ar_teamscore 0
scoreboard players set blue ar_teamscore 0
scoreboard players set green ar_teamscore 0
scoreboard players set yellow ar_teamscore 0
scoreboard players set cyan ar_teamscore 0
scoreboard players set orange ar_teamscore 0
scoreboard players set purple ar_teamscore 0
scoreboard players set pink ar_teamscore 0

execute as @a run scoreboard players operation @s tourney_indv += @s ar_indvscore

execute as @a[team=red] run scoreboard players operation red ar_teamscore += @s ar_indvscore
execute as @a[team=blue] run scoreboard players operation blue ar_teamscore += @s ar_indvscore
execute as @a[team=green] run scoreboard players operation green ar_teamscore += @s ar_indvscore
execute as @a[team=yellow] run scoreboard players operation yellow ar_teamscore += @s ar_indvscore
execute as @a[team=cyan] run scoreboard players operation cyan ar_teamscore += @s ar_indvscore
execute as @a[team=orange] run scoreboard players operation orange ar_teamscore += @s ar_indvscore
execute as @a[team=purple] run scoreboard players operation purple ar_teamscore += @s ar_indvscore
execute as @a[team=pink] run scoreboard players operation pink ar_teamscore += @s ar_indvscore

scoreboard players operation red ar_teamscore *= multiplier1 tourney_stats
scoreboard players operation red ar_teamscore /= multiplier2 tourney_stats

scoreboard players operation blue ar_teamscore *= multiplier1 tourney_stats
scoreboard players operation blue ar_teamscore /= multiplier2 tourney_stats

scoreboard players operation green ar_teamscore *= multiplier1 tourney_stats
scoreboard players operation green ar_teamscore /= multiplier2 tourney_stats

scoreboard players operation yellow ar_teamscore *= multiplier1 tourney_stats
scoreboard players operation yellow ar_teamscore /= multiplier2 tourney_stats

scoreboard players operation cyan ar_teamscore *= multiplier1 tourney_stats
scoreboard players operation cyan ar_teamscore /= multiplier2 tourney_stats

scoreboard players operation orange ar_teamscore *= multiplier1 tourney_stats
scoreboard players operation orange ar_teamscore /= multiplier2 tourney_stats

scoreboard players operation purple ar_teamscore *= multiplier1 tourney_stats
scoreboard players operation purple ar_teamscore /= multiplier2 tourney_stats

scoreboard players operation pink ar_teamscore *= multiplier1 tourney_stats
scoreboard players operation pink ar_teamscore /= multiplier2 tourney_stats

scoreboard players operation 红队 overallscore += red ar_teamscore
scoreboard players operation 蓝队 overallscore += blue ar_teamscore
scoreboard players operation 绿队 overallscore += green ar_teamscore
scoreboard players operation 黄队 overallscore += yellow ar_teamscore
scoreboard players operation 青队 overallscore += cyan ar_teamscore
scoreboard players operation 橙队 overallscore += orange ar_teamscore
scoreboard players operation 紫队 overallscore += purple ar_teamscore
scoreboard players operation 粉队 overallscore += pink ar_teamscore

scoreboard players operation red GameRankTarget = red ar_teamscore
scoreboard players operation blue GameRankTarget = blue ar_teamscore
scoreboard players operation green GameRankTarget = green ar_teamscore
scoreboard players operation yellow GameRankTarget = yellow ar_teamscore
scoreboard players operation cyan GameRankTarget = cyan ar_teamscore
scoreboard players operation orange GameRankTarget = orange ar_teamscore
scoreboard players operation purple GameRankTarget = purple ar_teamscore
scoreboard players operation pink GameRankTarget = pink ar_teamscore

schedule function utils:text/gamescore 2s
schedule function utils:text/fastestgame 10s
schedule function acerace2:mvpannouncement 12s
schedule function utils:text/fastestlap 18s
schedule function acerace2:flapdec 20s
schedule function utils:text/eventstandings 26s

function utils:personal/update
schedule clear master:latejoinspec
function utils:no_drop_stop

execute if score eventmode tourney_stats matches 0 run scoreboard players reset : ar_sb
execute if score eventmode tourney_stats matches 0 run scoreboard players set §6 ar_sb 6
execute if score eventmode tourney_stats matches 0 run team modify placeholder_6 suffix [{"text":"游戏结束","color":"red","bold":true}]
execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/45s

tellraw @a[tag=_transcript] ["  §bTranscript >> §f§6Event State: §7ACE_RACE_IN_GAME§f -> GAME_ENDS"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]