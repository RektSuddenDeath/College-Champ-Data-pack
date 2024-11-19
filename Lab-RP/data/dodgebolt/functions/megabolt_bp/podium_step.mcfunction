

scoreboard players add team_trying megabolt_team_podium 1

execute if score team_trying megabolt_team_podium = duelist_1 megabolt_team_podium run return 0
execute if score team_trying megabolt_team_podium = duelist_2 megabolt_team_podium run return 0

scoreboard players add teams_scattered megabolt_team_podium 1

execute if score teams_scattered megabolt_team_podium matches 1 run scoreboard players operation picks_1 megabolt_team_podium = team_trying megabolt_team_podium
execute if score teams_scattered megabolt_team_podium matches 2 run scoreboard players operation picks_2 megabolt_team_podium = team_trying megabolt_team_podium
execute if score teams_scattered megabolt_team_podium matches 3 run scoreboard players operation picks_3 megabolt_team_podium = team_trying megabolt_team_podium
execute if score teams_scattered megabolt_team_podium matches 4 run scoreboard players operation picks_4 megabolt_team_podium = team_trying megabolt_team_podium
execute if score teams_scattered megabolt_team_podium matches 5 run scoreboard players operation picks_5 megabolt_team_podium = team_trying megabolt_team_podium
execute if score teams_scattered megabolt_team_podium matches 6 run scoreboard players operation picks_6 megabolt_team_podium = team_trying megabolt_team_podium

