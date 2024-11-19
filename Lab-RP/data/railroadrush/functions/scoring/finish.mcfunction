

execute as @e[type=marker,tag=rrr_temp_rank,tag=team_red] run scoreboard players operation red rrr_teamscore = @s rrr_temp_score
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_blue] run scoreboard players operation blue rrr_teamscore = @s rrr_temp_score
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_green] run scoreboard players operation green rrr_teamscore = @s rrr_temp_score
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_yellow] run scoreboard players operation yellow rrr_teamscore = @s rrr_temp_score
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_cyan] run scoreboard players operation cyan rrr_teamscore = @s rrr_temp_score
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_pink] run scoreboard players operation pink rrr_teamscore = @s rrr_temp_score
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_orange] run scoreboard players operation orange rrr_teamscore = @s rrr_temp_score
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_purple] run scoreboard players operation purple rrr_teamscore = @s rrr_temp_score

execute as @a at @s run playsound music.gameendmusic voice @s


execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/45s

# Score

scoreboard objectives add temp_indvscore dummy
scoreboard players operation @a[team=red] temp_indvscore = red rrr_teamscore
scoreboard players operation @a[team=blue] temp_indvscore = blue rrr_teamscore
scoreboard players operation @a[team=green] temp_indvscore = green rrr_teamscore
scoreboard players operation @a[team=yellow] temp_indvscore = yellow rrr_teamscore
scoreboard players operation @a[team=cyan] temp_indvscore = cyan rrr_teamscore
scoreboard players operation @a[team=orange] temp_indvscore = orange rrr_teamscore
scoreboard players operation @a[team=pink] temp_indvscore = pink rrr_teamscore
scoreboard players operation @a[team=purple] temp_indvscore = purple rrr_teamscore
scoreboard players operation @a temp_indvscore /= 4 math
execute as @a run scoreboard players operation @s tourney_indv += @s temp_indvscore
scoreboard objectives remove temp_indvscore





scoreboard players operation red rrr_teamscore *= multiplier1 tourney_stats
scoreboard players operation red rrr_teamscore /= multiplier2 tourney_stats

scoreboard players operation blue rrr_teamscore *= multiplier1 tourney_stats
scoreboard players operation blue rrr_teamscore /= multiplier2 tourney_stats

scoreboard players operation green rrr_teamscore *= multiplier1 tourney_stats
scoreboard players operation green rrr_teamscore /= multiplier2 tourney_stats

scoreboard players operation yellow rrr_teamscore *= multiplier1 tourney_stats
scoreboard players operation yellow rrr_teamscore /= multiplier2 tourney_stats

scoreboard players operation cyan rrr_teamscore *= multiplier1 tourney_stats
scoreboard players operation cyan rrr_teamscore /= multiplier2 tourney_stats

scoreboard players operation orange rrr_teamscore *= multiplier1 tourney_stats
scoreboard players operation orange rrr_teamscore /= multiplier2 tourney_stats

scoreboard players operation purple rrr_teamscore *= multiplier1 tourney_stats
scoreboard players operation purple rrr_teamscore /= multiplier2 tourney_stats

scoreboard players operation pink rrr_teamscore *= multiplier1 tourney_stats
scoreboard players operation pink rrr_teamscore /= multiplier2 tourney_stats

# Negative Multi Init
execute if score multiplier1 tourney_stats matches ..-1 run data modify storage master:negative_multi namespace set value "rrr_teamscore"
execute if score multiplier1 tourney_stats matches ..-1 run function master:negative_multi/init with storage master:negative_multi


scoreboard players operation 红队 overallscore += red rrr_teamscore
scoreboard players operation 蓝队 overallscore += blue rrr_teamscore
scoreboard players operation 绿队 overallscore += green rrr_teamscore
scoreboard players operation 黄队 overallscore += yellow rrr_teamscore
scoreboard players operation 青队 overallscore += cyan rrr_teamscore
scoreboard players operation 橙队 overallscore += orange rrr_teamscore
scoreboard players operation 紫队 overallscore += purple rrr_teamscore
scoreboard players operation 粉队 overallscore += pink rrr_teamscore


scoreboard players operation red GameRankTarget = red rrr_teamscore
scoreboard players operation blue GameRankTarget = blue rrr_teamscore
scoreboard players operation green GameRankTarget = green rrr_teamscore
scoreboard players operation yellow GameRankTarget = yellow rrr_teamscore
scoreboard players operation cyan GameRankTarget = cyan rrr_teamscore
scoreboard players operation orange GameRankTarget = orange rrr_teamscore
scoreboard players operation purple GameRankTarget = purple rrr_teamscore
scoreboard players operation pink GameRankTarget = pink rrr_teamscore

function utils:personal/update

schedule function utils:text/gamescore 2s
schedule function utils:text/eventstandings 10s

scoreboard players set scb_factor rrr_game 4
function railroadrush:scoreboard/refresh

