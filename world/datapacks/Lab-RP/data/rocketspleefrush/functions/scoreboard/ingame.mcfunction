
scoreboard objectives remove rsr_sb_blue
scoreboard objectives remove rsr_sb_red
scoreboard objectives remove rsr_sb_yellow
scoreboard objectives remove rsr_sb_green
scoreboard objectives remove rsr_sb_cyan
scoreboard objectives remove rsr_sb_orange
scoreboard objectives remove rsr_sb_pink
scoreboard objectives remove rsr_sb_purple

scoreboard objectives add rsr_sb_red dummy [{"text": "Rocket Spleef Rush","color": "yellow","bold": true}]
scoreboard objectives add rsr_sb_blue dummy [{"text": "Rocket Spleef Rush","color": "yellow","bold": true}]
scoreboard objectives add rsr_sb_green dummy [{"text": "Rocket Spleef Rush","color": "yellow","bold": true}]
scoreboard objectives add rsr_sb_yellow dummy [{"text": "Rocket Spleef Rush","color": "yellow","bold": true}]
scoreboard objectives add rsr_sb_cyan dummy [{"text": "Rocket Spleef Rush","color": "yellow","bold": true}]
scoreboard objectives add rsr_sb_pink dummy [{"text": "Rocket Spleef Rush","color": "yellow","bold": true}]
scoreboard objectives add rsr_sb_orange dummy [{"text": "Rocket Spleef Rush","color": "yellow","bold": true}]
scoreboard objectives add rsr_sb_purple dummy [{"text": "Rocket Spleef Rush","color": "yellow","bold": true}]

scoreboard objectives modify rsr_sb_red numberformat fixed " "
scoreboard objectives modify rsr_sb_blue numberformat fixed " "
scoreboard objectives modify rsr_sb_green numberformat fixed " "
scoreboard objectives modify rsr_sb_yellow numberformat fixed " "
scoreboard objectives modify rsr_sb_cyan numberformat fixed " "
scoreboard objectives modify rsr_sb_pink numberformat fixed " "
scoreboard objectives modify rsr_sb_orange numberformat fixed " "
scoreboard objectives modify rsr_sb_purple numberformat fixed " "

scoreboard objectives setdisplay sidebar rsr_sb
scoreboard objectives setdisplay sidebar.team.red rsr_sb_red
scoreboard objectives setdisplay sidebar.team.blue rsr_sb_blue
scoreboard objectives setdisplay sidebar.team.green rsr_sb_green
scoreboard objectives setdisplay sidebar.team.yellow rsr_sb_yellow
scoreboard objectives setdisplay sidebar.team.dark_aqua rsr_sb_cyan
scoreboard objectives setdisplay sidebar.team.gold rsr_sb_orange
scoreboard objectives setdisplay sidebar.team.light_purple rsr_sb_pink
scoreboard objectives setdisplay sidebar.team.dark_purple rsr_sb_purple
#endregion

#region Texts
# Player
execute if score TotalPlayers rsr_game matches 1 run team modify placeholder_0 suffix "/1"
execute if score TotalPlayers rsr_game matches 2 run team modify placeholder_0 suffix "/2"
execute if score TotalPlayers rsr_game matches 3 run team modify placeholder_0 suffix "/3"
execute if score TotalPlayers rsr_game matches 4 run team modify placeholder_0 suffix "/4"
execute if score TotalPlayers rsr_game matches 5 run team modify placeholder_0 suffix "/5"
execute if score TotalPlayers rsr_game matches 6 run team modify placeholder_0 suffix "/6"
execute if score TotalPlayers rsr_game matches 7 run team modify placeholder_0 suffix "/7"
execute if score TotalPlayers rsr_game matches 8 run team modify placeholder_0 suffix "/8"
execute if score TotalPlayers rsr_game matches 9 run team modify placeholder_0 suffix "/9"
execute if score TotalPlayers rsr_game matches 10 run team modify placeholder_0 suffix "/10"
execute if score TotalPlayers rsr_game matches 11 run team modify placeholder_0 suffix "/11"
execute if score TotalPlayers rsr_game matches 12 run team modify placeholder_0 suffix "/12"
execute if score TotalPlayers rsr_game matches 13 run team modify placeholder_0 suffix "/13"
execute if score TotalPlayers rsr_game matches 14 run team modify placeholder_0 suffix "/14"
execute if score TotalPlayers rsr_game matches 15 run team modify placeholder_0 suffix "/15"
execute if score TotalPlayers rsr_game matches 16 run team modify placeholder_0 suffix "/16"
execute if score TotalPlayers rsr_game matches 17 run team modify placeholder_0 suffix "/17"
execute if score TotalPlayers rsr_game matches 18 run team modify placeholder_0 suffix "/18"
execute if score TotalPlayers rsr_game matches 19 run team modify placeholder_0 suffix "/19"
execute if score TotalPlayers rsr_game matches 20 run team modify placeholder_0 suffix "/20"
execute if score TotalPlayers rsr_game matches 21 run team modify placeholder_0 suffix "/21"
execute if score TotalPlayers rsr_game matches 22 run team modify placeholder_0 suffix "/22"
execute if score TotalPlayers rsr_game matches 23 run team modify placeholder_0 suffix "/23"
execute if score TotalPlayers rsr_game matches 24 run team modify placeholder_0 suffix "/24"
execute if score TotalPlayers rsr_game matches 25 run team modify placeholder_0 suffix "/25"
execute if score TotalPlayers rsr_game matches 26 run team modify placeholder_0 suffix "/26"
execute if score TotalPlayers rsr_game matches 27 run team modify placeholder_0 suffix "/27"
execute if score TotalPlayers rsr_game matches 28 run team modify placeholder_0 suffix "/28"
execute if score TotalPlayers rsr_game matches 29 run team modify placeholder_0 suffix "/29"
execute if score TotalPlayers rsr_game matches 30 run team modify placeholder_0 suffix "/30"
execute if score TotalPlayers rsr_game matches 31 run team modify placeholder_0 suffix "/31"
execute if score TotalPlayers rsr_game matches 32 run team modify placeholder_0 suffix "/32"

# other suffixes
team modify placeholder_1 suffix ""
team modify placeholder_2 suffix ""

execute if score round rsr_game matches 1 run team modify placeholder_3 suffix "1/3"
execute if score round rsr_game matches 2 run team modify placeholder_3 suffix "2/3"
execute if score round rsr_game matches 3 run team modify placeholder_3 suffix "3/3"

execute if score map rsr_game matches 1 run team modify placeholder_4 suffix "Classic"
execute if score map rsr_game matches 2 run team modify placeholder_4 suffix "Park"
execute if score map rsr_game matches 3 run team modify placeholder_4 suffix "Palace"
execute if score map rsr_game matches 4 run team modify placeholder_4 suffix "Journey"
execute if score map rsr_game matches 5 run team modify placeholder_4 suffix "Temple"
execute if score map rsr_game matches 6 run team modify placeholder_4 suffix "Checkmate"
execute if score map rsr_game matches 7 run team modify placeholder_4 suffix "Airventure"
execute if score map rsr_game matches 8 run team modify placeholder_4 suffix "Classic"

team modify placeholder_5 suffix "§8Casual"
execute if score eventmode tourney_stats matches 1 run function rocketspleefrush:scoreboard/macro_gameline with storage master:event_status


team modify placeholder_6 suffix " "
team modify placeholder_7 suffix " "
team modify placeholder_8 suffix " "
team modify placeholder_9 suffix " "

# prefixes
team modify placeholder_0 prefix ""
team modify placeholder_1 prefix ""
team modify placeholder_2 prefix "§b§l本游戏积分:"
team modify placeholder_3 prefix [{"text": "回合: ","color":"green"}]
team modify placeholder_4 prefix [{"text": "地图: ","color": "aqua"}]
team modify placeholder_5 prefix ""
team modify placeholder_6 prefix " "
team modify placeholder_7 prefix " "
team modify placeholder_8 prefix " "
team modify placeholder_9 prefix " "
#endregion

scoreboard players set §0 rsr_sb -1
scoreboard players set §1 rsr_sb 0
function master:timer/timeleft/4min
scoreboard players set §2 rsr_sb 11
scoreboard players set §6 rsr_sb 12
scoreboard players set : rsr_sb 13
scoreboard players set §3 rsr_sb 14
scoreboard players set §4 rsr_sb 15
scoreboard players set §5 rsr_sb 16

scoreboard players set §0 rsr_sb_red -1
scoreboard players set §1 rsr_sb_red 0
scoreboard players set §2 rsr_sb_red 11
scoreboard players set §6 rsr_sb_red 12
scoreboard players set : rsr_sb_red 13
scoreboard players set §3 rsr_sb_red 14
scoreboard players set §4 rsr_sb_red 15
scoreboard players set §5 rsr_sb_red 16

scoreboard players set §0 rsr_sb_blue -1
scoreboard players set §1 rsr_sb_blue 0
scoreboard players set §2 rsr_sb_blue 11
scoreboard players set §6 rsr_sb_blue 12
scoreboard players set : rsr_sb_blue 13
scoreboard players set §3 rsr_sb_blue 14
scoreboard players set §4 rsr_sb_blue 15
scoreboard players set §5 rsr_sb_blue 16

scoreboard players set §0 rsr_sb_green -1
scoreboard players set §1 rsr_sb_green 0
scoreboard players set §2 rsr_sb_green 11
scoreboard players set §6 rsr_sb_green 12
scoreboard players set : rsr_sb_green 13
scoreboard players set §3 rsr_sb_green 14
scoreboard players set §4 rsr_sb_green 15
scoreboard players set §5 rsr_sb_green 16

scoreboard players set §0 rsr_sb_yellow -1
scoreboard players set §1 rsr_sb_yellow 0
scoreboard players set §2 rsr_sb_yellow 11
scoreboard players set §6 rsr_sb_yellow 12
scoreboard players set : rsr_sb_yellow 13
scoreboard players set §3 rsr_sb_yellow 14
scoreboard players set §4 rsr_sb_yellow 15
scoreboard players set §5 rsr_sb_yellow 16

scoreboard players set §0 rsr_sb_cyan -1
scoreboard players set §1 rsr_sb_cyan 0
scoreboard players set §2 rsr_sb_cyan 11
scoreboard players set §6 rsr_sb_cyan 12
scoreboard players set : rsr_sb_cyan 13
scoreboard players set §3 rsr_sb_cyan 14
scoreboard players set §4 rsr_sb_cyan 15
scoreboard players set §5 rsr_sb_cyan 16

scoreboard players set §0 rsr_sb_orange -1
scoreboard players set §1 rsr_sb_orange 0
scoreboard players set §2 rsr_sb_orange 11
scoreboard players set §6 rsr_sb_orange 12
scoreboard players set : rsr_sb_orange 13
scoreboard players set §3 rsr_sb_orange 14
scoreboard players set §4 rsr_sb_orange 15
scoreboard players set §5 rsr_sb_orange 16

scoreboard players set §0 rsr_sb_pink -1
scoreboard players set §1 rsr_sb_pink 0
scoreboard players set §2 rsr_sb_pink 11
scoreboard players set §6 rsr_sb_pink 12
scoreboard players set : rsr_sb_pink 13
scoreboard players set §3 rsr_sb_pink 14
scoreboard players set §4 rsr_sb_pink 15
scoreboard players set §5 rsr_sb_pink 16

scoreboard players set §0 rsr_sb_purple -1
scoreboard players set §1 rsr_sb_purple 0
scoreboard players set §2 rsr_sb_purple 11
scoreboard players set §6 rsr_sb_purple 12
scoreboard players set : rsr_sb_purple 13
scoreboard players set §3 rsr_sb_purple 14
scoreboard players set §4 rsr_sb_purple 15
scoreboard players set §5 rsr_sb_purple 16

scoreboard players reset §7 rsr_sb
scoreboard players reset §7 rsr_sb_red
scoreboard players reset §7 rsr_sb_blue
scoreboard players reset §7 rsr_sb_green
scoreboard players reset §7 rsr_sb_yellow
scoreboard players reset §7 rsr_sb_cyan
scoreboard players reset §7 rsr_sb_orange
scoreboard players reset §7 rsr_sb_pink
scoreboard players reset §7 rsr_sb_purple

function rocketspleefrush:scoreboard/players
function utils:scoreboardrank/init
function rocketspleefrush:scoreboard/refresh