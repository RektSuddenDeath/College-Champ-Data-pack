#region Initial
scoreboard objectives remove bm_sb
scoreboard objectives remove bm_sb_red
scoreboard objectives remove bm_sb_blue
scoreboard objectives remove bm_sb_green
scoreboard objectives remove bm_sb_yellow
scoreboard objectives remove bm_sb_purple
scoreboard objectives remove bm_sb_pink
scoreboard objectives remove bm_sb_cyan
scoreboard objectives remove bm_sb_orange

scoreboard objectives add bm_sb dummy [{"text": "Build Mart","color": "yellow","bold": true}]
scoreboard objectives add bm_sb_red dummy [{"text": "Build Mart","color": "yellow","bold": true}]
scoreboard objectives add bm_sb_blue dummy [{"text": "Build Mart","color": "yellow","bold": true}]
scoreboard objectives add bm_sb_green dummy [{"text": "Build Mart","color": "yellow","bold": true}]
scoreboard objectives add bm_sb_yellow dummy [{"text": "Build Mart","color": "yellow","bold": true}]
scoreboard objectives add bm_sb_cyan dummy [{"text": "Build Mart","color": "yellow","bold": true}]
scoreboard objectives add bm_sb_purple dummy [{"text": "Build Mart","color": "yellow","bold": true}]
scoreboard objectives add bm_sb_pink dummy [{"text": "Build Mart","color": "yellow","bold": true}]
scoreboard objectives add bm_sb_orange dummy [{"text": "Build Mart","color": "yellow","bold": true}]

scoreboard objectives setdisplay sidebar.team.red bm_sb_red
scoreboard objectives setdisplay sidebar.team.blue bm_sb_blue
scoreboard objectives setdisplay sidebar.team.green bm_sb_green
scoreboard objectives setdisplay sidebar.team.yellow bm_sb_yellow
scoreboard objectives setdisplay sidebar.team.dark_purple bm_sb_purple
scoreboard objectives setdisplay sidebar.team.light_purple bm_sb_pink
scoreboard objectives setdisplay sidebar.team.gold bm_sb_orange
scoreboard objectives setdisplay sidebar.team.dark_aqua bm_sb_cyan
scoreboard objectives setdisplay sidebar bm_sb

scoreboard objectives modify bm_sb numberformat fixed " "
scoreboard objectives modify bm_sb_red numberformat fixed " "
scoreboard objectives modify bm_sb_blue numberformat fixed " "
scoreboard objectives modify bm_sb_green numberformat fixed " "
scoreboard objectives modify bm_sb_yellow numberformat fixed " "
scoreboard objectives modify bm_sb_cyan numberformat fixed " "
scoreboard objectives modify bm_sb_pink numberformat fixed " "
scoreboard objectives modify bm_sb_orange numberformat fixed " "
scoreboard objectives modify bm_sb_purple numberformat fixed " "

#endregion

#region model
scoreboard players set §5 bm_sb 16
scoreboard players set §4 bm_sb 15
scoreboard players set §3 bm_sb 14
scoreboard players set §2 bm_sb 12
scoreboard players reset §6 bm_sb
scoreboard players set §1 bm_sb 0
scoreboard players reset §0 bm_sb
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


## Build Mart
## Casual 15
## Map 14
## Time Left 13
## 12
## Builds Complete: 11
## (4 teams)
## 

scoreboard players set §5 bm_sb 15
scoreboard players set §4 bm_sb 14
scoreboard players set §3 bm_sb 13
scoreboard players set §2 bm_sb 12
scoreboard players set §1 bm_sb 11
scoreboard players set §0 bm_sb 0

scoreboard players set §5 bm_sb_red 15
scoreboard players set §4 bm_sb_red 14
scoreboard players set §3 bm_sb_red 13
scoreboard players set §2 bm_sb_red 12
scoreboard players set §1 bm_sb_red 11
scoreboard players set §0 bm_sb_red 0

scoreboard players set §5 bm_sb_blue 15
scoreboard players set §4 bm_sb_blue 14
scoreboard players set §3 bm_sb_blue 13
scoreboard players set §2 bm_sb_blue 12
scoreboard players set §1 bm_sb_blue 11
scoreboard players set §0 bm_sb_blue 0

scoreboard players set §5 bm_sb_green 15
scoreboard players set §4 bm_sb_green 14
scoreboard players set §3 bm_sb_green 13
scoreboard players set §2 bm_sb_green 12
scoreboard players set §1 bm_sb_green 11
scoreboard players set §0 bm_sb_green 0

scoreboard players set §5 bm_sb_yellow 15
scoreboard players set §4 bm_sb_yellow 14
scoreboard players set §3 bm_sb_yellow 13
scoreboard players set §2 bm_sb_yellow 12
scoreboard players set §1 bm_sb_yellow 11
scoreboard players set §0 bm_sb_yellow 0

scoreboard players set §5 bm_sb_cyan 15
scoreboard players set §4 bm_sb_cyan 14
scoreboard players set §3 bm_sb_cyan 13
scoreboard players set §2 bm_sb_cyan 12
scoreboard players set §1 bm_sb_cyan 11
scoreboard players set §0 bm_sb_cyan 0

scoreboard players set §5 bm_sb_pink 15
scoreboard players set §4 bm_sb_pink 14
scoreboard players set §3 bm_sb_pink 13
scoreboard players set §2 bm_sb_pink 12
scoreboard players set §1 bm_sb_pink 11
scoreboard players set §0 bm_sb_pink 0

scoreboard players set §5 bm_sb_orange 15
scoreboard players set §4 bm_sb_orange 14
scoreboard players set §3 bm_sb_orange 13
scoreboard players set §2 bm_sb_orange 12
scoreboard players set §1 bm_sb_orange 11
scoreboard players set §0 bm_sb_orange 0

scoreboard players set §5 bm_sb_purple 15
scoreboard players set §4 bm_sb_purple 14
scoreboard players set §3 bm_sb_purple 13
scoreboard players set §2 bm_sb_purple 12
scoreboard players set §1 bm_sb_purple 11
scoreboard players set §0 bm_sb_purple 0
#endregion
team modify placeholder_0 suffix ""
team modify placeholder_1 suffix ""
team modify placeholder_2 suffix ""
team modify placeholder_3 suffix ""
team modify placeholder_4 suffix " Build Mart"
team modify placeholder_5 suffix "§8Casual"
team modify placeholder_6 suffix ""
execute if score eventmode tourney_stats matches 1 run function buildmart:scoreboard/macro_gameline with storage master:event_status
team modify placeholder_0 prefix ""
team modify placeholder_1 prefix "§b§l完成建筑数："
team modify placeholder_2 prefix ""
team modify placeholder_3 prefix ""
team modify placeholder_4 prefix [{"text": "地图:","color": "aqua"}]
team modify placeholder_5 prefix ""
team modify placeholder_6 prefix ""

scoreboard players reset §3 bm_sb
scoreboard players reset §3 bm_sb_red
scoreboard players reset §3 bm_sb_blue
scoreboard players reset §3 bm_sb_green
scoreboard players reset §3 bm_sb_yellow
scoreboard players reset §3 bm_sb_cyan
scoreboard players reset §3 bm_sb_orange
scoreboard players reset §3 bm_sb_pink
scoreboard players reset §3 bm_sb_purple

scoreboard players set : bm_sb 13
scoreboard players set : bm_sb_red 13
scoreboard players set : bm_sb_blue 13
scoreboard players set : bm_sb_green 13
scoreboard players set : bm_sb_yellow 13
scoreboard players set : bm_sb_cyan 13
scoreboard players set : bm_sb_orange 13
scoreboard players set : bm_sb_pink 13
scoreboard players set : bm_sb_purple 13


function master:timer/starting/buildmart
function utils:scoreboardrank/init
function buildmart:scoreboard/refresh
