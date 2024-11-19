
scoreboard players set red sbrank_target 0
scoreboard players set blue sbrank_target 0
scoreboard players set green sbrank_target 0
scoreboard players set yellow sbrank_target 0
scoreboard players set cyan sbrank_target 0
scoreboard players set orange sbrank_target 0
scoreboard players set purple sbrank_target 0
scoreboard players set pink sbrank_target 0

execute as @a[team=red] run scoreboard players operation red sbrank_target += @s bb_indvscore
execute as @a[team=blue] run scoreboard players operation blue sbrank_target += @s bb_indvscore
execute as @a[team=green] run scoreboard players operation green sbrank_target += @s bb_indvscore
execute as @a[team=yellow] run scoreboard players operation yellow sbrank_target += @s bb_indvscore
execute as @a[team=cyan] run scoreboard players operation cyan sbrank_target += @s bb_indvscore
execute as @a[team=orange] run scoreboard players operation orange sbrank_target += @s bb_indvscore
execute as @a[team=purple] run scoreboard players operation purple sbrank_target += @s bb_indvscore
execute as @a[team=pink] run scoreboard players operation pink sbrank_target += @s bb_indvscore

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
data modify storage temp_sbrank namespace set value bb_sb
function battlebox:scoreboard/refresh_new/0 with storage temp_sbrank

data modify storage temp_sbrank namespace set value bb_sb_red
execute if score red sbrank_rank matches 1 run function battlebox:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score red sbrank_rank matches 2 run function battlebox:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score red sbrank_rank matches 3 run function battlebox:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score red sbrank_rank matches 4 run function battlebox:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score red sbrank_rank matches 5 run function battlebox:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score red sbrank_rank matches 6 run function battlebox:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score red sbrank_rank matches 7 run function battlebox:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score red sbrank_rank matches 8 run function battlebox:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value bb_sb_blue
execute if score blue sbrank_rank matches 1 run function battlebox:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score blue sbrank_rank matches 2 run function battlebox:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score blue sbrank_rank matches 3 run function battlebox:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score blue sbrank_rank matches 4 run function battlebox:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score blue sbrank_rank matches 5 run function battlebox:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score blue sbrank_rank matches 6 run function battlebox:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score blue sbrank_rank matches 7 run function battlebox:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score blue sbrank_rank matches 8 run function battlebox:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value bb_sb_green
execute if score green sbrank_rank matches 1 run function battlebox:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score green sbrank_rank matches 2 run function battlebox:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score green sbrank_rank matches 3 run function battlebox:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score green sbrank_rank matches 4 run function battlebox:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score green sbrank_rank matches 5 run function battlebox:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score green sbrank_rank matches 6 run function battlebox:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score green sbrank_rank matches 7 run function battlebox:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score green sbrank_rank matches 8 run function battlebox:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value bb_sb_yellow
execute if score yellow sbrank_rank matches 1 run function battlebox:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score yellow sbrank_rank matches 2 run function battlebox:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score yellow sbrank_rank matches 3 run function battlebox:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score yellow sbrank_rank matches 4 run function battlebox:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score yellow sbrank_rank matches 5 run function battlebox:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score yellow sbrank_rank matches 6 run function battlebox:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score yellow sbrank_rank matches 7 run function battlebox:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score yellow sbrank_rank matches 8 run function battlebox:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value bb_sb_cyan
execute if score cyan sbrank_rank matches 1 run function battlebox:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score cyan sbrank_rank matches 2 run function battlebox:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score cyan sbrank_rank matches 3 run function battlebox:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score cyan sbrank_rank matches 4 run function battlebox:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score cyan sbrank_rank matches 5 run function battlebox:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score cyan sbrank_rank matches 6 run function battlebox:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score cyan sbrank_rank matches 7 run function battlebox:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score cyan sbrank_rank matches 8 run function battlebox:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value bb_sb_pink
execute if score pink sbrank_rank matches 1 run function battlebox:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score pink sbrank_rank matches 2 run function battlebox:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score pink sbrank_rank matches 3 run function battlebox:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score pink sbrank_rank matches 4 run function battlebox:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score pink sbrank_rank matches 5 run function battlebox:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score pink sbrank_rank matches 6 run function battlebox:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score pink sbrank_rank matches 7 run function battlebox:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score pink sbrank_rank matches 8 run function battlebox:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value bb_sb_orange
execute if score orange sbrank_rank matches 1 run function battlebox:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score orange sbrank_rank matches 2 run function battlebox:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score orange sbrank_rank matches 3 run function battlebox:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score orange sbrank_rank matches 4 run function battlebox:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score orange sbrank_rank matches 5 run function battlebox:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score orange sbrank_rank matches 6 run function battlebox:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score orange sbrank_rank matches 7 run function battlebox:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score orange sbrank_rank matches 8 run function battlebox:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value bb_sb_purple
execute if score purple sbrank_rank matches 1 run function battlebox:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score purple sbrank_rank matches 2 run function battlebox:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score purple sbrank_rank matches 3 run function battlebox:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score purple sbrank_rank matches 4 run function battlebox:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score purple sbrank_rank matches 5 run function battlebox:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score purple sbrank_rank matches 6 run function battlebox:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score purple sbrank_rank matches 7 run function battlebox:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score purple sbrank_rank matches 8 run function battlebox:scoreboard/refresh_new/8 with storage temp_sbrank

function battlebox:scoreboard/macro_position with storage temp_sbrank

function battlebox:scoreboard/refresh/global
function battlebox:scoreboard/refresh/red
function battlebox:scoreboard/refresh/blue
function battlebox:scoreboard/refresh/green
function battlebox:scoreboard/refresh/yellow
function battlebox:scoreboard/refresh/cyan
function battlebox:scoreboard/refresh/orange
function battlebox:scoreboard/refresh/pink
function battlebox:scoreboard/refresh/purple

execute if score gameflag bb_game matches 1 run schedule function battlebox:scoreboard/refresh 1s