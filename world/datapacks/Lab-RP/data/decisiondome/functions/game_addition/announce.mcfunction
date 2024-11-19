
schedule clear decisiondome:first/sfx

#execute as @a at @s run playsound sound.game_revealed record @s

execute if score extraGameGrid tourney_stats matches 1 run function decisiondome:column/1/white
execute if score extraGameGrid tourney_stats matches 2 run function decisiondome:column/2/white
execute if score extraGameGrid tourney_stats matches 3 run function decisiondome:column/3/white
execute if score extraGameGrid tourney_stats matches 4 run function decisiondome:column/4/white
execute if score extraGameGrid tourney_stats matches 5 run function decisiondome:column/5/white
execute if score extraGameGrid tourney_stats matches 6 run function decisiondome:column/6/white
execute if score extraGameGrid tourney_stats matches 7 run function decisiondome:column/7/white
execute if score extraGameGrid tourney_stats matches 8 run function decisiondome:column/8/white

# execute if score extraGameGrid tourney_stats matches 1 run scoreboard players operation 1 dd_games = game_to_add tourney_stats
# execute if score extraGameGrid tourney_stats matches 2 run scoreboard players operation 2 dd_games = game_to_add tourney_stats
# execute if score extraGameGrid tourney_stats matches 3 run scoreboard players operation 3 dd_games = game_to_add tourney_stats
# execute if score extraGameGrid tourney_stats matches 4 run scoreboard players operation 4 dd_games = game_to_add tourney_stats
# execute if score extraGameGrid tourney_stats matches 5 run scoreboard players operation 5 dd_games = game_to_add tourney_stats
# execute if score extraGameGrid tourney_stats matches 6 run scoreboard players operation 6 dd_games = game_to_add tourney_stats
# execute if score extraGameGrid tourney_stats matches 7 run scoreboard players operation 7 dd_games = game_to_add tourney_stats
# execute if score extraGameGrid tourney_stats matches 8 run scoreboard players operation 8 dd_games = game_to_add tourney_stats

execute if score extraGameGrid tourney_stats matches 1 run scoreboard players operation 1 tourney_games = game_to_add tourney_stats
execute if score extraGameGrid tourney_stats matches 2 run scoreboard players operation 2 tourney_games = game_to_add tourney_stats
execute if score extraGameGrid tourney_stats matches 3 run scoreboard players operation 3 tourney_games = game_to_add tourney_stats
execute if score extraGameGrid tourney_stats matches 4 run scoreboard players operation 4 tourney_games = game_to_add tourney_stats
execute if score extraGameGrid tourney_stats matches 5 run scoreboard players operation 5 tourney_games = game_to_add tourney_stats
execute if score extraGameGrid tourney_stats matches 6 run scoreboard players operation 6 tourney_games = game_to_add tourney_stats
execute if score extraGameGrid tourney_stats matches 7 run scoreboard players operation 7 tourney_games = game_to_add tourney_stats
execute if score extraGameGrid tourney_stats matches 8 run scoreboard players operation 8 tourney_games = game_to_add tourney_stats

execute if score extraGameGrid tourney_stats matches 1 run function decisiondome:block_display/1
execute if score extraGameGrid tourney_stats matches 2 run function decisiondome:block_display/2
execute if score extraGameGrid tourney_stats matches 3 run function decisiondome:block_display/3
execute if score extraGameGrid tourney_stats matches 4 run function decisiondome:block_display/4
execute if score extraGameGrid tourney_stats matches 5 run function decisiondome:block_display/5
execute if score extraGameGrid tourney_stats matches 6 run function decisiondome:block_display/6
execute if score extraGameGrid tourney_stats matches 7 run function decisiondome:block_display/7
execute if score extraGameGrid tourney_stats matches 8 run function decisiondome:block_display/8

function decisiondome:first/setname
title @a times 0 40 10
title @a title ""
execute if score extraGameGrid tourney_stats matches 1 run title @a subtitle ["",{"selector":"@e[type=marker,tag=domeanchor,tag=1,limit=1]"}]
execute if score extraGameGrid tourney_stats matches 2 run title @a subtitle ["",{"selector":"@e[type=marker,tag=domeanchor,tag=2,limit=1]"}]
execute if score extraGameGrid tourney_stats matches 3 run title @a subtitle ["",{"selector":"@e[type=marker,tag=domeanchor,tag=3,limit=1]"}]
execute if score extraGameGrid tourney_stats matches 4 run title @a subtitle ["",{"selector":"@e[type=marker,tag=domeanchor,tag=4,limit=1]"}]
execute if score extraGameGrid tourney_stats matches 5 run title @a subtitle ["",{"selector":"@e[type=marker,tag=domeanchor,tag=5,limit=1]"}]
execute if score extraGameGrid tourney_stats matches 6 run title @a subtitle ["",{"selector":"@e[type=marker,tag=domeanchor,tag=6,limit=1]"}]
execute if score extraGameGrid tourney_stats matches 7 run title @a subtitle ["",{"selector":"@e[type=marker,tag=domeanchor,tag=7,limit=1]"}]
execute if score extraGameGrid tourney_stats matches 8 run title @a subtitle ["",{"selector":"@e[type=marker,tag=domeanchor,tag=8,limit=1]"}]


execute if score extraGameGrid tourney_stats matches 1 run tellraw @a ["","[",{"text": "Decision Dome","bold": true,"color": "gold"},"]: ",{"selector":"@e[type=marker,tag=domeanchor,tag=1,limit=1]"},"!"]
execute if score extraGameGrid tourney_stats matches 2 run tellraw @a ["","[",{"text": "Decision Dome","bold": true,"color": "gold"},"]: ",{"selector":"@e[type=marker,tag=domeanchor,tag=2,limit=1]"},"!"]
execute if score extraGameGrid tourney_stats matches 3 run tellraw @a ["","[",{"text": "Decision Dome","bold": true,"color": "gold"},"]: ",{"selector":"@e[type=marker,tag=domeanchor,tag=3,limit=1]"},"!"]
execute if score extraGameGrid tourney_stats matches 4 run tellraw @a ["","[",{"text": "Decision Dome","bold": true,"color": "gold"},"]: ",{"selector":"@e[type=marker,tag=domeanchor,tag=4,limit=1]"},"!"]
execute if score extraGameGrid tourney_stats matches 5 run tellraw @a ["","[",{"text": "Decision Dome","bold": true,"color": "gold"},"]: ",{"selector":"@e[type=marker,tag=domeanchor,tag=5,limit=1]"},"!"]
execute if score extraGameGrid tourney_stats matches 6 run tellraw @a ["","[",{"text": "Decision Dome","bold": true,"color": "gold"},"]: ",{"selector":"@e[type=marker,tag=domeanchor,tag=6,limit=1]"},"!"]
execute if score extraGameGrid tourney_stats matches 7 run tellraw @a ["","[",{"text": "Decision Dome","bold": true,"color": "gold"},"]: ",{"selector":"@e[type=marker,tag=domeanchor,tag=7,limit=1]"},"!"]
execute if score extraGameGrid tourney_stats matches 8 run tellraw @a ["","[",{"text": "Decision Dome","bold": true,"color": "gold"},"]: ",{"selector":"@e[type=marker,tag=domeanchor,tag=8,limit=1]"},"!"]

execute if score extraGameGrid tourney_stats matches 1 run function decisiondome:column/1/white
execute if score extraGameGrid tourney_stats matches 2 run function decisiondome:column/2/white
execute if score extraGameGrid tourney_stats matches 3 run function decisiondome:column/3/white
execute if score extraGameGrid tourney_stats matches 4 run function decisiondome:column/4/white
execute if score extraGameGrid tourney_stats matches 5 run function decisiondome:column/5/white
execute if score extraGameGrid tourney_stats matches 6 run function decisiondome:column/6/white
execute if score extraGameGrid tourney_stats matches 7 run function decisiondome:column/7/white
execute if score extraGameGrid tourney_stats matches 8 run function decisiondome:column/8/white