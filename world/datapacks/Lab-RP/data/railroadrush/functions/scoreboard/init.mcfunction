
scoreboard objectives remove rrr_sb
scoreboard objectives remove rrr_sb_red
scoreboard objectives remove rrr_sb_blue
scoreboard objectives remove rrr_sb_green
scoreboard objectives remove rrr_sb_yellow
scoreboard objectives remove rrr_sb_cyan
scoreboard objectives remove rrr_sb_pink
scoreboard objectives remove rrr_sb_orange
scoreboard objectives remove rrr_sb_purple

scoreboard objectives add rrr_sb dummy "§e§lRailroad Rush"
scoreboard objectives add rrr_sb_red dummy "§e§lRailroad Rush"
scoreboard objectives add rrr_sb_blue dummy "§e§lRailroad Rush"
scoreboard objectives add rrr_sb_green dummy "§e§lRailroad Rush"
scoreboard objectives add rrr_sb_yellow dummy "§e§lRailroad Rush"
scoreboard objectives add rrr_sb_cyan dummy "§e§lRailroad Rush"
scoreboard objectives add rrr_sb_pink dummy "§e§lRailroad Rush"
scoreboard objectives add rrr_sb_orange dummy "§e§lRailroad Rush"
scoreboard objectives add rrr_sb_purple dummy "§e§lRailroad Rush"

scoreboard objectives modify rrr_sb displayautoupdate true
scoreboard objectives modify rrr_sb_red displayautoupdate true
scoreboard objectives modify rrr_sb_blue displayautoupdate true
scoreboard objectives modify rrr_sb_green displayautoupdate true
scoreboard objectives modify rrr_sb_yellow displayautoupdate true
scoreboard objectives modify rrr_sb_cyan displayautoupdate true
scoreboard objectives modify rrr_sb_pink displayautoupdate true
scoreboard objectives modify rrr_sb_orange displayautoupdate true
scoreboard objectives modify rrr_sb_purple displayautoupdate true

scoreboard objectives modify rrr_sb numberformat fixed " "
scoreboard objectives modify rrr_sb_red numberformat fixed " "
scoreboard objectives modify rrr_sb_blue numberformat fixed " "
scoreboard objectives modify rrr_sb_green numberformat fixed " "
scoreboard objectives modify rrr_sb_yellow numberformat fixed " "
scoreboard objectives modify rrr_sb_cyan numberformat fixed " "
scoreboard objectives modify rrr_sb_pink numberformat fixed " "
scoreboard objectives modify rrr_sb_orange numberformat fixed " "
scoreboard objectives modify rrr_sb_purple numberformat fixed " "

scoreboard objectives setdisplay sidebar rrr_sb
scoreboard objectives setdisplay sidebar.team.red rrr_sb_red
scoreboard objectives setdisplay sidebar.team.blue rrr_sb_blue
scoreboard objectives setdisplay sidebar.team.green rrr_sb_green
scoreboard objectives setdisplay sidebar.team.yellow rrr_sb_yellow
scoreboard objectives setdisplay sidebar.team.dark_aqua rrr_sb_cyan
scoreboard objectives setdisplay sidebar.team.light_purple rrr_sb_pink
scoreboard objectives setdisplay sidebar.team.gold rrr_sb_orange
scoreboard objectives setdisplay sidebar.team.dark_purple rrr_sb_purple
# 行设计
# Game ?/8 or Casual
# Map: ..
# Time Left: ..
# 空
# 以下只显示给旁观
# Team Placement: （最长距离、该段GOLDRUSH的成绩、最终MINECART RACE的成绩、GAME COINS）

scoreboard players reset scb_factor rrr_sb

scoreboard players set §9 rrr_sb 15
scoreboard players set §8 rrr_sb 14
scoreboard players set : rrr_sb 13
scoreboard players set §7 rrr_sb 12
#scoreboard players set §6 rrr_sb 11

scoreboard players set §9 rrr_sb_red 15
scoreboard players set §8 rrr_sb_red 14
scoreboard players set : rrr_sb_red 13
scoreboard players set §7 rrr_sb_red 12

scoreboard players set §9 rrr_sb_blue 15
scoreboard players set §8 rrr_sb_blue 14
scoreboard players set : rrr_sb_blue 13
scoreboard players set §7 rrr_sb_blue 12

scoreboard players set §9 rrr_sb_green 15
scoreboard players set §8 rrr_sb_green 14
scoreboard players set : rrr_sb_green 13
scoreboard players set §7 rrr_sb_green 12

scoreboard players set §9 rrr_sb_yellow 15
scoreboard players set §8 rrr_sb_yellow 14
scoreboard players set : rrr_sb_yellow 13
scoreboard players set §7 rrr_sb_yellow 12

scoreboard players set §9 rrr_sb_cyan 15
scoreboard players set §8 rrr_sb_cyan 14
scoreboard players set : rrr_sb_cyan 13
scoreboard players set §7 rrr_sb_cyan 12

scoreboard players set §9 rrr_sb_pink 15
scoreboard players set §8 rrr_sb_pink 14
scoreboard players set : rrr_sb_pink 13
scoreboard players set §7 rrr_sb_pink 12

scoreboard players set §9 rrr_sb_orange 15
scoreboard players set §8 rrr_sb_orange 14
scoreboard players set : rrr_sb_orange 13
scoreboard players set §7 rrr_sb_orange 12

scoreboard players set §9 rrr_sb_purple 15
scoreboard players set §8 rrr_sb_purple 14
scoreboard players set : rrr_sb_purple 13
scoreboard players set §7 rrr_sb_purple 12

team modify placeholder_9 prefix ""

team modify placeholder_9 suffix "§8Casual"
execute if score eventmode tourney_stats matches 1 run function railroadrush:scoreboard/macro_gameline with storage master:event_status


team modify placeholder_9 prefix ""

team modify placeholder_8 prefix "§b地图: "
team modify placeholder_8 suffix "Haunted"

function master:timer/starting/railroadrush

team modify placeholder_7 prefix ""
team modify placeholder_7 suffix ""

team modify placeholder_6 prefix "§b§l各队最长铁路距离："
team modify placeholder_6 suffix ""
