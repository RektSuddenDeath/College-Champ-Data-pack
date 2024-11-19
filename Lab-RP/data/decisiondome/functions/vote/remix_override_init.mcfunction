
schedule clear decisiondome:tools/distribute/decide/init

execute if score remix_mode tourney_stats matches 1 run function decisiondome:vote/remix_overrides/1
execute if score remix_mode tourney_stats matches 2 run function decisiondome:vote/remix_overrides/2
execute if score remix_mode tourney_stats matches 3 run function decisiondome:vote/remix_overrides/3
execute if score remix_mode tourney_stats matches 4 run function decisiondome:vote/remix_overrides/4
execute if score remix_mode tourney_stats matches 5 run function decisiondome:vote/remix_overrides/5
execute if score remix_mode tourney_stats matches 6 run function decisiondome:vote/remix_overrides/6
execute if score remix_mode tourney_stats matches 7 run function decisiondome:vote/remix_overrides/7