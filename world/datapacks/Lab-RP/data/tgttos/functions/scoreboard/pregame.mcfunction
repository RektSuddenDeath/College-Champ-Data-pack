#region Initial
scoreboard objectives remove tgttos_sb
scoreboard objectives add tgttos_sb dummy [{"text": "TGTTOS","color": "yellow","bold": true}]
scoreboard objectives add tgttos_sb_red dummy [{"text": "TGTTOS","color": "yellow","bold": true}]
scoreboard objectives add tgttos_sb_blue dummy [{"text": "TGTTOS","color": "yellow","bold": true}]
scoreboard objectives add tgttos_sb_green dummy [{"text": "TGTTOS","color": "yellow","bold": true}]
scoreboard objectives add tgttos_sb_yellow dummy [{"text": "TGTTOS","color": "yellow","bold": true}]
scoreboard objectives add tgttos_sb_cyan dummy [{"text": "TGTTOS","color": "yellow","bold": true}]
scoreboard objectives add tgttos_sb_orange dummy [{"text": "TGTTOS","color": "yellow","bold": true}]
scoreboard objectives add tgttos_sb_pink dummy [{"text": "TGTTOS","color": "yellow","bold": true}]
scoreboard objectives add tgttos_sb_purple dummy [{"text": "TGTTOS","color": "yellow","bold": true}]


scoreboard objectives setdisplay sidebar tgttos_sb
scoreboard objectives modify tgttos_sb numberformat fixed " "

#endregion

#region Texts
team modify placeholder_0 suffix ""
team modify placeholder_1 suffix ""
team modify placeholder_2 suffix ""
team modify placeholder_3 suffix "1/6"
team modify placeholder_4 suffix "Cavern Drive"
team modify placeholder_5 suffix "§8Casual"
execute if score eventmode tourney_stats matches 1 run function tgttos:scoreboard/macro_gameline with storage master:event_status
team modify placeholder_6 suffix ""
team modify placeholder_7 suffix ""
team modify placeholder_8 suffix ""
team modify placeholder_9 suffix ""
 
team modify placeholder_0 prefix ""
team modify placeholder_1 prefix ""
team modify placeholder_2 prefix ""
team modify placeholder_3 prefix [{"text": "回合: ","color":"green"}]
team modify placeholder_4 prefix [{"text": "地图: ","color": "aqua"}]
team modify placeholder_5 prefix ""
team modify placeholder_6 prefix ""
team modify placeholder_7 prefix ""
team modify placeholder_8 prefix ""
team modify placeholder_9 prefix ""
#endregion

scoreboard players set §1 tgttos_sb 1
function master:timer/starting/tgttos
scoreboard players set §3 tgttos_sb 3
scoreboard players set §4 tgttos_sb 4
scoreboard players set §5 tgttos_sb 5

