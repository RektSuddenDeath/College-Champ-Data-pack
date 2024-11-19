

execute if score 1 tourney_games matches 0 run function decisiondome:column/1/red
execute if score 2 tourney_games matches 0 run function decisiondome:column/2/red
execute if score 3 tourney_games matches 0 run function decisiondome:column/3/red
execute if score 4 tourney_games matches 0 run function decisiondome:column/4/red
execute if score 5 tourney_games matches 0 run function decisiondome:column/5/red
execute if score 6 tourney_games matches 0 run function decisiondome:column/6/red
execute if score 7 tourney_games matches 0 run function decisiondome:column/7/red
execute if score 8 tourney_games matches 0 run function decisiondome:column/8/red

execute unless score 1 tourney_games matches 0 run function decisiondome:column/1/white
execute unless score 2 tourney_games matches 0 run function decisiondome:column/2/white
execute unless score 3 tourney_games matches 0 run function decisiondome:column/3/white
execute unless score 4 tourney_games matches 0 run function decisiondome:column/4/white
execute unless score 5 tourney_games matches 0 run function decisiondome:column/5/white
execute unless score 6 tourney_games matches 0 run function decisiondome:column/6/white
execute unless score 7 tourney_games matches 0 run function decisiondome:column/7/white
execute unless score 8 tourney_games matches 0 run function decisiondome:column/8/white

function decisiondome:block_display/1
function decisiondome:block_display/2
function decisiondome:block_display/3
function decisiondome:block_display/4
function decisiondome:block_display/5
function decisiondome:block_display/6
function decisiondome:block_display/7
function decisiondome:block_display/8

tellraw @s ["[§6DEBUG§r] Updated the dome."]