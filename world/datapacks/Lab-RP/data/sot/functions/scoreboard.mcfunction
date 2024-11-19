
scoreboard objectives remove Sotsb_red
scoreboard objectives remove Sotsb_blue
scoreboard objectives remove Sotsb_green
scoreboard objectives remove Sotsb_yellow
scoreboard objectives remove Sotsb_cyan
scoreboard objectives remove Sotsb_pink
scoreboard objectives remove Sotsb_orange
scoreboard objectives remove Sotsb_purple
scoreboard objectives remove Sotsb_global

scoreboard objectives add Sotsb_red dummy ["",{"text": "Sands of Time","bold": true,"color": "yellow"}]
scoreboard objectives add Sotsb_blue dummy ["",{"text": "Sands of Time","bold": true,"color": "yellow"}]
scoreboard objectives add Sotsb_green dummy ["",{"text": "Sands of Time","bold": true,"color": "yellow"}]
scoreboard objectives add Sotsb_yellow dummy ["",{"text": "Sands of Time","bold": true,"color": "yellow"}]
scoreboard objectives add Sotsb_cyan dummy ["",{"text": "Sands of Time","bold": true,"color": "yellow"}]
scoreboard objectives add Sotsb_pink dummy ["",{"text": "Sands of Time","bold": true,"color": "yellow"}]
scoreboard objectives add Sotsb_orange dummy ["",{"text": "Sands of Time","bold": true,"color": "yellow"}]
scoreboard objectives add Sotsb_purple dummy ["",{"text": "Sands of Time","bold": true,"color": "yellow"}]
scoreboard objectives add Sotsb_global dummy ["",{"text": "Sands of Time","bold": true,"color": "yellow"}]
#Scoreboard
scoreboard objectives setdisplay sidebar.team.red Sotsb_red
scoreboard objectives setdisplay sidebar.team.blue Sotsb_blue
scoreboard objectives setdisplay sidebar.team.green Sotsb_green
scoreboard objectives setdisplay sidebar.team.yellow Sotsb_yellow
scoreboard objectives setdisplay sidebar.team.dark_aqua Sotsb_cyan
scoreboard objectives setdisplay sidebar.team.light_purple Sotsb_pink
scoreboard objectives setdisplay sidebar.team.gold Sotsb_orange
scoreboard objectives setdisplay sidebar.team.dark_purple Sotsb_purple
scoreboard objectives setdisplay sidebar Sotsb_global

scoreboard objectives modify Sotsb_global numberformat fixed " "
scoreboard objectives modify Sotsb_red numberformat fixed " "
scoreboard objectives modify Sotsb_blue numberformat fixed " "
scoreboard objectives modify Sotsb_green numberformat fixed " "
scoreboard objectives modify Sotsb_yellow numberformat fixed " "
scoreboard objectives modify Sotsb_cyan numberformat fixed " "
scoreboard objectives modify Sotsb_pink numberformat fixed " "
scoreboard objectives modify Sotsb_orange numberformat fixed " "
scoreboard objectives modify Sotsb_purple numberformat fixed " "

#Scoreboard Listing
#region General

team modify placeholder_0 prefix ""
team modify placeholder_1 prefix ""
team modify placeholder_2 prefix ""
team modify placeholder_3 prefix ""
team modify placeholder_4 prefix ""
team modify placeholder_5 prefix ""
team modify placeholder_6 prefix ""
team modify placeholder_7 prefix ""
team modify placeholder_8 prefix ""
team modify placeholder_9 prefix ""
team modify placeholder_11 prefix ""

team modify placeholder_0 suffix ""
team modify placeholder_1 suffix ""
team modify placeholder_2 suffix ""
team modify placeholder_3 suffix ""
team modify placeholder_4 suffix ""
team modify placeholder_5 suffix [{"text":"地图: ","color":"aqua"},{"text":"Sands of Time","color":"white"}]
team modify placeholder_6 suffix "§8Casual"
execute if score eventmode tourney_stats matches 1 run function sot:scoreboard/macro_gameline with storage master:event_status

team modify placeholder_7 suffix ""
team modify placeholder_8 suffix ""
team modify placeholder_9 suffix ""
team modify placeholder_11 suffix ""


#endregion
# region global
scoreboard players set §6 Sotsb_global 6
scoreboard players set §5 Sotsb_global 5
scoreboard players set : Sotsb_global 4
scoreboard players set §3 Sotsb_global 3

#region red
team modify placeholder_r0 suffix ""
team modify placeholder_r1 suffix "0"
team modify placeholder_r2 suffix "0"
team modify placeholder_r3 suffix ""

team modify placeholder_r1 prefix [{"text":"已存金币: ","color":"green","bold":true}]
team modify placeholder_r2 prefix [{"text":"团队金币: ","color":"gold","bold":true}]

team join placeholder_r1 §r§1
team join placeholder_r2 §r§2
team join placeholder_b1 §b§1
team join placeholder_b2 §b§2
team join placeholder_g1 §g§1
team join placeholder_g2 §g§2
scoreboard players set §0 Sotsb_red 0
scoreboard players set §r§1 Sotsb_red 1
scoreboard players set §r§2 Sotsb_red 2
scoreboard players set §3 Sotsb_red 3
scoreboard players set : Sotsb_red 4
scoreboard players set §5 Sotsb_red 5
scoreboard players set §6 Sotsb_red 6
scoreboard players reset §4 Sotsb_red
#BLUE
scoreboard players set §0 Sotsb_blue 0
scoreboard players set §b§1 Sotsb_blue 1
scoreboard players set §b§2 Sotsb_blue 2
scoreboard players set §3 Sotsb_blue 3
scoreboard players set : Sotsb_blue 4
scoreboard players set §5 Sotsb_blue 5
scoreboard players set §6 Sotsb_blue 6
scoreboard players reset §4 Sotsb_blue

team modify placeholder_b0 suffix ""
team modify placeholder_b1 suffix "0"
team modify placeholder_b2 suffix "0"
team modify placeholder_b3 suffix ""

team modify placeholder_b1 prefix [{"text":"已存金币: ","color":"green","bold":true}]
team modify placeholder_b2 prefix [{"text":"团队金币: ","color":"gold","bold":true}]

team join placeholder_b1 §b§1
team join placeholder_b2 §b§2
#endregion
#GREEN
scoreboard players set §0 Sotsb_green 0
scoreboard players set §g§1 Sotsb_green 1
scoreboard players set §g§2 Sotsb_green 2
scoreboard players set §3 Sotsb_green 3
scoreboard players set : Sotsb_green 4
scoreboard players set §5 Sotsb_green 5
scoreboard players set §6 Sotsb_green 6
scoreboard players reset §4 Sotsb_green

team modify placeholder_g0 suffix ""
team modify placeholder_g1 suffix "0"
team modify placeholder_g2 suffix "0"
team modify placeholder_g3 suffix ""

team modify placeholder_g1 prefix [{"text":"已存金币: ","color":"green","bold":true}]
team modify placeholder_g2 prefix [{"text":"团队金币: ","color":"gold","bold":true}]

team join placeholder_g1 §g§1
team join placeholder_g2 §g§2
#endregion

#YELLOW
scoreboard players set §0 Sotsb_yellow 0
scoreboard players set §y§1 Sotsb_yellow 1
scoreboard players set §y§2 Sotsb_yellow 2
scoreboard players set §3 Sotsb_yellow 3
scoreboard players set : Sotsb_yellow 4
scoreboard players set §5 Sotsb_yellow 5
scoreboard players set §6 Sotsb_yellow 6
scoreboard players reset §4 Sotsb_yellow

team modify placeholder_y0 suffix ""
team modify placeholder_y1 suffix "0"
team modify placeholder_y2 suffix "0"
team modify placeholder_y3 suffix ""

team modify placeholder_y1 prefix [{"text":"已存金币: ","color":"green","bold":true}]
team modify placeholder_y2 prefix [{"text":"团队金币: ","color":"gold","bold":true}]

team join placeholder_y1 §y§1
team join placeholder_y2 §y§2

#CYAN
scoreboard players set §0 Sotsb_cyan 0
scoreboard players set §c§1 Sotsb_cyan 1
scoreboard players set §c§2 Sotsb_cyan 2
scoreboard players set §3 Sotsb_cyan 3
scoreboard players set : Sotsb_cyan 4
scoreboard players set §5 Sotsb_cyan 5
scoreboard players set §6 Sotsb_cyan 6
scoreboard players reset §4 Sotsb_cyan

team modify placeholder_cy0 suffix ""
team modify placeholder_cy1 suffix "0"
team modify placeholder_cy2 suffix "0"
team modify placeholder_cy3 suffix ""

team modify placeholder_cy1 prefix [{"text":"已存金币: ","color":"green","bold":true}]
team modify placeholder_cy2 prefix [{"text":"团队金币: ","color":"gold","bold":true}]

team join placeholder_cy1 §c§1
team join placeholder_cy2 §c§2

#PINK
scoreboard players set §0 Sotsb_pink 0
scoreboard players set §i§1 Sotsb_pink 1
scoreboard players set §i§2 Sotsb_pink 2
scoreboard players set §3 Sotsb_pink 3
scoreboard players set : Sotsb_pink 4
scoreboard players set §5 Sotsb_pink 5
scoreboard players set §6 Sotsb_pink 6
scoreboard players reset §4 Sotsb_pink

team modify placeholder_pi0 suffix ""
team modify placeholder_pi1 suffix "0"
team modify placeholder_pi2 suffix "0"
team modify placeholder_pi3 suffix ""

team modify placeholder_pi1 prefix [{"text":"已存金币: ","color":"green","bold":true}]
team modify placeholder_pi2 prefix [{"text":"团队金币: ","color":"gold","bold":true}]

team join placeholder_pi0 §i§0
team join placeholder_pi1 §i§1
team join placeholder_pi2 §i§2
team join placeholder_pi3 §i§3

#ORANGE
scoreboard players set §0 Sotsb_orange 0
scoreboard players set §o§1 Sotsb_orange 1
scoreboard players set §o§2 Sotsb_orange 2
scoreboard players set §3 Sotsb_orange 3
scoreboard players set : Sotsb_orange 4
scoreboard players set §5 Sotsb_orange 5
scoreboard players set §6 Sotsb_orange 6
scoreboard players reset §4 Sotsb_orange

team modify placeholder_or0 suffix ""
team modify placeholder_or1 suffix "0"
team modify placeholder_or2 suffix "0"
team modify placeholder_or3 suffix ""

team modify placeholder_or1 prefix [{"text":"已存金币: ","color":"green","bold":true}]
team modify placeholder_or2 prefix [{"text":"团队金币: ","color":"gold","bold":true}]

team join placeholder_or1 §o§1
team join placeholder_or2 §o§2

# PURPLE
scoreboard players set §0 Sotsb_purple 0
scoreboard players set §p§1 Sotsb_purple 1
scoreboard players set §p§2 Sotsb_purple 2
scoreboard players set §3 Sotsb_purple 3
scoreboard players set : Sotsb_purple 4
scoreboard players set §5 Sotsb_purple 5
scoreboard players set §6 Sotsb_purple 6
scoreboard players reset §4 Sotsb_purple

team modify placeholder_pu0 suffix ""
team modify placeholder_pu1 suffix "0"
team modify placeholder_pu2 suffix "0"
team modify placeholder_pu3 suffix ""

team modify placeholder_pu1 prefix [{"text":"已存金币: ","color":"green","bold":true}]
team modify placeholder_pu2 prefix [{"text":"团队金币: ","color":"gold","bold":true}]

team join placeholder_pu1 §p§1
team join placeholder_pu2 §p§2