
scoreboard players operation sector tourney_stats = prevsector tourney_stats
function decisiondome:vote/findcyclesector

execute if score prevsector tourney_stats matches 1 unless score 1 tourney_games matches 0 run function decisiondome:column/1/white
execute if score prevsector tourney_stats matches 2 unless score 2 tourney_games matches 0 run function decisiondome:column/2/white
execute if score prevsector tourney_stats matches 3 unless score 3 tourney_games matches 0 run function decisiondome:column/3/white
execute if score prevsector tourney_stats matches 4 unless score 4 tourney_games matches 0 run function decisiondome:column/4/white
execute if score prevsector tourney_stats matches 5 unless score 5 tourney_games matches 0 run function decisiondome:column/5/white
execute if score prevsector tourney_stats matches 6 unless score 6 tourney_games matches 0 run function decisiondome:column/6/white
execute if score prevsector tourney_stats matches 7 unless score 7 tourney_games matches 0 run function decisiondome:column/7/white
execute if score prevsector tourney_stats matches 8 unless score 8 tourney_games matches 0 run function decisiondome:column/8/white

execute if score sector tourney_stats matches 1 run function decisiondome:column/1/green
execute if score sector tourney_stats matches 2 run function decisiondome:column/2/green
execute if score sector tourney_stats matches 3 run function decisiondome:column/3/green
execute if score sector tourney_stats matches 4 run function decisiondome:column/4/green
execute if score sector tourney_stats matches 5 run function decisiondome:column/5/green
execute if score sector tourney_stats matches 6 run function decisiondome:column/6/green
execute if score sector tourney_stats matches 7 run function decisiondome:column/7/green
execute if score sector tourney_stats matches 8 run function decisiondome:column/8/green

scoreboard players operation prevsector tourney_stats = sector tourney_stats



# execute as @a at @s run playsound sound.sector_select record @s ~ ~ ~ 1 0.3