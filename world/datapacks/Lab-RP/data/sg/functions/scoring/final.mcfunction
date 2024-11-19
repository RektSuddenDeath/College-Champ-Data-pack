scoreboard objectives remove sg_teamscore
scoreboard objectives add sg_teamscore dummy

scoreboard players set red sg_teamscore 0
scoreboard players set blue sg_teamscore 0
scoreboard players set green sg_teamscore 0
scoreboard players set yellow sg_teamscore 0
scoreboard players set cyan sg_teamscore 0
scoreboard players set orange sg_teamscore 0
scoreboard players set purple sg_teamscore 0
scoreboard players set pink sg_teamscore 0

execute as @a[team=red] run scoreboard players operation red sg_teamscore += @s sg_indvscore
execute as @a[team=blue] run scoreboard players operation blue sg_teamscore += @s sg_indvscore
execute as @a[team=green] run scoreboard players operation green sg_teamscore += @s sg_indvscore
execute as @a[team=yellow] run scoreboard players operation yellow sg_teamscore += @s sg_indvscore
execute as @a[team=cyan] run scoreboard players operation cyan sg_teamscore += @s sg_indvscore
execute as @a[team=orange] run scoreboard players operation orange sg_teamscore += @s sg_indvscore
execute as @a[team=purple] run scoreboard players operation purple sg_teamscore += @s sg_indvscore
execute as @a[team=pink] run scoreboard players operation pink sg_teamscore += @s sg_indvscore

scoreboard players operation red sg_teamscore *= multiplier1 tourney_stats
scoreboard players operation red sg_teamscore /= multiplier2 tourney_stats

scoreboard players operation blue sg_teamscore *= multiplier1 tourney_stats
scoreboard players operation blue sg_teamscore /= multiplier2 tourney_stats

scoreboard players operation green sg_teamscore *= multiplier1 tourney_stats
scoreboard players operation green sg_teamscore /= multiplier2 tourney_stats

scoreboard players operation yellow sg_teamscore *= multiplier1 tourney_stats
scoreboard players operation yellow sg_teamscore /= multiplier2 tourney_stats

scoreboard players operation cyan sg_teamscore *= multiplier1 tourney_stats
scoreboard players operation cyan sg_teamscore /= multiplier2 tourney_stats

scoreboard players operation orange sg_teamscore *= multiplier1 tourney_stats
scoreboard players operation orange sg_teamscore /= multiplier2 tourney_stats

scoreboard players operation purple sg_teamscore *= multiplier1 tourney_stats
scoreboard players operation purple sg_teamscore /= multiplier2 tourney_stats

scoreboard players operation pink sg_teamscore *= multiplier1 tourney_stats
scoreboard players operation pink sg_teamscore /= multiplier2 tourney_stats


# Negative Multi Init
execute if score multiplier1 tourney_stats matches ..-1 run data modify storage master:negative_multi namespace set value "sg_teamscore"
execute if score multiplier1 tourney_stats matches ..-1 run function master:negative_multi/init with storage master:negative_multi


scoreboard players operation 红队 overallscore += red sg_teamscore
scoreboard players operation 蓝队 overallscore += blue sg_teamscore
scoreboard players operation 绿队 overallscore += green sg_teamscore
scoreboard players operation 黄队 overallscore += yellow sg_teamscore
scoreboard players operation 青队 overallscore += cyan sg_teamscore
scoreboard players operation 橙队 overallscore += orange sg_teamscore
scoreboard players operation 紫队 overallscore += purple sg_teamscore
scoreboard players operation 粉队 overallscore += pink sg_teamscore

scoreboard players operation red GameRankTarget = red sg_teamscore
scoreboard players operation blue GameRankTarget = blue sg_teamscore
scoreboard players operation green GameRankTarget = green sg_teamscore
scoreboard players operation yellow GameRankTarget = yellow sg_teamscore
scoreboard players operation cyan GameRankTarget = cyan sg_teamscore
scoreboard players operation orange GameRankTarget = orange sg_teamscore
scoreboard players operation purple GameRankTarget = purple sg_teamscore
scoreboard players operation pink GameRankTarget = pink sg_teamscore

execute as @a[team=!spec] run scoreboard players operation @s tourney_indv += @s sg_indvscore
function utils:personal/update

execute as @a[team=!spec] run scoreboard players operation @s SortTarget = @s sg_indvscore
function utils:rankstart