scoreboard objectives remove sba_sb_red
scoreboard objectives remove sba_sb_blue
scoreboard objectives remove sba_sb_green
scoreboard objectives remove sba_sb_yellow
scoreboard objectives remove sba_sb_cyan
scoreboard objectives remove sba_sb_orange
scoreboard objectives remove sba_sb_pink
scoreboard objectives remove sba_sb_purple

scoreboard objectives add sba_sb_red dummy ["",{"text": "Sky Battle","color": "yellow","bold": true}]
scoreboard objectives add sba_sb_blue dummy ["",{"text": "Sky Battle","color": "yellow","bold": true}]
scoreboard objectives add sba_sb_green dummy ["",{"text": "Sky Battle","color": "yellow","bold": true}]
scoreboard objectives add sba_sb_yellow dummy ["",{"text": "Sky Battle","color": "yellow","bold": true}]
scoreboard objectives add sba_sb_cyan dummy ["",{"text": "Sky Battle","color": "yellow","bold": true}]
scoreboard objectives add sba_sb_orange dummy ["",{"text": "Sky Battle","color": "yellow","bold": true}]
scoreboard objectives add sba_sb_pink dummy ["",{"text": "Sky Battle","color": "yellow","bold": true}]
scoreboard objectives add sba_sb_purple dummy ["",{"text": "Sky Battle","color": "yellow","bold": true}]

scoreboard objectives setdisplay sidebar.team.red sba_sb_red
scoreboard objectives setdisplay sidebar.team.blue sba_sb_blue
scoreboard objectives setdisplay sidebar.team.green sba_sb_green
scoreboard objectives setdisplay sidebar.team.yellow sba_sb_yellow
scoreboard objectives setdisplay sidebar.team.dark_aqua sba_sb_cyan
scoreboard objectives setdisplay sidebar.team.gold sba_sb_orange
scoreboard objectives setdisplay sidebar.team.light_purple sba_sb_pink
scoreboard objectives setdisplay sidebar.team.dark_purple sba_sb_purple

scoreboard objectives modify sba_sb numberformat fixed " "
scoreboard objectives modify sba_sb_red numberformat fixed " "
scoreboard objectives modify sba_sb_blue numberformat fixed " "
scoreboard objectives modify sba_sb_green numberformat fixed " "
scoreboard objectives modify sba_sb_yellow numberformat fixed " "
scoreboard objectives modify sba_sb_cyan numberformat fixed " "
scoreboard objectives modify sba_sb_orange numberformat fixed " "
scoreboard objectives modify sba_sb_pink numberformat fixed " "
scoreboard objectives modify sba_sb_purple numberformat fixed " "

scoreboard players set §1 sba_sb -1
scoreboard players set §2 sba_sb -2
scoreboard players set §1 sba_sb_red -1
scoreboard players set §2 sba_sb_red -2
scoreboard players set §1 sba_sb_blue -1
scoreboard players set §2 sba_sb_blue -2
scoreboard players set §1 sba_sb_green -1
scoreboard players set §2 sba_sb_green -2
scoreboard players set §1 sba_sb_yellow -1
scoreboard players set §2 sba_sb_yellow -2
scoreboard players set §1 sba_sb_cyan -1
scoreboard players set §2 sba_sb_cyan -2
scoreboard players set §1 sba_sb_orange -1
scoreboard players set §2 sba_sb_orange -2
scoreboard players set §1 sba_sb_pink -1
scoreboard players set §2 sba_sb_pink -2
scoreboard players set §1 sba_sb_purple -1
scoreboard players set §2 sba_sb_purple -2

scoreboard players set §0 sba_sb 0
scoreboard players set §0 sba_sb_red 0
scoreboard players set §0 sba_sb_blue 0
scoreboard players set §0 sba_sb_green 0
scoreboard players set §0 sba_sb_yellow 0
scoreboard players set §0 sba_sb_cyan 0
scoreboard players set §0 sba_sb_orange 0
scoreboard players set §0 sba_sb_pink 0
scoreboard players set §0 sba_sb_purple 0

team modify placeholder_0 suffix ""
team modify placeholder_0 prefix ""

scoreboard players set §3 sba_sb 11
scoreboard players set §3 sba_sb_red 11
scoreboard players set §3 sba_sb_blue 11
scoreboard players set §3 sba_sb_green 11
scoreboard players set §3 sba_sb_yellow 11
scoreboard players set §3 sba_sb_cyan 11
scoreboard players set §3 sba_sb_orange 11
scoreboard players set §3 sba_sb_pink 11
scoreboard players set §3 sba_sb_purple 11

team modify placeholder_3 suffix "§b§l本游戏积分:"
team modify placeholder_3 prefix ""

scoreboard players set §4 sba_sb 12
scoreboard players set §4 sba_sb_red 12
scoreboard players set §4 sba_sb_blue 12
scoreboard players set §4 sba_sb_green 12
scoreboard players set §4 sba_sb_yellow 12
scoreboard players set §4 sba_sb_cyan 12
scoreboard players set §4 sba_sb_orange 12
scoreboard players set §4 sba_sb_pink 12
scoreboard players set §4 sba_sb_purple 12

team modify placeholder_4 suffix ""
team modify placeholder_4 prefix ""

scoreboard players set : sba_sb 13
scoreboard players set : sba_sb_red 13
scoreboard players set : sba_sb_blue 13
scoreboard players set : sba_sb_green 13
scoreboard players set : sba_sb_yellow 13
scoreboard players set : sba_sb_cyan 13
scoreboard players set : sba_sb_orange 13
scoreboard players set : sba_sb_pink 13
scoreboard players set : sba_sb_purple 13

scoreboard players set §5 sba_sb 14
scoreboard players set §5 sba_sb_red 14
scoreboard players set §5 sba_sb_blue 14
scoreboard players set §5 sba_sb_green 14
scoreboard players set §5 sba_sb_yellow 14
scoreboard players set §5 sba_sb_cyan 14
scoreboard players set §5 sba_sb_orange 14
scoreboard players set §5 sba_sb_pink 14
scoreboard players set §5 sba_sb_purple 14

scoreboard players set §6 sba_sb 15
scoreboard players set §6 sba_sb_red 15
scoreboard players set §6 sba_sb_blue 15
scoreboard players set §6 sba_sb_green 15
scoreboard players set §6 sba_sb_yellow 15
scoreboard players set §6 sba_sb_cyan 15
scoreboard players set §6 sba_sb_orange 15
scoreboard players set §6 sba_sb_pink 15
scoreboard players set §6 sba_sb_purple 15

scoreboard players set §7 sba_sb 16
scoreboard players set §7 sba_sb_red 16
scoreboard players set §7 sba_sb_blue 16
scoreboard players set §7 sba_sb_green 16
scoreboard players set §7 sba_sb_yellow 16
scoreboard players set §7 sba_sb_cyan 16
scoreboard players set §7 sba_sb_orange 16
scoreboard players set §7 sba_sb_pink 16
scoreboard players set §7 sba_sb_purple 16

function utils:scoreboardrank/init
function skybattle:scoreboard/refresh