
tellraw @s ["§b[§r坕§b] ",{"text": "Running a simulation with ","color": "#66CCFF"},{"text": "-2.50x","color": "#E3E3E3"},{"text": " multiplier.","color": "#66CCFF"}]
scoreboard players set multiplier1 tourney_stats -250
scoreboard players set multiplier2 tourney_stats 100

scoreboard objectives add test_scores_1 dummy
scoreboard players set red test_scores_1 846
scoreboard players set blue test_scores_1 1043
scoreboard players set green test_scores_1 1245
scoreboard players set yellow test_scores_1 23
scoreboard players set cyan test_scores_1 0
scoreboard players set pink test_scores_1 1542
scoreboard players set orange test_scores_1 1800
scoreboard players set purple test_scores_1 723


scoreboard players operation red test_scores_1 *= multiplier1 tourney_stats
scoreboard players operation red test_scores_1 /= multiplier2 tourney_stats

scoreboard players operation blue test_scores_1 *= multiplier1 tourney_stats
scoreboard players operation blue test_scores_1 /= multiplier2 tourney_stats

scoreboard players operation green test_scores_1 *= multiplier1 tourney_stats
scoreboard players operation green test_scores_1 /= multiplier2 tourney_stats

scoreboard players operation yellow test_scores_1 *= multiplier1 tourney_stats
scoreboard players operation yellow test_scores_1 /= multiplier2 tourney_stats

scoreboard players operation cyan test_scores_1 *= multiplier1 tourney_stats
scoreboard players operation cyan test_scores_1 /= multiplier2 tourney_stats

scoreboard players operation orange test_scores_1 *= multiplier1 tourney_stats
scoreboard players operation orange test_scores_1 /= multiplier2 tourney_stats

scoreboard players operation purple test_scores_1 *= multiplier1 tourney_stats
scoreboard players operation purple test_scores_1 /= multiplier2 tourney_stats

scoreboard players operation pink test_scores_1 *= multiplier1 tourney_stats
scoreboard players operation pink test_scores_1 /= multiplier2 tourney_stats

scoreboard players operation 红队 overallscore += red test_scores_1
scoreboard players operation 蓝队 overallscore += blue test_scores_1
scoreboard players operation 绿队 overallscore += green test_scores_1
scoreboard players operation 黄队 overallscore += yellow test_scores_1
scoreboard players operation 青队 overallscore += cyan test_scores_1
scoreboard players operation 橙队 overallscore += orange test_scores_1
scoreboard players operation 紫队 overallscore += purple test_scores_1
scoreboard players operation 粉队 overallscore += pink test_scores_1

execute if score multiplier1 tourney_stats matches ..-1 run data modify storage master:negative_multi namespace set value "test_scores_1"
execute if score multiplier1 tourney_stats matches ..-1 run function master:negative_multi/init with storage master:negative_multi

tellraw @s ["§b[§r坕§b] ",{"text": "Simulation is complete.","color": "#66CCFF"}]
