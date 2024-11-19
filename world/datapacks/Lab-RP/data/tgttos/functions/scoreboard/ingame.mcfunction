
scoreboard objectives setdisplay sidebar.team.red tgttos_sb_red
scoreboard objectives setdisplay sidebar.team.blue tgttos_sb_blue
scoreboard objectives setdisplay sidebar.team.green tgttos_sb_green
scoreboard objectives setdisplay sidebar.team.yellow tgttos_sb_yellow
scoreboard objectives setdisplay sidebar.team.dark_aqua tgttos_sb_cyan
scoreboard objectives setdisplay sidebar.team.gold tgttos_sb_orange
scoreboard objectives setdisplay sidebar.team.light_purple tgttos_sb_pink
scoreboard objectives setdisplay sidebar.team.dark_purple tgttos_sb_purple

scoreboard players set §0 tgttos_sb -1
scoreboard players set §0 tgttos_sb_red -1
scoreboard players set §0 tgttos_sb_blue -1
scoreboard players set §0 tgttos_sb_green -1
scoreboard players set §0 tgttos_sb_yellow -1
scoreboard players set §0 tgttos_sb_cyan -1
scoreboard players set §0 tgttos_sb_orange -1
scoreboard players set §0 tgttos_sb_pink -1
scoreboard players set §0 tgttos_sb_purple -1

scoreboard players set §1 tgttos_sb 0
scoreboard players set §1 tgttos_sb_red 0
scoreboard players set §1 tgttos_sb_blue 0
scoreboard players set §1 tgttos_sb_green 0
scoreboard players set §1 tgttos_sb_yellow 0
scoreboard players set §1 tgttos_sb_cyan 0
scoreboard players set §1 tgttos_sb_orange 0
scoreboard players set §1 tgttos_sb_pink 0
scoreboard players set §1 tgttos_sb_purple 0

scoreboard players set §2 tgttos_sb 11
scoreboard players set §2 tgttos_sb_red 11
scoreboard players set §2 tgttos_sb_blue 11
scoreboard players set §2 tgttos_sb_green 11
scoreboard players set §2 tgttos_sb_yellow 11
scoreboard players set §2 tgttos_sb_cyan 11
scoreboard players set §2 tgttos_sb_orange 11
scoreboard players set §2 tgttos_sb_pink 11
scoreboard players set §2 tgttos_sb_purple 11


team modify placeholder_2 prefix ""
team modify placeholder_2 suffix "§b§l本游戏积分:"

scoreboard players set §6 tgttos_sb 12
scoreboard players set §6 tgttos_sb_red 12
scoreboard players set §6 tgttos_sb_blue 12
scoreboard players set §6 tgttos_sb_green 12
scoreboard players set §6 tgttos_sb_yellow 12
scoreboard players set §6 tgttos_sb_cyan 12
scoreboard players set §6 tgttos_sb_orange 12
scoreboard players set §6 tgttos_sb_pink 12
scoreboard players set §6 tgttos_sb_purple 12

team modify placeholder_6 suffix ""
team modify placeholder_6 prefix ""

scoreboard players set : tgttos_sb 13
scoreboard players set : tgttos_sb_red 13
scoreboard players set : tgttos_sb_blue 13
scoreboard players set : tgttos_sb_green 13
scoreboard players set : tgttos_sb_yellow 13
scoreboard players set : tgttos_sb_cyan 13
scoreboard players set : tgttos_sb_orange 13
scoreboard players set : tgttos_sb_pink 13
scoreboard players set : tgttos_sb_purple 13

scoreboard players set §3 tgttos_sb 14
scoreboard players set §3 tgttos_sb_red 14
scoreboard players set §3 tgttos_sb_blue 14
scoreboard players set §3 tgttos_sb_green 14
scoreboard players set §3 tgttos_sb_yellow 14
scoreboard players set §3 tgttos_sb_cyan 14
scoreboard players set §3 tgttos_sb_orange 14
scoreboard players set §3 tgttos_sb_pink 14
scoreboard players set §3 tgttos_sb_purple 14

scoreboard players set §4 tgttos_sb 15
scoreboard players set §4 tgttos_sb_red 15
scoreboard players set §4 tgttos_sb_blue 15
scoreboard players set §4 tgttos_sb_green 15
scoreboard players set §4 tgttos_sb_yellow 15
scoreboard players set §4 tgttos_sb_cyan 15
scoreboard players set §4 tgttos_sb_orange 15
scoreboard players set §4 tgttos_sb_pink 15
scoreboard players set §4 tgttos_sb_purple 15

scoreboard players set §5 tgttos_sb 16
scoreboard players set §5 tgttos_sb_red 16
scoreboard players set §5 tgttos_sb_blue 16
scoreboard players set §5 tgttos_sb_green 16
scoreboard players set §5 tgttos_sb_yellow 16
scoreboard players set §5 tgttos_sb_cyan 16
scoreboard players set §5 tgttos_sb_orange 16
scoreboard players set §5 tgttos_sb_pink 16
scoreboard players set §5 tgttos_sb_purple 16

team modify placeholder_0 prefix ["",{"text": "已完成玩家: ","color":"green"},"0"]

scoreboard objectives modify tgttos_sb_red numberformat fixed " "
scoreboard objectives modify tgttos_sb_blue numberformat fixed " "
scoreboard objectives modify tgttos_sb_green numberformat fixed " "
scoreboard objectives modify tgttos_sb_yellow numberformat fixed " "
scoreboard objectives modify tgttos_sb_cyan numberformat fixed " "
scoreboard objectives modify tgttos_sb_orange numberformat fixed " "
scoreboard objectives modify tgttos_sb_pink numberformat fixed " "
scoreboard objectives modify tgttos_sb_purple numberformat fixed " "

# TotalPlayers
execute if score TotalPlayers tgttos_game matches 1 run team modify placeholder_0 suffix "1"
execute if score TotalPlayers tgttos_game matches 2 run team modify placeholder_0 suffix "2"
execute if score TotalPlayers tgttos_game matches 3 run team modify placeholder_0 suffix "3"
execute if score TotalPlayers tgttos_game matches 4 run team modify placeholder_0 suffix "4"
execute if score TotalPlayers tgttos_game matches 5 run team modify placeholder_0 suffix "5"
execute if score TotalPlayers tgttos_game matches 6 run team modify placeholder_0 suffix "6"
execute if score TotalPlayers tgttos_game matches 7 run team modify placeholder_0 suffix "7"
execute if score TotalPlayers tgttos_game matches 8 run team modify placeholder_0 suffix "8"
execute if score TotalPlayers tgttos_game matches 9 run team modify placeholder_0 suffix "9"
execute if score TotalPlayers tgttos_game matches 10 run team modify placeholder_0 suffix "10"
execute if score TotalPlayers tgttos_game matches 11 run team modify placeholder_0 suffix "11"
execute if score TotalPlayers tgttos_game matches 12 run team modify placeholder_0 suffix "12"
execute if score TotalPlayers tgttos_game matches 13 run team modify placeholder_0 suffix "13"
execute if score TotalPlayers tgttos_game matches 14 run team modify placeholder_0 suffix "14"
execute if score TotalPlayers tgttos_game matches 15 run team modify placeholder_0 suffix "15"
execute if score TotalPlayers tgttos_game matches 16 run team modify placeholder_0 suffix "16"
execute if score TotalPlayers tgttos_game matches 17 run team modify placeholder_0 suffix "17"
execute if score TotalPlayers tgttos_game matches 18 run team modify placeholder_0 suffix "18"
execute if score TotalPlayers tgttos_game matches 19 run team modify placeholder_0 suffix "19"
execute if score TotalPlayers tgttos_game matches 20 run team modify placeholder_0 suffix "20"
execute if score TotalPlayers tgttos_game matches 21 run team modify placeholder_0 suffix "21"
execute if score TotalPlayers tgttos_game matches 22 run team modify placeholder_0 suffix "22"
execute if score TotalPlayers tgttos_game matches 23 run team modify placeholder_0 suffix "23"
execute if score TotalPlayers tgttos_game matches 24 run team modify placeholder_0 suffix "24"
execute if score TotalPlayers tgttos_game matches 25 run team modify placeholder_0 suffix "25"
execute if score TotalPlayers tgttos_game matches 26 run team modify placeholder_0 suffix "26"
execute if score TotalPlayers tgttos_game matches 27 run team modify placeholder_0 suffix "27"
execute if score TotalPlayers tgttos_game matches 28 run team modify placeholder_0 suffix "28"
execute if score TotalPlayers tgttos_game matches 29 run team modify placeholder_0 suffix "29"
execute if score TotalPlayers tgttos_game matches 30 run team modify placeholder_0 suffix "30"
execute if score TotalPlayers tgttos_game matches 31 run team modify placeholder_0 suffix "31"
execute if score TotalPlayers tgttos_game matches 32 run team modify placeholder_0 suffix "32"

# 1
function tgttos:scoreboard/players
function utils:scoreboardrank/init
function tgttos:scoreboard/refresh