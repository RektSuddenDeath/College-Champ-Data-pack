#region Initial
scoreboard objectives remove pkt_sb
scoreboard objectives remove pkt_sb_red
scoreboard objectives remove pkt_sb_blue
scoreboard objectives remove pkt_sb_green
scoreboard objectives remove pkt_sb_yellow
scoreboard objectives remove pkt_sb_orange
scoreboard objectives remove pkt_sb_pink
scoreboard objectives remove pkt_sb_purple
scoreboard objectives remove pkt_sb_cyan

scoreboard objectives add pkt_sb dummy [{"text": "Parkour Tag","color": "yellow","bold": true}]
scoreboard objectives add pkt_sb_red dummy [{"text": "Parkour Tag","color": "yellow","bold": true}]
scoreboard objectives add pkt_sb_blue dummy [{"text": "Parkour Tag","color": "yellow","bold": true}]
scoreboard objectives add pkt_sb_green dummy [{"text": "Parkour Tag","color": "yellow","bold": true}]
scoreboard objectives add pkt_sb_yellow dummy [{"text": "Parkour Tag","color": "yellow","bold": true}]
scoreboard objectives add pkt_sb_cyan dummy [{"text": "Parkour Tag","color": "yellow","bold": true}]
scoreboard objectives add pkt_sb_pink dummy [{"text": "Parkour Tag","color": "yellow","bold": true}]
scoreboard objectives add pkt_sb_orange dummy [{"text": "Parkour Tag","color": "yellow","bold": true}]
scoreboard objectives add pkt_sb_purple dummy [{"text": "Parkour Tag","color": "yellow","bold": true}]

scoreboard objectives setdisplay sidebar.team.red pkt_sb_red
scoreboard objectives setdisplay sidebar.team.blue pkt_sb_blue
scoreboard objectives setdisplay sidebar.team.green pkt_sb_green
scoreboard objectives setdisplay sidebar.team.yellow pkt_sb_yellow
scoreboard objectives setdisplay sidebar.team.dark_aqua pkt_sb_cyan
scoreboard objectives setdisplay sidebar.team.light_purple pkt_sb_pink
scoreboard objectives setdisplay sidebar.team.gold pkt_sb_orange
scoreboard objectives setdisplay sidebar.team.dark_purple pkt_sb_purple
scoreboard objectives setdisplay sidebar pkt_sb

scoreboard objectives modify pkt_sb numberformat fixed " "
scoreboard objectives modify pkt_sb_red numberformat fixed " "
scoreboard objectives modify pkt_sb_blue numberformat fixed " "
scoreboard objectives modify pkt_sb_green numberformat fixed " "
scoreboard objectives modify pkt_sb_yellow numberformat fixed " "
scoreboard objectives modify pkt_sb_cyan numberformat fixed " "
scoreboard objectives modify pkt_sb_pink numberformat fixed " "
scoreboard objectives modify pkt_sb_orange numberformat fixed " "
scoreboard objectives modify pkt_sb_purple numberformat fixed " "


#endregion

#region model
scoreboard players set §a pkt_sb 16
scoreboard players set §9 pkt_sb 15
scoreboard players set §8 pkt_sb 14
#scoreboard players set §7 pkt_sb 13
scoreboard players set §6 pkt_sb 12
scoreboard players set §5 pkt_sb 11
scoreboard players set §4 pkt_sb 0
# scoreboard players set §3 pkt_sb 3
# scoreboard players set §2 pkt_sb 2
# scoreboard players set §1 pkt_sb 1
# scoreboard players set §0 pkt_sb 0

team join placeholder_r1 §r§1
team join placeholder_b1 §b§1
team join placeholder_g1 §g§1
team join placeholder_y1 §y§1
team join placeholder_cy1 §c§1
team join placeholder_or1 §o§1
team join placeholder_pi1 §i§1
team join placeholder_pu1 §p§1

team join placeholder_r2 §r§2
team join placeholder_b2 §b§2
team join placeholder_g2 §g§2
team join placeholder_y2 §y§2
team join placeholder_cy2 §c§2
team join placeholder_or2 §o§2
team join placeholder_pi2 §i§2
team join placeholder_pu2 §p§2

team join placeholder_r3 §r§3
team join placeholder_b3 §b§3
team join placeholder_g3 §g§3
team join placeholder_y3 §y§3
team join placeholder_cy3 §c§3
team join placeholder_or3 §o§3
team join placeholder_pi3 §i§3
team join placeholder_pu3 §p§3

scoreboard players set §r§1 pkt_sb_red -1
scoreboard players set §b§1 pkt_sb_blue -1
scoreboard players set §g§1 pkt_sb_green -1
scoreboard players set §y§1 pkt_sb_yellow -1
scoreboard players set §c§1 pkt_sb_cyan -1
scoreboard players set §i§1 pkt_sb_pink -1
scoreboard players set §o§1 pkt_sb_orange -1
scoreboard players set §p§1 pkt_sb_purple -1

scoreboard players set §a pkt_sb_red 16
scoreboard players set §9 pkt_sb_red 15
scoreboard players set §8 pkt_sb_red 14
#scoreboard players set §7 pkt_sb_red 8
scoreboard players set §6 pkt_sb_red 12
scoreboard players set §5 pkt_sb_red 11
scoreboard players set §4 pkt_sb_red 0
# scoreboard players set §3 pkt_sb_red 4
# scoreboard players set §2 pkt_sb_red 3
# scoreboard players set §1 pkt_sb_red 2
# scoreboard players set §0 pkt_sb_red 1

scoreboard players set §a pkt_sb_blue 16
scoreboard players set §9 pkt_sb_blue 15
scoreboard players set §8 pkt_sb_blue 14
# scoreboard players set §7 pkt_sb_blue 8
scoreboard players set §6 pkt_sb_blue 12
scoreboard players set §5 pkt_sb_blue 11
scoreboard players set §4 pkt_sb_blue 0
# scoreboard players set §3 pkt_sb_blue 4
# scoreboard players set §2 pkt_sb_blue 3
# scoreboard players set §1 pkt_sb_blue 2
# scoreboard players set §0 pkt_sb_blue 1

scoreboard players set §a pkt_sb_green 16
scoreboard players set §9 pkt_sb_green 15
scoreboard players set §8 pkt_sb_green 14
# scoreboard players set §7 pkt_sb_green 8
scoreboard players set §6 pkt_sb_green 12
scoreboard players set §5 pkt_sb_green 11
scoreboard players set §4 pkt_sb_green 0
# scoreboard players set §3 pkt_sb_green 4
# scoreboard players set §2 pkt_sb_green 3
# scoreboard players set §1 pkt_sb_green 2
# scoreboard players set §0 pkt_sb_green 1

scoreboard players set §a pkt_sb_yellow 16
scoreboard players set §9 pkt_sb_yellow 15
scoreboard players set §8 pkt_sb_yellow 14
# scoreboard players set §7 pkt_sb_yellow 8
scoreboard players set §6 pkt_sb_yellow 12
scoreboard players set §5 pkt_sb_yellow 11
scoreboard players set §4 pkt_sb_yellow 0
# scoreboard players set §3 pkt_sb_yellow 4
# scoreboard players set §2 pkt_sb_yellow 3
# scoreboard players set §1 pkt_sb_yellow 2
# scoreboard players set §0 pkt_sb_yellow 1

scoreboard players set §a pkt_sb_orange 16
scoreboard players set §9 pkt_sb_orange 15
scoreboard players set §8 pkt_sb_orange 14
# scoreboard players set §7 pkt_sb_orange 8
scoreboard players set §6 pkt_sb_orange 12
scoreboard players set §5 pkt_sb_orange 11
scoreboard players set §4 pkt_sb_orange 0
# scoreboard players set §3 pkt_sb_orange 4
# scoreboard players set §2 pkt_sb_orange 3
# scoreboard players set §1 pkt_sb_orange 2
# scoreboard players set §0 pkt_sb_orange 1

scoreboard players set §a pkt_sb_cyan 16
scoreboard players set §9 pkt_sb_cyan 15
scoreboard players set §8 pkt_sb_cyan 14
# scoreboard players set §7 pkt_sb_cyan 8
scoreboard players set §6 pkt_sb_cyan 12
scoreboard players set §5 pkt_sb_cyan 11
scoreboard players set §4 pkt_sb_cyan 0
# scoreboard players set §3 pkt_sb_cyan 4
# scoreboard players set §2 pkt_sb_cyan 3
# scoreboard players set §1 pkt_sb_cyan 2
# scoreboard players set §0 pkt_sb_cyan 1

scoreboard players set §a pkt_sb_pink 16
scoreboard players set §9 pkt_sb_pink 15
scoreboard players set §8 pkt_sb_pink 14
#scoreboard players set §7 pkt_sb_pink 8
scoreboard players set §6 pkt_sb_pink 12
scoreboard players set §5 pkt_sb_pink 11
scoreboard players set §4 pkt_sb_pink 0
# scoreboard players set §3 pkt_sb_pink 4
# scoreboard players set §2 pkt_sb_pink 3
# scoreboard players set §1 pkt_sb_pink 2
# scoreboard players set §0 pkt_sb_pink 1

scoreboard players set §a pkt_sb_purple 16
scoreboard players set §9 pkt_sb_purple 15
scoreboard players set §8 pkt_sb_purple 14
# scoreboard players set §7 pkt_sb_purple 8
scoreboard players set §6 pkt_sb_purple 12
scoreboard players set §5 pkt_sb_purple 11
scoreboard players set §4 pkt_sb_purple 0
# scoreboard players set §3 pkt_sb_purple 4
# scoreboard players set §2 pkt_sb_purple 3
# scoreboard players set §1 pkt_sb_purple 2
# scoreboard players set §0 pkt_sb_purple 1
#endregion
#region Texts
team modify placeholder_0 suffix ""
team modify placeholder_1 suffix ""
team modify placeholder_2 suffix ""
team modify placeholder_3 suffix ""
team modify placeholder_4 suffix ""
team modify placeholder_5 suffix ""
team modify placeholder_6 suffix ""
team modify placeholder_7 suffix ""
team modify placeholder_8 suffix "1/7"
execute if score map pkt_game matches 1 run team modify placeholder_9 suffix "Factory"
execute if score map pkt_game matches 2 run team modify placeholder_9 suffix "Sandy Chase"
execute if score map pkt_game matches 3 run team modify placeholder_9 suffix "Launchsite"
execute if score map pkt_game matches 4 run team modify placeholder_9 suffix "Dust"
execute if score map pkt_game matches 5 run team modify placeholder_9 suffix "Water Park"

team modify placeholder_11 prefix ""

team modify placeholder_0 prefix " "
team modify placeholder_1 prefix ""
team modify placeholder_2 prefix ""
team modify placeholder_3 prefix ""
team modify placeholder_4 prefix ""
team modify placeholder_5 prefix [{"text": "本游戏积分: ","color": "aqua","bold": true}]
team modify placeholder_6 prefix " "
team modify placeholder_7 prefix ""
team modify placeholder_8 prefix [{"text": "回合: ","color": "green"}]
team modify placeholder_9 prefix [{"text": "地图: ","color": "aqua"}]
team modify placeholder_11 suffix "§8Casual"
execute if score eventmode tourney_stats matches 1 run function parkourtag:scoreboard/macro_gameline_ig with storage master:event_status

team modify placeholder_r1 prefix [{"text": "已获胜轮数: ","color": "green"},{"text": "0","color": "white"}]
team modify placeholder_b1 prefix [{"text": "已获胜轮数: ","color": "green"},{"text": "0","color": "white"}]
team modify placeholder_g1 prefix [{"text": "已获胜轮数: ","color": "green"},{"text": "0","color": "white"}]
team modify placeholder_y1 prefix [{"text": "已获胜轮数: ","color": "green"},{"text": "0","color": "white"}]
team modify placeholder_cy1 prefix [{"text": "已获胜轮数: ","color": "green"},{"text": "0","color": "white"}]
team modify placeholder_pu1 prefix [{"text": "已获胜轮数: ","color": "green"},{"text": "0","color": "white"}]
team modify placeholder_pi1 prefix [{"text": "已获胜轮数: ","color": "green"},{"text": "0","color": "white"}]
team modify placeholder_or1 prefix [{"text": "已获胜轮数: ","color": "green"},{"text": "0","color": "white"}]

team modify placeholder_r1 suffix "/0"
team modify placeholder_b1 suffix "/0"
team modify placeholder_g1 suffix "/0"
team modify placeholder_y1 suffix "/0"
team modify placeholder_cy1 suffix "/0"
team modify placeholder_pi1 suffix "/0"
team modify placeholder_or1 suffix "/0"
team modify placeholder_pu1 suffix "/0"
#endregion

function master:timer/selkit/parkourtag
function utils:scoreboardrank/init
function parkourtag:scoreboard/refresh
