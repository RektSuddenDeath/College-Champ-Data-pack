
scoreboard players set red sbrank_target 0
scoreboard players set blue sbrank_target 0
scoreboard players set green sbrank_target 0
scoreboard players set yellow sbrank_target 0
scoreboard players set cyan sbrank_target 0
scoreboard players set orange sbrank_target 0
scoreboard players set purple sbrank_target 0
scoreboard players set pink sbrank_target 0

execute as @a[team=red] run scoreboard players operation red sbrank_target += @s sba_indvscore
execute as @a[team=blue] run scoreboard players operation blue sbrank_target += @s sba_indvscore
execute as @a[team=green] run scoreboard players operation green sbrank_target += @s sba_indvscore
execute as @a[team=yellow] run scoreboard players operation yellow sbrank_target += @s sba_indvscore
execute as @a[team=cyan] run scoreboard players operation cyan sbrank_target += @s sba_indvscore
execute as @a[team=orange] run scoreboard players operation orange sbrank_target += @s sba_indvscore
execute as @a[team=purple] run scoreboard players operation purple sbrank_target += @s sba_indvscore
execute as @a[team=pink] run scoreboard players operation pink sbrank_target += @s sba_indvscore

scoreboard players operation red sbrank_target *= multiplier1 tourney_stats
scoreboard players operation red sbrank_target /= multiplier2 tourney_stats

scoreboard players operation blue sbrank_target *= multiplier1 tourney_stats
scoreboard players operation blue sbrank_target /= multiplier2 tourney_stats

scoreboard players operation green sbrank_target *= multiplier1 tourney_stats
scoreboard players operation green sbrank_target /= multiplier2 tourney_stats

scoreboard players operation yellow sbrank_target *= multiplier1 tourney_stats
scoreboard players operation yellow sbrank_target /= multiplier2 tourney_stats

scoreboard players operation cyan sbrank_target *= multiplier1 tourney_stats
scoreboard players operation cyan sbrank_target /= multiplier2 tourney_stats

scoreboard players operation orange sbrank_target *= multiplier1 tourney_stats
scoreboard players operation orange sbrank_target /= multiplier2 tourney_stats

scoreboard players operation purple sbrank_target *= multiplier1 tourney_stats
scoreboard players operation purple sbrank_target /= multiplier2 tourney_stats

scoreboard players operation pink sbrank_target *= multiplier1 tourney_stats
scoreboard players operation pink sbrank_target /= multiplier2 tourney_stats

function utils:scoreboardrank/calc

# Refresh all teams
data modify storage temp_sbrank namespace set value sba_sb
function skybattle:scoreboard/refresh_new/0 with storage temp_sbrank

data modify storage temp_sbrank namespace set value sba_sb_red
execute if score red sbrank_rank matches 1 run function skybattle:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score red sbrank_rank matches 2 run function skybattle:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score red sbrank_rank matches 3 run function skybattle:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score red sbrank_rank matches 4 run function skybattle:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score red sbrank_rank matches 5 run function skybattle:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score red sbrank_rank matches 6 run function skybattle:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score red sbrank_rank matches 7 run function skybattle:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score red sbrank_rank matches 8 run function skybattle:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value sba_sb_blue
execute if score blue sbrank_rank matches 1 run function skybattle:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score blue sbrank_rank matches 2 run function skybattle:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score blue sbrank_rank matches 3 run function skybattle:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score blue sbrank_rank matches 4 run function skybattle:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score blue sbrank_rank matches 5 run function skybattle:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score blue sbrank_rank matches 6 run function skybattle:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score blue sbrank_rank matches 7 run function skybattle:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score blue sbrank_rank matches 8 run function skybattle:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value sba_sb_green
execute if score green sbrank_rank matches 1 run function skybattle:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score green sbrank_rank matches 2 run function skybattle:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score green sbrank_rank matches 3 run function skybattle:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score green sbrank_rank matches 4 run function skybattle:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score green sbrank_rank matches 5 run function skybattle:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score green sbrank_rank matches 6 run function skybattle:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score green sbrank_rank matches 7 run function skybattle:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score green sbrank_rank matches 8 run function skybattle:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value sba_sb_yellow
execute if score yellow sbrank_rank matches 1 run function skybattle:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score yellow sbrank_rank matches 2 run function skybattle:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score yellow sbrank_rank matches 3 run function skybattle:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score yellow sbrank_rank matches 4 run function skybattle:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score yellow sbrank_rank matches 5 run function skybattle:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score yellow sbrank_rank matches 6 run function skybattle:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score yellow sbrank_rank matches 7 run function skybattle:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score yellow sbrank_rank matches 8 run function skybattle:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value sba_sb_cyan
execute if score cyan sbrank_rank matches 1 run function skybattle:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score cyan sbrank_rank matches 2 run function skybattle:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score cyan sbrank_rank matches 3 run function skybattle:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score cyan sbrank_rank matches 4 run function skybattle:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score cyan sbrank_rank matches 5 run function skybattle:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score cyan sbrank_rank matches 6 run function skybattle:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score cyan sbrank_rank matches 7 run function skybattle:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score cyan sbrank_rank matches 8 run function skybattle:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value sba_sb_pink
execute if score pink sbrank_rank matches 1 run function skybattle:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score pink sbrank_rank matches 2 run function skybattle:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score pink sbrank_rank matches 3 run function skybattle:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score pink sbrank_rank matches 4 run function skybattle:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score pink sbrank_rank matches 5 run function skybattle:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score pink sbrank_rank matches 6 run function skybattle:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score pink sbrank_rank matches 7 run function skybattle:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score pink sbrank_rank matches 8 run function skybattle:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value sba_sb_orange
execute if score orange sbrank_rank matches 1 run function skybattle:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score orange sbrank_rank matches 2 run function skybattle:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score orange sbrank_rank matches 3 run function skybattle:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score orange sbrank_rank matches 4 run function skybattle:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score orange sbrank_rank matches 5 run function skybattle:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score orange sbrank_rank matches 6 run function skybattle:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score orange sbrank_rank matches 7 run function skybattle:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score orange sbrank_rank matches 8 run function skybattle:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value sba_sb_purple
execute if score purple sbrank_rank matches 1 run function skybattle:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score purple sbrank_rank matches 2 run function skybattle:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score purple sbrank_rank matches 3 run function skybattle:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score purple sbrank_rank matches 4 run function skybattle:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score purple sbrank_rank matches 5 run function skybattle:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score purple sbrank_rank matches 6 run function skybattle:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score purple sbrank_rank matches 7 run function skybattle:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score purple sbrank_rank matches 8 run function skybattle:scoreboard/refresh_new/8 with storage temp_sbrank

#function skybattle:scoreboard/macro_position with storage temp_sbrank

function skybattle:scoreboard/refresh/global
function skybattle:scoreboard/refresh/red
function skybattle:scoreboard/refresh/blue
function skybattle:scoreboard/refresh/green
function skybattle:scoreboard/refresh/yellow
function skybattle:scoreboard/refresh/cyan
function skybattle:scoreboard/refresh/orange
function skybattle:scoreboard/refresh/pink
function skybattle:scoreboard/refresh/purple

execute if score RoundActive tourney_stats matches 1 run schedule function skybattle:scoreboard/refresh 1s