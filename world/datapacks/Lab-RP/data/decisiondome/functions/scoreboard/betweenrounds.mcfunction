
scoreboard objectives setdisplay sidebar tourney_sb
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.green
scoreboard objectives setdisplay sidebar.team.yellow
scoreboard objectives setdisplay sidebar.team.light_purple
scoreboard objectives setdisplay sidebar.team.dark_purple
scoreboard objectives setdisplay sidebar.team.dark_aqua
scoreboard objectives setdisplay sidebar.team.gold
scoreboard objectives setdisplay below_name
scoreboard objectives setdisplay list

team modify placeholder_0 suffix "§b上海交通大学Minecraft社"
team modify placeholder_1 suffix ""
team modify placeholder_2 suffix "0"
team modify placeholder_3 suffix ""
team modify placeholder_4 suffix ""
team modify placeholder_5 suffix ""
team modify placeholder_6 suffix ""
team modify placeholder_7 suffix ""
team modify placeholder_8 suffix ""
team modify placeholder_9 suffix ""

team modify placeholder_0 prefix ""
team modify placeholder_1 prefix ""
team modify placeholder_2 prefix [{"text": "玩家: ","color":"green","bold":true}]
team modify placeholder_3 prefix ""
team modify placeholder_4 prefix ""
execute if score gamecount tourney_stats matches 1..7 run team modify placeholder_5 prefix ["",{"text": "Decision Dome in:","bold": true,"color":"red"}]
execute if score gamecount tourney_stats matches 8 run team modify placeholder_5 prefix ["",{"text": "最终对决：","bold": true,"color":"red"}]
execute if score gamecount tourney_stats matches 1 run team modify placeholder_6 prefix ["",{"text": "游戏 2/8","color":"aqua","bold": true}]
execute if score gamecount tourney_stats matches 2 run team modify placeholder_6 prefix ["",{"text": "游戏 3/8","color":"aqua","bold": true}]
execute if score gamecount tourney_stats matches 3 run team modify placeholder_6 prefix ["",{"text": "游戏 4/8","color":"aqua","bold": true}]
execute if score gamecount tourney_stats matches 4 run team modify placeholder_6 prefix ["",{"text": "游戏 5/8","color":"aqua","bold": true}]
execute if score gamecount tourney_stats matches 5 run team modify placeholder_6 prefix ["",{"text": "游戏 6/8","color":"aqua","bold": true}]
execute if score gamecount tourney_stats matches 6 run team modify placeholder_6 prefix ["",{"text": "游戏 7/8","color":"aqua","bold": true}]
execute if score gamecount tourney_stats matches 7 run team modify placeholder_6 prefix ["",{"text": "游戏 8/8","color":"aqua","bold": true}]
execute if score gamecount tourney_stats matches 8 run team modify placeholder_6 prefix ""
team modify placeholder_7 prefix ""
team modify placeholder_8 prefix ""
team modify placeholder_9 prefix ""

scoreboard players set §0 tourney_sb 0
scoreboard players set §1 tourney_sb 1
scoreboard players set §2 tourney_sb 2
scoreboard players set : tourney_sb 3
scoreboard players set §4 tourney_sb 4
scoreboard players set §5 tourney_sb 5
scoreboard players set §6 tourney_sb 6