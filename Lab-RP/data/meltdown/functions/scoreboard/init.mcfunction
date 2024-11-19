
scoreboard objectives add meltdown_sb dummy "§e§lMeltdown"
scoreboard objectives add meltdown_sb_red dummy "§e§lMeltdown"
scoreboard objectives add meltdown_sb_blue dummy "§e§lMeltdown"
scoreboard objectives add meltdown_sb_green dummy "§e§lMeltdown"
scoreboard objectives add meltdown_sb_yellow dummy "§e§lMeltdown"
scoreboard objectives add meltdown_sb_cyan dummy "§e§lMeltdown"
scoreboard objectives add meltdown_sb_pink dummy "§e§lMeltdown"
scoreboard objectives add meltdown_sb_orange dummy "§e§lMeltdown"
scoreboard objectives add meltdown_sb_purple dummy "§e§lMeltdown"

scoreboard objectives modify meltdown_sb displayautoupdate true
scoreboard objectives modify meltdown_sb_red displayautoupdate true
scoreboard objectives modify meltdown_sb_blue displayautoupdate true
scoreboard objectives modify meltdown_sb_green displayautoupdate true
scoreboard objectives modify meltdown_sb_yellow displayautoupdate true
scoreboard objectives modify meltdown_sb_cyan displayautoupdate true
scoreboard objectives modify meltdown_sb_pink displayautoupdate true
scoreboard objectives modify meltdown_sb_orange displayautoupdate true
scoreboard objectives modify meltdown_sb_purple displayautoupdate true

scoreboard objectives modify meltdown_sb numberformat fixed " "
scoreboard objectives modify meltdown_sb_red numberformat fixed " "
scoreboard objectives modify meltdown_sb_blue numberformat fixed " "
scoreboard objectives modify meltdown_sb_green numberformat fixed " "
scoreboard objectives modify meltdown_sb_yellow numberformat fixed " "
scoreboard objectives modify meltdown_sb_cyan numberformat fixed " "
scoreboard objectives modify meltdown_sb_pink numberformat fixed " "
scoreboard objectives modify meltdown_sb_orange numberformat fixed " "
scoreboard objectives modify meltdown_sb_purple numberformat fixed " "

scoreboard objectives setdisplay sidebar meltdown_sb
scoreboard objectives setdisplay sidebar.team.red meltdown_sb_red
scoreboard objectives setdisplay sidebar.team.blue meltdown_sb_blue
scoreboard objectives setdisplay sidebar.team.green meltdown_sb_green
scoreboard objectives setdisplay sidebar.team.yellow meltdown_sb_yellow
scoreboard objectives setdisplay sidebar.team.dark_aqua meltdown_sb_cyan
scoreboard objectives setdisplay sidebar.team.light_purple meltdown_sb_pink
scoreboard objectives setdisplay sidebar.team.gold meltdown_sb_orange
scoreboard objectives setdisplay sidebar.team.dark_purple meltdown_sb_purple

scoreboard players set §9 meltdown_sb 15
scoreboard players set §8 meltdown_sb 14
scoreboard players set : meltdown_sb 13
scoreboard players set §7 meltdown_sb 12
#scoreboard players set §6 meltdown_sb 11


scoreboard players set §9 meltdown_sb_red 15
scoreboard players set §8 meltdown_sb_red 14
scoreboard players set : meltdown_sb_red 13
scoreboard players set §7 meltdown_sb_red 12
#scoreboard players set §6 meltdown_sb_red 11

scoreboard players set §9 meltdown_sb_blue 15
scoreboard players set §8 meltdown_sb_blue 14
scoreboard players set : meltdown_sb_blue 13
scoreboard players set §7 meltdown_sb_blue 12
#scoreboard players set §6 meltdown_sb_blue 11

scoreboard players set §9 meltdown_sb_green 15
scoreboard players set §8 meltdown_sb_green 14
scoreboard players set : meltdown_sb_green 13
scoreboard players set §7 meltdown_sb_green 12
#scoreboard players set §6 meltdown_sb_green 11

scoreboard players set §9 meltdown_sb_yellow 15
scoreboard players set §8 meltdown_sb_yellow 14
scoreboard players set : meltdown_sb_yellow 13
scoreboard players set §7 meltdown_sb_yellow 12
#scoreboard players set §6 meltdown_sb_yellow 11

scoreboard players set §9 meltdown_sb_cyan 15
scoreboard players set §8 meltdown_sb_cyan 14
scoreboard players set : meltdown_sb_cyan 13
scoreboard players set §7 meltdown_sb_cyan 12
#scoreboard players set §6 meltdown_sb_cyan 11

scoreboard players set §9 meltdown_sb_pink 15
scoreboard players set §8 meltdown_sb_pink 14
scoreboard players set : meltdown_sb_pink 13
scoreboard players set §7 meltdown_sb_pink 12
#scoreboard players set §6 meltdown_sb_pink 11

scoreboard players set §9 meltdown_sb_orange 15
scoreboard players set §8 meltdown_sb_orange 14
scoreboard players set : meltdown_sb_orange 13
scoreboard players set §7 meltdown_sb_orange 12
#scoreboard players set §6 meltdown_sb_orange 11

scoreboard players set §9 meltdown_sb_purple 15
scoreboard players set §8 meltdown_sb_purple 14
scoreboard players set : meltdown_sb_purple 13
scoreboard players set §7 meltdown_sb_purple 12
#scoreboard players set §6 meltdown_sb_purple 11


function master:timer/starting/meltdown

team modify placeholder_9 suffix "§8Casual"
execute if score eventmode tourney_stats matches 1 run function meltdown:scoreboard/macro_gameline with storage master:event_status


team modify placeholder_9 prefix ""

team modify placeholder_8 prefix "§a回合: "
team modify placeholder_8 suffix "1/3"

team modify placeholder_7 prefix ""
team modify placeholder_7 suffix ""

team modify placeholder_6 prefix "§b§l本游戏积分："
team modify placeholder_6 suffix ""

team modify placeholder_5 prefix ""
team modify placeholder_5 suffix "§a§l剩余: §r/ 懆 / 愺"

team modify placeholder_4 prefix ""
team modify placeholder_4 suffix ""