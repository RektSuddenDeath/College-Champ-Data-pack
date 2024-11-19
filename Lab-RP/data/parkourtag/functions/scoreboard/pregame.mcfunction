#region Initial
scoreboard objectives remove pkt_sb
scoreboard objectives add pkt_sb dummy [{"text": "Parkour Tag","color": "yellow","bold": true}]
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.green
scoreboard objectives setdisplay sidebar.team.yellow
scoreboard objectives setdisplay sidebar pkt_sb
scoreboard objectives modify pkt_sb numberformat fixed " "

#endregion

#region Texts
team modify placeholder_0 suffix " "
team modify placeholder_1 suffix " "
execute if score map pkt_game matches 1 run team modify placeholder_2 suffix "Factory"
execute if score map pkt_game matches 2 run team modify placeholder_2 suffix "Sandy Chase"
execute if score map pkt_game matches 3 run team modify placeholder_2 suffix "Launchsite"
execute if score map pkt_game matches 4 run team modify placeholder_2 suffix "Dust"
execute if score map pkt_game matches 5 run team modify placeholder_2 suffix "Water Park"

team modify placeholder_3 suffix "§8Casual"
execute if score eventmode tourney_stats matches 1 run function parkourtag:scoreboard/macro_gameline with storage master:event_status
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

scoreboard players set §0 pkt_sb 0
function master:timer/starting/parkourtag
scoreboard players set §2 pkt_sb 2
scoreboard players set §3 pkt_sb 3

