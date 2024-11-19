
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar db_sb
scoreboard objectives modify db_sb numberformat fixed " "

execute if score eventmode tourney_stats matches 1 run scoreboard objectives modify db_sb displayname ["",{"text": "高校小游戏联赛 新人活动","bold": true,"color": "yellow"}]
execute if score eventmode tourney_stats matches 0 run scoreboard objectives modify db_sb displayname ["",{"text": "Dodgebolt","bold": true,"color": "yellow"}]
execute if score mega_mode db_game matches 1 run scoreboard objectives modify db_sb displayname ["",{"text": "高校联赛: Megabolt","bold": true,"color": "yellow"}]
scoreboard players set §0 db_sb 0
scoreboard players set §1 db_sb 1
scoreboard players set §2 db_sb 2
scoreboard players set §3 db_sb 3
scoreboard players set §4 db_sb 4
scoreboard players set §5 db_sb 5
scoreboard players reset : db_sb

execute unless score mega_mode db_game matches 1 run team modify placeholder_0 suffix [{"text":" "},{"text": "\ue006", "font": "font:font"}," ",{"text": "\ue006", "font": "font:font"}," ",{"text": "\ue008", "font": "font:font"}]
execute unless score mega_mode db_game matches 1 run team modify placeholder_1 suffix [{"text":" "},{"text": "\ue006", "font": "font:font"}," ",{"text": "\ue006", "font": "font:font"}," ",{"text": "\ue008", "font": "font:font"}]

execute if score mega_mode db_game matches 1 run team modify placeholder_0 suffix [{"text":" "},{"text": "\ue006", "font": "font:font"}]
execute if score mega_mode db_game matches 1 run team modify placeholder_1 suffix [{"text":" "},{"text": "\ue006", "font": "font:font"}]

team modify placeholder_2 suffix " "
team modify placeholder_3 suffix [{"text":"In Game","color":"red","bold":true}]
team modify placeholder_4 suffix [{"text":"地图: ","color":"aqua","bold":true},{"text":"Starry Throne","color":"white","bold":false}]
execute if score eventmode tourney_stats matches 1 run team modify placeholder_5 suffix ["",{"text": "最终对决:","bold": true,"color":"aqua"},{"text": " Dodgebolt"}]
execute if score eventmode tourney_stats matches 1 if score mega_mode db_game matches 1 run team modify placeholder_5 suffix ["",{"text": "最终对决:","bold": true,"color":"aqua"},{"text": " Megabolt"}]

execute if score eventmode tourney_stats matches 0 run team modify placeholder_5 suffix "§8Casual"


execute if score TeamOne db_teams matches 1 run team modify placeholder_1 prefix ["",{"text": "红队: ","bold": true,"color":"red"}]
execute if score TeamOne db_teams matches 2 run team modify placeholder_1 prefix ["",{"text": "蓝队: ","bold": true,"color":"blue"}]
execute if score TeamOne db_teams matches 3 run team modify placeholder_1 prefix ["",{"text": "绿队: ","bold": true,"color":"green"}]
execute if score TeamOne db_teams matches 4 run team modify placeholder_1 prefix ["",{"text": "黄队: ","bold": true,"color":"yellow"}]
execute if score TeamOne db_teams matches 5 run team modify placeholder_1 prefix ["",{"text": "青队: ","bold": true,"color":"dark_aqua"}]
execute if score TeamOne db_teams matches 6 run team modify placeholder_1 prefix ["",{"text": "橙队: ","bold": true,"color":"gold"}]
execute if score TeamOne db_teams matches 7 run team modify placeholder_1 prefix ["",{"text": "紫队: ","bold": true,"color":"dark_purple"}]
execute if score TeamOne db_teams matches 8 run team modify placeholder_1 prefix ["",{"text": "粉队: ","bold": true,"color":"light_purple"}]

execute if score TeamTwo db_teams matches 1 run team modify placeholder_0 prefix ["",{"text": "红队: ","bold": true,"color":"red"}]
execute if score TeamTwo db_teams matches 2 run team modify placeholder_0 prefix ["",{"text": "蓝队: ","bold": true,"color":"blue"}]
execute if score TeamTwo db_teams matches 3 run team modify placeholder_0 prefix ["",{"text": "绿队: ","bold": true,"color":"green"}]
execute if score TeamTwo db_teams matches 4 run team modify placeholder_0 prefix ["",{"text": "黄队: ","bold": true,"color":"yellow"}]
execute if score TeamTwo db_teams matches 5 run team modify placeholder_0 prefix ["",{"text": "青队: ","bold": true,"color":"dark_aqua"}]
execute if score TeamTwo db_teams matches 6 run team modify placeholder_0 prefix ["",{"text": "橙队: ","bold": true,"color":"gold"}]
execute if score TeamTwo db_teams matches 7 run team modify placeholder_0 prefix ["",{"text": "紫队: ","bold": true,"color":"dark_purple"}]
execute if score TeamTwo db_teams matches 8 run team modify placeholder_0 prefix ["",{"text": "粉队: ","bold": true,"color":"light_purple"}]

team modify placeholder_2 prefix ""
team modify placeholder_3 prefix ""
team modify placeholder_4 prefix ""
team modify placeholder_5 prefix ""
team modify placeholder_6 prefix ""
team modify placeholder_7 prefix ""
team modify placeholder_8 prefix ""
team modify placeholder_9 prefix ""
team modify placeholder_11 prefix ""