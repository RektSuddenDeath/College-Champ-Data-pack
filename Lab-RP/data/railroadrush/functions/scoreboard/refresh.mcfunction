

scoreboard players set red sbrank_target 0
scoreboard players set blue sbrank_target 0
scoreboard players set green sbrank_target 0
scoreboard players set yellow sbrank_target 0
scoreboard players set cyan sbrank_target 0
scoreboard players set orange sbrank_target 0
scoreboard players set purple sbrank_target 0
scoreboard players set pink sbrank_target 0
# SELECT WHICH FACTOR TO USE
execute if score scb_factor rrr_game matches 1 run team modify placeholder_6 prefix "§b§l各队最长铁路距离："
execute if score scb_factor rrr_game matches 2 run team modify placeholder_6 prefix "§b§l本轮采集阶段排名："
execute if score scb_factor rrr_game matches 3 run team modify placeholder_6 prefix "§b§l各队行进距离："
execute if score scb_factor rrr_game matches 4 run team modify placeholder_6 prefix "§b§l本游戏积分："


execute if score scb_factor rrr_game matches 1 run scoreboard players operation red sbrank_target = red rrr_distance_max
execute if score scb_factor rrr_game matches 1 run scoreboard players operation blue sbrank_target = blue rrr_distance_max
execute if score scb_factor rrr_game matches 1 run scoreboard players operation green sbrank_target = green rrr_distance_max
execute if score scb_factor rrr_game matches 1 run scoreboard players operation yellow sbrank_target = yellow rrr_distance_max
execute if score scb_factor rrr_game matches 1 run scoreboard players operation cyan sbrank_target = cyan rrr_distance_max
execute if score scb_factor rrr_game matches 1 run scoreboard players operation pink sbrank_target = pink rrr_distance_max
execute if score scb_factor rrr_game matches 1 run scoreboard players operation orange sbrank_target = orange rrr_distance_max
execute if score scb_factor rrr_game matches 1 run scoreboard players operation purple sbrank_target = purple rrr_distance_max

execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 1 run scoreboard players operation red sbrank_target = red rrr_gold_rush_round_1
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 1 run scoreboard players operation blue sbrank_target = blue rrr_gold_rush_round_1
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 1 run scoreboard players operation green sbrank_target = green rrr_gold_rush_round_1
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 1 run scoreboard players operation yellow sbrank_target = yellow rrr_gold_rush_round_1
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 1 run scoreboard players operation cyan sbrank_target = cyan rrr_gold_rush_round_1
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 1 run scoreboard players operation pink sbrank_target = pink rrr_gold_rush_round_1
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 1 run scoreboard players operation orange sbrank_target = orange rrr_gold_rush_round_1
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 1 run scoreboard players operation purple sbrank_target = purple rrr_gold_rush_round_1

execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 2 run scoreboard players operation red sbrank_target = red rrr_gold_rush_round_2
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 2 run scoreboard players operation blue sbrank_target = blue rrr_gold_rush_round_2
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 2 run scoreboard players operation green sbrank_target = green rrr_gold_rush_round_2
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 2 run scoreboard players operation yellow sbrank_target = yellow rrr_gold_rush_round_2
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 2 run scoreboard players operation cyan sbrank_target = cyan rrr_gold_rush_round_2
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 2 run scoreboard players operation pink sbrank_target = pink rrr_gold_rush_round_2
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 2 run scoreboard players operation orange sbrank_target = orange rrr_gold_rush_round_2
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 2 run scoreboard players operation purple sbrank_target = purple rrr_gold_rush_round_2

execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 3 run scoreboard players operation red sbrank_target = red rrr_gold_rush_round_3
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 3 run scoreboard players operation blue sbrank_target = blue rrr_gold_rush_round_3
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 3 run scoreboard players operation green sbrank_target = green rrr_gold_rush_round_3
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 3 run scoreboard players operation yellow sbrank_target = yellow rrr_gold_rush_round_3
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 3 run scoreboard players operation cyan sbrank_target = cyan rrr_gold_rush_round_3
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 3 run scoreboard players operation pink sbrank_target = pink rrr_gold_rush_round_3
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 3 run scoreboard players operation orange sbrank_target = orange rrr_gold_rush_round_3
execute if score scb_factor rrr_game matches 2 if score gold_rush_round rrr_game matches 3 run scoreboard players operation purple sbrank_target = purple rrr_gold_rush_round_3

execute if score scb_factor rrr_game matches 3 run scoreboard players operation red sbrank_target = red rrr_distance_final
execute if score scb_factor rrr_game matches 3 run scoreboard players operation blue sbrank_target = blue rrr_distance_final
execute if score scb_factor rrr_game matches 3 run scoreboard players operation green sbrank_target = green rrr_distance_final
execute if score scb_factor rrr_game matches 3 run scoreboard players operation yellow sbrank_target = yellow rrr_distance_final
execute if score scb_factor rrr_game matches 3 run scoreboard players operation cyan sbrank_target = cyan rrr_distance_final
execute if score scb_factor rrr_game matches 3 run scoreboard players operation pink sbrank_target = pink rrr_distance_final
execute if score scb_factor rrr_game matches 3 run scoreboard players operation orange sbrank_target = orange rrr_distance_final
execute if score scb_factor rrr_game matches 3 run scoreboard players operation purple sbrank_target = purple rrr_distance_final

execute if score scb_factor rrr_game matches 4 run scoreboard players operation red sbrank_target = red rrr_teamscore
execute if score scb_factor rrr_game matches 4 run scoreboard players operation blue sbrank_target = blue rrr_teamscore
execute if score scb_factor rrr_game matches 4 run scoreboard players operation green sbrank_target = green rrr_teamscore
execute if score scb_factor rrr_game matches 4 run scoreboard players operation yellow sbrank_target = yellow rrr_teamscore
execute if score scb_factor rrr_game matches 4 run scoreboard players operation cyan sbrank_target = cyan rrr_teamscore
execute if score scb_factor rrr_game matches 4 run scoreboard players operation pink sbrank_target = pink rrr_teamscore
execute if score scb_factor rrr_game matches 4 run scoreboard players operation orange sbrank_target = orange rrr_teamscore
execute if score scb_factor rrr_game matches 4 run scoreboard players operation purple sbrank_target = purple rrr_teamscore

# execute if score scb_factor rrr_game matches 4 run scoreboard players operation red sbrank_target *= multiplier1 tourney_stats
# execute if score scb_factor rrr_game matches 4 run scoreboard players operation red sbrank_target /= multiplier2 tourney_stats

# execute if score scb_factor rrr_game matches 4 run scoreboard players operation blue sbrank_target *= multiplier1 tourney_stats
# execute if score scb_factor rrr_game matches 4 run scoreboard players operation blue sbrank_target /= multiplier2 tourney_stats

# execute if score scb_factor rrr_game matches 4 run scoreboard players operation green sbrank_target *= multiplier1 tourney_stats
# execute if score scb_factor rrr_game matches 4 run scoreboard players operation green sbrank_target /= multiplier2 tourney_stats

# execute if score scb_factor rrr_game matches 4 run scoreboard players operation yellow sbrank_target *= multiplier1 tourney_stats
# execute if score scb_factor rrr_game matches 4 run scoreboard players operation yellow sbrank_target /= multiplier2 tourney_stats

# execute if score scb_factor rrr_game matches 4 run scoreboard players operation cyan sbrank_target *= multiplier1 tourney_stats
# execute if score scb_factor rrr_game matches 4 run scoreboard players operation cyan sbrank_target /= multiplier2 tourney_stats

# execute if score scb_factor rrr_game matches 4 run scoreboard players operation orange sbrank_target *= multiplier1 tourney_stats
# execute if score scb_factor rrr_game matches 4 run scoreboard players operation orange sbrank_target /= multiplier2 tourney_stats

# execute if score scb_factor rrr_game matches 4 run scoreboard players operation purple sbrank_target *= multiplier1 tourney_stats
# execute if score scb_factor rrr_game matches 4 run scoreboard players operation purple sbrank_target /= multiplier2 tourney_stats

# execute if score scb_factor rrr_game matches 4 run scoreboard players operation pink sbrank_target *= multiplier1 tourney_stats
# execute if score scb_factor rrr_game matches 4 run scoreboard players operation pink sbrank_target /= multiplier2 tourney_stats

function utils:scoreboardrank/calc
# REFRESH ONLY SPECTATOR
data modify storage temp_sbrank namespace set value rrr_sb
function railroadrush:scoreboard/refresh_new/0 with storage temp_sbrank

function railroadrush:scoreboard/refresh/global

# REFRESH ONLY AFTER GAME
execute if score scb_factor rrr_game matches 3..4 run function railroadrush:scoreboard/refresh_end

execute if score gameflag rrr_game matches 1 run schedule function railroadrush:scoreboard/refresh 10t