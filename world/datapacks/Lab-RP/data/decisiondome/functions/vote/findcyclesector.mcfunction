
scoreboard players set sector_available tourney_stats 0
scoreboard players add sector tourney_stats 1
execute if score sector tourney_stats matches 9.. run scoreboard players set sector tourney_stats 1

execute if score sector tourney_stats matches 1 unless score 1 tourney_games matches 0 run scoreboard players set sector_available tourney_stats 1
execute if score sector tourney_stats matches 2 unless score 2 tourney_games matches 0 run scoreboard players set sector_available tourney_stats 1
execute if score sector tourney_stats matches 3 unless score 3 tourney_games matches 0 run scoreboard players set sector_available tourney_stats 1
execute if score sector tourney_stats matches 4 unless score 4 tourney_games matches 0 run scoreboard players set sector_available tourney_stats 1
execute if score sector tourney_stats matches 5 unless score 5 tourney_games matches 0 run scoreboard players set sector_available tourney_stats 1
execute if score sector tourney_stats matches 6 unless score 6 tourney_games matches 0 run scoreboard players set sector_available tourney_stats 1
execute if score sector tourney_stats matches 7 unless score 7 tourney_games matches 0 run scoreboard players set sector_available tourney_stats 1
execute if score sector tourney_stats matches 8 unless score 8 tourney_games matches 0 run scoreboard players set sector_available tourney_stats 1

execute if score sector_available tourney_stats matches 0 run function decisiondome:vote/findcyclesector