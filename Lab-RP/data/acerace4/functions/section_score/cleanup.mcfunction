
tag @a remove ar_champ_cp_1
tag @a remove ar_champ_cp_2
tag @a remove ar_champ_cp_3
tag @a remove ar_champ_cp_4
tag @a remove ar_champ_cp_5
tag @a remove ar_champ_cp_6
tag @a remove ar_champ_cp_7
tag @a remove ar_champ_cp_8
tag @a remove ar_champ_cp_9

execute as @a[team=!spec] run tellraw @s ["§7你本游戏的总分是",{"score":{"name": "@s","objective": "ar_indvscore"},"color": "yellow"},"."]

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