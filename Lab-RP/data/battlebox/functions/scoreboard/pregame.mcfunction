#region Initial
scoreboard objectives remove bb_sb
scoreboard objectives add bb_sb dummy [{"text": "Battle Box","color": "yellow","bold": true}]
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.green
scoreboard objectives setdisplay sidebar.team.yellow
scoreboard objectives setdisplay sidebar bb_sb
scoreboard objectives modify bb_sb numberformat fixed " "
#endregion

#region Texts
team modify placeholder_0 suffix " "
team modify placeholder_1 suffix " "
execute if score map bb_game matches 0 run team modify placeholder_2 suffix "灰模"
execute if score map bb_game matches 1 run team modify placeholder_2 suffix "Obelisk"
execute if score map bb_game matches 2 run team modify placeholder_2 suffix "Melting Lab"
execute if score map bb_game matches 3 run team modify placeholder_2 suffix "Beach"
execute if score map bb_game matches 4 run team modify placeholder_2 suffix "Bastion§7 by Cloud7_c"
execute if score map bb_game matches 5 run team modify placeholder_2 suffix "Shelves"
execute if score map bb_game matches 6 run team modify placeholder_2 suffix "Reactor"
execute if score map bb_game matches 7 run team modify placeholder_2 suffix "Taiga Camp"
execute if score map bb_game matches 8 run team modify placeholder_2 suffix "Knockout"

team modify placeholder_3 suffix "§8Casual"
execute if score eventmode tourney_stats matches 1 run function battlebox:scoreboard/macro_gameline with storage master:event_status


team modify placeholder_4 suffix " "
team modify placeholder_5 suffix " "
team modify placeholder_6 suffix " "
team modify placeholder_7 suffix " "
team modify placeholder_8 suffix " "
team modify placeholder_9 suffix " "

team modify placeholder_0 prefix " "
team modify placeholder_1 prefix " "
team modify placeholder_2 prefix [{"text": "地图: ","color": "aqua"}]
team modify placeholder_3 prefix ""
team modify placeholder_4 prefix " "
team modify placeholder_5 prefix " "
team modify placeholder_6 prefix " "
team modify placeholder_7 prefix " "
team modify placeholder_8 prefix " "
team modify placeholder_9 prefix " "
#endregion

scoreboard players set §0 bb_sb 0
function master:timer/starting/battlebox
scoreboard players set §2 bb_sb 2
scoreboard players set §3 bb_sb 3

