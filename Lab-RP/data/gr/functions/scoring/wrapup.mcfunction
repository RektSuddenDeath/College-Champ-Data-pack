
scoreboard objectives add temp_indvscore dummy
scoreboard players operation @a[team=red] temp_indvscore = red gr_teamscore
scoreboard players operation @a[team=blue] temp_indvscore = blue gr_teamscore
scoreboard players operation @a[team=green] temp_indvscore = green gr_teamscore
scoreboard players operation @a[team=yellow] temp_indvscore = yellow gr_teamscore
scoreboard players operation @a[team=cyan] temp_indvscore = cyan gr_teamscore
scoreboard players operation @a[team=orange] temp_indvscore = orange gr_teamscore
scoreboard players operation @a[team=pink] temp_indvscore = pink gr_teamscore
scoreboard players operation @a[team=purple] temp_indvscore = purple gr_teamscore
execute as @a run scoreboard players operation @s temp_indvscore /= 4 math
execute as @a run scoreboard players operation @s tourney_indv += @s temp_indvscore
scoreboard objectives remove temp_indvscore

scoreboard players operation red gr_teamscore *= multiplier1 tourney_stats
scoreboard players operation red gr_teamscore /= multiplier2 tourney_stats

scoreboard players operation blue gr_teamscore *= multiplier1 tourney_stats
scoreboard players operation blue gr_teamscore /= multiplier2 tourney_stats

scoreboard players operation green gr_teamscore *= multiplier1 tourney_stats
scoreboard players operation green gr_teamscore /= multiplier2 tourney_stats

scoreboard players operation yellow gr_teamscore *= multiplier1 tourney_stats
scoreboard players operation yellow gr_teamscore /= multiplier2 tourney_stats

scoreboard players operation cyan gr_teamscore *= multiplier1 tourney_stats
scoreboard players operation cyan gr_teamscore /= multiplier2 tourney_stats

scoreboard players operation orange gr_teamscore *= multiplier1 tourney_stats
scoreboard players operation orange gr_teamscore /= multiplier2 tourney_stats

scoreboard players operation purple gr_teamscore *= multiplier1 tourney_stats
scoreboard players operation purple gr_teamscore /= multiplier2 tourney_stats

scoreboard players operation pink gr_teamscore *= multiplier1 tourney_stats
scoreboard players operation pink gr_teamscore /= multiplier2 tourney_stats



scoreboard players operation 红队 overallscore += red gr_teamscore
scoreboard players operation 蓝队 overallscore += blue gr_teamscore
scoreboard players operation 绿队 overallscore += green gr_teamscore
scoreboard players operation 黄队 overallscore += yellow gr_teamscore
scoreboard players operation 青队 overallscore += cyan gr_teamscore
scoreboard players operation 橙队 overallscore += orange gr_teamscore
scoreboard players operation 紫队 overallscore += purple gr_teamscore
scoreboard players operation 粉队 overallscore += pink gr_teamscore

scoreboard players operation red GameRankTarget = red gr_teamscore
scoreboard players operation blue GameRankTarget = blue gr_teamscore
scoreboard players operation green GameRankTarget = green gr_teamscore
scoreboard players operation yellow GameRankTarget = yellow gr_teamscore
scoreboard players operation cyan GameRankTarget = cyan gr_teamscore
scoreboard players operation orange GameRankTarget = orange gr_teamscore
scoreboard players operation purple GameRankTarget = purple gr_teamscore
scoreboard players operation pink GameRankTarget = pink gr_teamscore

function utils:personal/update
