
scoreboard players set red sbrank_target 0
scoreboard players set blue sbrank_target 0
scoreboard players set green sbrank_target 0
scoreboard players set yellow sbrank_target 0
scoreboard players set cyan sbrank_target 0
scoreboard players set orange sbrank_target 0
scoreboard players set purple sbrank_target 0
scoreboard players set pink sbrank_target 0

scoreboard players operation red sbrank_target = red bm_completions
scoreboard players operation blue sbrank_target = blue bm_completions
scoreboard players operation green sbrank_target = green bm_completions
scoreboard players operation yellow sbrank_target = yellow bm_completions
scoreboard players operation cyan sbrank_target = cyan bm_completions
scoreboard players operation orange sbrank_target = orange bm_completions
scoreboard players operation pink sbrank_target = pink bm_completions
scoreboard players operation purple sbrank_target = purple bm_completions


function utils:scoreboardrank/calc

# Refresh all teams
data modify storage temp_sbrank namespace set value bm_sb
function buildmart:scoreboard/refresh_new/0 with storage temp_sbrank

data modify storage temp_sbrank namespace set value bm_sb_red
execute if score red sbrank_rank matches 1 run function buildmart:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score red sbrank_rank matches 2 run function buildmart:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score red sbrank_rank matches 3 run function buildmart:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score red sbrank_rank matches 4 run function buildmart:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score red sbrank_rank matches 5 run function buildmart:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score red sbrank_rank matches 6 run function buildmart:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score red sbrank_rank matches 7 run function buildmart:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score red sbrank_rank matches 8 run function buildmart:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value bm_sb_blue
execute if score blue sbrank_rank matches 1 run function buildmart:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score blue sbrank_rank matches 2 run function buildmart:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score blue sbrank_rank matches 3 run function buildmart:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score blue sbrank_rank matches 4 run function buildmart:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score blue sbrank_rank matches 5 run function buildmart:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score blue sbrank_rank matches 6 run function buildmart:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score blue sbrank_rank matches 7 run function buildmart:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score blue sbrank_rank matches 8 run function buildmart:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value bm_sb_green
execute if score green sbrank_rank matches 1 run function buildmart:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score green sbrank_rank matches 2 run function buildmart:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score green sbrank_rank matches 3 run function buildmart:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score green sbrank_rank matches 4 run function buildmart:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score green sbrank_rank matches 5 run function buildmart:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score green sbrank_rank matches 6 run function buildmart:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score green sbrank_rank matches 7 run function buildmart:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score green sbrank_rank matches 8 run function buildmart:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value bm_sb_yellow
execute if score yellow sbrank_rank matches 1 run function buildmart:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score yellow sbrank_rank matches 2 run function buildmart:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score yellow sbrank_rank matches 3 run function buildmart:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score yellow sbrank_rank matches 4 run function buildmart:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score yellow sbrank_rank matches 5 run function buildmart:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score yellow sbrank_rank matches 6 run function buildmart:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score yellow sbrank_rank matches 7 run function buildmart:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score yellow sbrank_rank matches 8 run function buildmart:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value bm_sb_cyan
execute if score cyan sbrank_rank matches 1 run function buildmart:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score cyan sbrank_rank matches 2 run function buildmart:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score cyan sbrank_rank matches 3 run function buildmart:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score cyan sbrank_rank matches 4 run function buildmart:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score cyan sbrank_rank matches 5 run function buildmart:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score cyan sbrank_rank matches 6 run function buildmart:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score cyan sbrank_rank matches 7 run function buildmart:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score cyan sbrank_rank matches 8 run function buildmart:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value bm_sb_pink
execute if score pink sbrank_rank matches 1 run function buildmart:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score pink sbrank_rank matches 2 run function buildmart:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score pink sbrank_rank matches 3 run function buildmart:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score pink sbrank_rank matches 4 run function buildmart:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score pink sbrank_rank matches 5 run function buildmart:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score pink sbrank_rank matches 6 run function buildmart:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score pink sbrank_rank matches 7 run function buildmart:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score pink sbrank_rank matches 8 run function buildmart:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value bm_sb_orange
execute if score orange sbrank_rank matches 1 run function buildmart:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score orange sbrank_rank matches 2 run function buildmart:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score orange sbrank_rank matches 3 run function buildmart:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score orange sbrank_rank matches 4 run function buildmart:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score orange sbrank_rank matches 5 run function buildmart:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score orange sbrank_rank matches 6 run function buildmart:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score orange sbrank_rank matches 7 run function buildmart:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score orange sbrank_rank matches 8 run function buildmart:scoreboard/refresh_new/8 with storage temp_sbrank

data modify storage temp_sbrank namespace set value bm_sb_purple
execute if score purple sbrank_rank matches 1 run function buildmart:scoreboard/refresh_new/1 with storage temp_sbrank
execute if score purple sbrank_rank matches 2 run function buildmart:scoreboard/refresh_new/2 with storage temp_sbrank
execute if score purple sbrank_rank matches 3 run function buildmart:scoreboard/refresh_new/3 with storage temp_sbrank
execute if score purple sbrank_rank matches 4 run function buildmart:scoreboard/refresh_new/4 with storage temp_sbrank
execute if score purple sbrank_rank matches 5 run function buildmart:scoreboard/refresh_new/5 with storage temp_sbrank
execute if score purple sbrank_rank matches 6 run function buildmart:scoreboard/refresh_new/6 with storage temp_sbrank
execute if score purple sbrank_rank matches 7 run function buildmart:scoreboard/refresh_new/7 with storage temp_sbrank
execute if score purple sbrank_rank matches 8 run function buildmart:scoreboard/refresh_new/8 with storage temp_sbrank

#function buildmart:scoreboard/macro_position with storage temp_sbrank

function buildmart:scoreboard/refresh/global
function buildmart:scoreboard/refresh/red
function buildmart:scoreboard/refresh/blue
function buildmart:scoreboard/refresh/green
function buildmart:scoreboard/refresh/yellow
function buildmart:scoreboard/refresh/cyan
function buildmart:scoreboard/refresh/orange
function buildmart:scoreboard/refresh/pink
function buildmart:scoreboard/refresh/purple

execute if score RoundActive tourney_stats matches 1 run schedule function buildmart:scoreboard/refresh 1s