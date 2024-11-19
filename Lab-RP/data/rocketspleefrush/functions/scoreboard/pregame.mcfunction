#region Initial
scoreboard objectives remove rsr_sb
scoreboard objectives add rsr_sb dummy [{"text": "Rocket Spleef Rush","color": "yellow","bold": true}]
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.green
scoreboard objectives setdisplay sidebar.team.yellow
scoreboard objectives setdisplay sidebar rsr_sb
scoreboard objectives modify rsr_sb numberformat fixed " "

#endregion

#region Texts
team modify placeholder_0 suffix " "
team modify placeholder_1 suffix " "
team modify placeholder_2 suffix " "
team modify placeholder_3 suffix "1/3"
execute if score map rsr_game matches 1 run team modify placeholder_4 suffix "Classic"
execute if score map rsr_game matches 2 run team modify placeholder_4 suffix "Park"
execute if score map rsr_game matches 3 run team modify placeholder_4 suffix "Palace"
execute if score map rsr_game matches 4 run team modify placeholder_4 suffix "Journey"
execute if score map rsr_game matches 5 run team modify placeholder_4 suffix "Temple"
execute if score map rsr_game matches 6 run team modify placeholder_4 suffix "Checkmate"
execute if score map rsr_game matches 7 run team modify placeholder_4 suffix "Airventure §7(by GrassBl0ck)"
execute if score map rsr_game matches 8 run team modify placeholder_4 suffix "Classic"

team modify placeholder_5 suffix "§8Casual"
execute if score eventmode tourney_stats matches 1 run function rocketspleefrush:scoreboard/macro_gameline with storage master:event_status

team modify placeholder_6 suffix " "
team modify placeholder_7 suffix " "
team modify placeholder_8 suffix " "
team modify placeholder_9 suffix " "

team modify placeholder_0 prefix " "
team modify placeholder_1 prefix " "
team modify placeholder_2 prefix " "
team modify placeholder_3 prefix [{"text": "回合: ","color":"green"}]
team modify placeholder_4 prefix [{"text": "地图: ","color": "aqua"}]
team modify placeholder_5 prefix ""
team modify placeholder_6 prefix " "
team modify placeholder_7 prefix " "
team modify placeholder_8 prefix " "
team modify placeholder_9 prefix " "
#endregion

scoreboard players reset §7 rsr_sb
scoreboard players reset §7 rsr_sb_red
scoreboard players reset §7 rsr_sb_blue
scoreboard players reset §7 rsr_sb_green
scoreboard players reset §7 rsr_sb_yellow
scoreboard players reset §7 rsr_sb_cyan
scoreboard players reset §7 rsr_sb_orange
scoreboard players reset §7 rsr_sb_pink
scoreboard players reset §7 rsr_sb_purple

scoreboard players set §1 rsr_sb 1
function master:timer/starting/rocketspleefrush
scoreboard players set §3 rsr_sb 3
scoreboard players set §4 rsr_sb 4
scoreboard players set §5 rsr_sb 5

