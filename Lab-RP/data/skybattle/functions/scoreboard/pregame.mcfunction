
scoreboard objectives remove sba_sb
scoreboard objectives add sba_sb dummy ["",{"text": "Sky Battle","color": "yellow","bold": true}]
scoreboard objectives setdisplay sidebar sba_sb
scoreboard objectives modify sba_sb numberformat fixed " "

# scoreboard players set §1 sba_sb 1
# scoreboard players set §2 sba_sb 2
scoreboard players set §3 sba_sb 3

scoreboard players set §5 sba_sb 5
scoreboard players set §6 sba_sb 6
scoreboard players set §7 sba_sb 7

team modify placeholder_1 prefix ""
team modify placeholder_2 prefix ""
team modify placeholder_3 prefix ""
team modify placeholder_4 prefix ""
team modify placeholder_5 prefix ""
team modify placeholder_6 prefix ["",{"text": "地图: ","color": "aqua"}]
team modify placeholder_7 prefix ""

team modify placeholder_1 suffix ""
team modify placeholder_2 suffix ""
team modify placeholder_3 suffix ""
team modify placeholder_4 suffix ""
team modify placeholder_5 suffix ""
execute if score map sba_game matches 1 run team modify placeholder_6 suffix ["",{"text": "Classic"}]
execute if score map sba_game matches 2 run team modify placeholder_6 suffix ["",{"text": "Sand Castle"}]
team modify placeholder_7 suffix "§8Casual"

execute if score eventmode tourney_stats matches 1 run function skybattle:scoreboard/macro_gameline with storage master:event_status


team modify placeholder_6 prefix ["",{"text": "地图: ","color": "aqua"}]
execute if score map sba_game matches 1 run team modify placeholder_6 suffix ["",{"text": "Classic"}]
execute if score map sba_game matches 2 run team modify placeholder_6 suffix ["",{"text": "Sand Castle"}]
execute if score map sba_game matches 3 run team modify placeholder_6 suffix ["",{"text": "Wasteland"}]
execute if score map sba_game matches 4 run team modify placeholder_6 suffix ["",{"text": "Cakesland"}]

team modify placeholder_5 prefix ["",{"text": "回合: ","color": "green"}]
team modify placeholder_5 suffix ["",{"text": "1/3"}]

function master:timer/starting/skybattle