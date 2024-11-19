#region Initial
scoreboard objectives remove bb_sb
scoreboard objectives remove bb_sb_red
scoreboard objectives remove bb_sb_blue
scoreboard objectives remove bb_sb_green
scoreboard objectives remove bb_sb_yellow
scoreboard objectives remove bb_sb_purple
scoreboard objectives remove bb_sb_pink
scoreboard objectives remove bb_sb_cyan
scoreboard objectives remove bb_sb_orange

scoreboard objectives add bb_sb dummy [{"text": "Battle Box","color": "yellow","bold": true}]
scoreboard objectives add bb_sb_red dummy [{"text": "Battle Box","color": "yellow","bold": true}]
scoreboard objectives add bb_sb_blue dummy [{"text": "Battle Box","color": "yellow","bold": true}]
scoreboard objectives add bb_sb_green dummy [{"text": "Battle Box","color": "yellow","bold": true}]
scoreboard objectives add bb_sb_yellow dummy [{"text": "Battle Box","color": "yellow","bold": true}]
scoreboard objectives add bb_sb_cyan dummy [{"text": "Battle Box","color": "yellow","bold": true}]
scoreboard objectives add bb_sb_purple dummy [{"text": "Battle Box","color": "yellow","bold": true}]
scoreboard objectives add bb_sb_pink dummy [{"text": "Battle Box","color": "yellow","bold": true}]
scoreboard objectives add bb_sb_orange dummy [{"text": "Battle Box","color": "yellow","bold": true}]

scoreboard objectives setdisplay sidebar.team.red bb_sb_red
scoreboard objectives setdisplay sidebar.team.blue bb_sb_blue
scoreboard objectives setdisplay sidebar.team.green bb_sb_green
scoreboard objectives setdisplay sidebar.team.yellow bb_sb_yellow
scoreboard objectives setdisplay sidebar.team.dark_purple bb_sb_purple
scoreboard objectives setdisplay sidebar.team.light_purple bb_sb_pink
scoreboard objectives setdisplay sidebar.team.gold bb_sb_orange
scoreboard objectives setdisplay sidebar.team.dark_aqua bb_sb_cyan
scoreboard objectives setdisplay sidebar bb_sb

scoreboard objectives modify bb_sb numberformat fixed " "
scoreboard objectives modify bb_sb_red numberformat fixed " "
scoreboard objectives modify bb_sb_blue numberformat fixed " "
scoreboard objectives modify bb_sb_green numberformat fixed " "
scoreboard objectives modify bb_sb_yellow numberformat fixed " "
scoreboard objectives modify bb_sb_cyan numberformat fixed " "
scoreboard objectives modify bb_sb_pink numberformat fixed " "
scoreboard objectives modify bb_sb_orange numberformat fixed " "
scoreboard objectives modify bb_sb_purple numberformat fixed " "

scoreboard objectives modify bb_sb displayautoupdate true
scoreboard objectives modify bb_sb_red displayautoupdate true
scoreboard objectives modify bb_sb_blue displayautoupdate true
scoreboard objectives modify bb_sb_green displayautoupdate true
scoreboard objectives modify bb_sb_yellow displayautoupdate true
scoreboard objectives modify bb_sb_cyan displayautoupdate true
scoreboard objectives modify bb_sb_pink displayautoupdate true
scoreboard objectives modify bb_sb_orange displayautoupdate true
scoreboard objectives modify bb_sb_purple displayautoupdate true
#endregion

#region model
scoreboard players set §5 bb_sb 16
scoreboard players set §4 bb_sb 15
scoreboard players set §3 bb_sb 14
scoreboard players set §2 bb_sb 12
scoreboard players set §6 bb_sb 11
scoreboard players set §1 bb_sb 0
scoreboard players reset §0 bb_sb
# Team
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

scoreboard players set $match_status bb_sb_red -1
scoreboard players set $match_status bb_sb_blue -1
scoreboard players set $match_status bb_sb_green -1
scoreboard players set $match_status bb_sb_yellow -1
scoreboard players set $match_status bb_sb_cyan -1
scoreboard players set $match_status bb_sb_orange -1
scoreboard players set $match_status bb_sb_purple -1
scoreboard players set $match_status bb_sb_pink -1


scoreboard players set §5 bb_sb_red 16
scoreboard players set §4 bb_sb_red 15
scoreboard players set §3 bb_sb_red 14
scoreboard players set §2 bb_sb_red 12
scoreboard players set §6 bb_sb_red 11
scoreboard players set §1 bb_sb_red 0

scoreboard players set §5 bb_sb_blue 16
scoreboard players set §4 bb_sb_blue 15
scoreboard players set §3 bb_sb_blue 14
scoreboard players set §2 bb_sb_blue 12
scoreboard players set §6 bb_sb_blue 11
scoreboard players set §1 bb_sb_blue 0

scoreboard players set §5 bb_sb_green 16
scoreboard players set §4 bb_sb_green 15
scoreboard players set §3 bb_sb_green 14
scoreboard players set §2 bb_sb_green 12
scoreboard players set §6 bb_sb_green 11
scoreboard players set §1 bb_sb_green 0

scoreboard players set §5 bb_sb_yellow 16
scoreboard players set §4 bb_sb_yellow 15
scoreboard players set §3 bb_sb_yellow 14
scoreboard players set §2 bb_sb_yellow 12
scoreboard players set §6 bb_sb_yellow 11
scoreboard players set §1 bb_sb_yellow 0

scoreboard players set §5 bb_sb_cyan 16
scoreboard players set §4 bb_sb_cyan 15
scoreboard players set §3 bb_sb_cyan 14
scoreboard players set §2 bb_sb_cyan 12
scoreboard players set §6 bb_sb_cyan 11
scoreboard players set §1 bb_sb_cyan 0

scoreboard players set §5 bb_sb_orange 16
scoreboard players set §4 bb_sb_orange 15
scoreboard players set §3 bb_sb_orange 14
scoreboard players set §2 bb_sb_orange 12
scoreboard players set §6 bb_sb_orange 11
scoreboard players set §1 bb_sb_orange 0

scoreboard players set §5 bb_sb_pink 16
scoreboard players set §4 bb_sb_pink 15
scoreboard players set §3 bb_sb_pink 14
scoreboard players set §2 bb_sb_pink 12
scoreboard players set §6 bb_sb_pink 11
scoreboard players set §1 bb_sb_pink 0

scoreboard players set §5 bb_sb_purple 16
scoreboard players set §4 bb_sb_purple 15
scoreboard players set §3 bb_sb_purple 14
scoreboard players set §2 bb_sb_purple 12
scoreboard players set §6 bb_sb_purple 11
scoreboard players set §1 bb_sb_purple 0
#endregion
team modify placeholder_0 suffix ""
team modify placeholder_1 suffix ""
team modify placeholder_2 suffix ""
#team modify placeholder_3 suffix "1/7"
execute if score map bb_game matches 0 run team modify placeholder_4 suffix "灰模"
execute if score map bb_game matches 1 run team modify placeholder_4 suffix "Obelisk"
execute if score map bb_game matches 2 run team modify placeholder_4 suffix "Melting Lab"
execute if score map bb_game matches 3 run team modify placeholder_4 suffix "Beach"
execute if score map bb_game matches 4 run team modify placeholder_4 suffix "Bastion"
execute if score map bb_game matches 5 run team modify placeholder_4 suffix "Shelves"
execute if score map bb_game matches 6 run team modify placeholder_4 suffix "Reactor"
execute if score map bb_game matches 7 run team modify placeholder_4 suffix "Taiga Camp"
execute if score map bb_game matches 8 run team modify placeholder_4 suffix "Knockout"

team modify placeholder_0 prefix ""
team modify placeholder_1 prefix ""
team modify placeholder_2 prefix ""
team modify placeholder_3 prefix [{"text": "回合: ","color": "green"}]
team modify placeholder_4 prefix [{"text": "地图: ","color": "aqua"}]
team modify placeholder_5 prefix ""
team modify placeholder_5 suffix "§8Casual"

execute if score eventmode tourney_stats matches 1 run function battlebox:scoreboard/macro_gameline_ig with storage master:event_status

team modify placeholder_6 prefix ""
team modify placeholder_6 suffix "§b§l本游戏积分:"

scoreboard players display name $match_status bb_sb_red ["§a获胜轮数: ","§f0/0"]
scoreboard players display name $match_status bb_sb_blue ["§a获胜轮数: ","§f0/0"]
scoreboard players display name $match_status bb_sb_green ["§a获胜轮数: ","§f0/0"]
scoreboard players display name $match_status bb_sb_yellow ["§a获胜轮数: ","§f0/0"]
scoreboard players display name $match_status bb_sb_cyan ["§a获胜轮数: ","§f0/0"]
scoreboard players display name $match_status bb_sb_pink ["§a获胜轮数: ","§f0/0"]
scoreboard players display name $match_status bb_sb_orange ["§a获胜轮数: ","§f0/0"]
scoreboard players display name $match_status bb_sb_purple ["§a获胜轮数: ","§f0/0"]

#endregion

# 游戏信息 - 地图 - 回合 - 计时器 - WinLose
function master:timer/selkit/battlebox
function utils:scoreboardrank/init
function battlebox:scoreboard/refresh
