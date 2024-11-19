
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

scoreboard objectives modify tourney_sb displayname ["","§e§l高校小游戏联赛 Chaos"]
scoreboard objectives modify tourney_sb numberformat fixed " "
team modify placeholder_0 suffix "§b上海交通大学Minecraft社"
team modify placeholder_1 suffix ""
team modify placeholder_2 suffix "0"
team modify placeholder_3 suffix ""
team modify placeholder_4 suffix "等待中"
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
team modify placeholder_5 prefix ["",{"text": "活动开始: ","bold": true,"color":"aqua"}]
team modify placeholder_6 prefix ["",{"text": "Map Ver: 0.27.C","color":"gray"}]
team modify placeholder_7 prefix ""
team modify placeholder_8 prefix ""
team modify placeholder_9 prefix ""

scoreboard players set §0 tourney_sb 0
scoreboard players set §1 tourney_sb 1
scoreboard players set §2 tourney_sb 2
scoreboard players set §3 tourney_sb 3
scoreboard players set §4 tourney_sb 4
scoreboard players set §5 tourney_sb 5
scoreboard players set §6 tourney_sb 6
scoreboard players reset : tourney_sb