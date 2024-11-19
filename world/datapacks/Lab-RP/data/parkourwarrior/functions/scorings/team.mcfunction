
scoreboard objectives add pkw_teamscore dummy

scoreboard players set red pkw_teamscore 0
scoreboard players set blue pkw_teamscore 0
scoreboard players set green pkw_teamscore 0
scoreboard players set yellow pkw_teamscore 0
scoreboard players set cyan pkw_teamscore 0
scoreboard players set orange pkw_teamscore 0
scoreboard players set purple pkw_teamscore 0
scoreboard players set pink pkw_teamscore 0

execute as @a[team=red] run scoreboard players operation red pkw_teamscore += @s pkw_scoreindv
execute as @a[team=blue] run scoreboard players operation blue pkw_teamscore += @s pkw_scoreindv
execute as @a[team=green] run scoreboard players operation green pkw_teamscore += @s pkw_scoreindv
execute as @a[team=yellow] run scoreboard players operation yellow pkw_teamscore += @s pkw_scoreindv
execute as @a[team=cyan] run scoreboard players operation cyan pkw_teamscore += @s pkw_scoreindv
execute as @a[team=orange] run scoreboard players operation orange pkw_teamscore += @s pkw_scoreindv
execute as @a[team=purple] run scoreboard players operation purple pkw_teamscore += @s pkw_scoreindv
execute as @a[team=pink] run scoreboard players operation pink pkw_teamscore += @s pkw_scoreindv

scoreboard players operation red pkw_teamscore *= multiplier1 tourney_stats
scoreboard players operation red pkw_teamscore /= multiplier2 tourney_stats

scoreboard players operation blue pkw_teamscore *= multiplier1 tourney_stats
scoreboard players operation blue pkw_teamscore /= multiplier2 tourney_stats

scoreboard players operation green pkw_teamscore *= multiplier1 tourney_stats
scoreboard players operation green pkw_teamscore /= multiplier2 tourney_stats

scoreboard players operation yellow pkw_teamscore *= multiplier1 tourney_stats
scoreboard players operation yellow pkw_teamscore /= multiplier2 tourney_stats

scoreboard players operation cyan pkw_teamscore *= multiplier1 tourney_stats
scoreboard players operation cyan pkw_teamscore /= multiplier2 tourney_stats

scoreboard players operation orange pkw_teamscore *= multiplier1 tourney_stats
scoreboard players operation orange pkw_teamscore /= multiplier2 tourney_stats

scoreboard players operation purple pkw_teamscore *= multiplier1 tourney_stats
scoreboard players operation purple pkw_teamscore /= multiplier2 tourney_stats

scoreboard players operation pink pkw_teamscore *= multiplier1 tourney_stats
scoreboard players operation pink pkw_teamscore /= multiplier2 tourney_stats

scoreboard players operation 红队 overallscore += red pkw_teamscore
scoreboard players operation 蓝队 overallscore += blue pkw_teamscore
scoreboard players operation 绿队 overallscore += green pkw_teamscore
scoreboard players operation 黄队 overallscore += yellow pkw_teamscore
scoreboard players operation 青队 overallscore += cyan pkw_teamscore
scoreboard players operation 橙队 overallscore += orange pkw_teamscore
scoreboard players operation 紫队 overallscore += purple pkw_teamscore
scoreboard players operation 粉队 overallscore += pink pkw_teamscore

scoreboard players operation red GameRankTarget = red pkw_teamscore
scoreboard players operation blue GameRankTarget = blue pkw_teamscore
scoreboard players operation green GameRankTarget = green pkw_teamscore
scoreboard players operation yellow GameRankTarget = yellow pkw_teamscore
scoreboard players operation cyan GameRankTarget = cyan pkw_teamscore
scoreboard players operation orange GameRankTarget = orange pkw_teamscore
scoreboard players operation purple GameRankTarget = purple pkw_teamscore
scoreboard players operation pink GameRankTarget = pink pkw_teamscore