
# Select a grid to be green, skipping the grid if it had been chosen before, or it has exceeded the boundary.
# Decides Cycle Speed
execute if score phase tourney_stats matches 3 if score second master.timer matches 10.. run scoreboard players set cyclespeed tourney_stats 15
execute if score phase tourney_stats matches 3 if score second master.timer matches 0..9 run scoreboard players set cyclespeed tourney_stats 10
execute if score phase tourney_stats matches 4 run scoreboard players set cyclespeed tourney_stats 7

scoreboard players remove cyclecount tourney_stats 1
execute if score cyclecount tourney_stats matches 2 run function decisiondome:vote/whiteout
execute if score cyclecount tourney_stats matches 0 run function decisiondome:vote/selectcycle
execute if score cyclecount tourney_stats matches 0 run scoreboard players operation cyclecount tourney_stats = cyclespeed tourney_stats

execute if score phase tourney_stats matches 3..4 run schedule function decisiondome:vote/cycle 1t
