
scoreboard players set mega_mode db_game 1
function utils:blackscreen/5_20_5
schedule function master:dodgebolt 25t
# 不处于同一个上下分区
execute if score TeamOne db_teams matches 1..4 if score TeamTwo db_teams matches 5..8 run function dodgebolt:megabolt_team_preset/1
execute if score TeamOne db_teams matches 1..4 if score TeamTwo db_teams matches 5..8 run return 1

# 处于同一个上下分区,则调整为Red vs Cyan
scoreboard players set TeamOne db_teams 1
scoreboard players set TeamTwo db_teams 5
function dodgebolt:megabolt_team_preset/1