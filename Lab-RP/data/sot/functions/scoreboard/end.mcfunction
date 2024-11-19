
scoreboard objectives remove Sotsb_global
scoreboard objectives add Sotsb_global dummy ["",{"text": "Sands of Time","bold": true,"color": "yellow"}]
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

scoreboard players set §6 Sotsb_red 16
scoreboard players set §6 Sotsb_blue 16
scoreboard players set §6 Sotsb_green 16
scoreboard players set §6 Sotsb_yellow 16
scoreboard players set §6 Sotsb_cyan 16
scoreboard players set §6 Sotsb_orange 16
scoreboard players set §6 Sotsb_pink 16
scoreboard players set §6 Sotsb_purple 16
scoreboard players set §6 Sotsb_global 16

scoreboard players set §5 Sotsb_red 15
scoreboard players set §5 Sotsb_blue 15
scoreboard players set §5 Sotsb_green 15
scoreboard players set §5 Sotsb_yellow 15
scoreboard players set §5 Sotsb_cyan 15
scoreboard players set §5 Sotsb_orange 15
scoreboard players set §5 Sotsb_pink 15
scoreboard players set §5 Sotsb_purple 15
scoreboard players set §5 Sotsb_global 15

scoreboard players set §4 Sotsb_red 14
scoreboard players set §4 Sotsb_blue 14
scoreboard players set §4 Sotsb_green 14
scoreboard players set §4 Sotsb_yellow 14
scoreboard players set §4 Sotsb_cyan 14
scoreboard players set §4 Sotsb_orange 14
scoreboard players set §4 Sotsb_pink 14
scoreboard players set §4 Sotsb_purple 14
scoreboard players set §4 Sotsb_global 14

scoreboard players set §3 Sotsb_red 13
scoreboard players set §3 Sotsb_blue 13
scoreboard players set §3 Sotsb_green 13
scoreboard players set §3 Sotsb_yellow 13
scoreboard players set §3 Sotsb_cyan 13
scoreboard players set §3 Sotsb_orange 13
scoreboard players set §3 Sotsb_pink 13
scoreboard players set §3 Sotsb_purple 13
scoreboard players set §3 Sotsb_global 13

team modify placeholder_3 suffix ""
team modify placeholder_3 prefix ""

scoreboard players set §2 Sotsb_red 12
scoreboard players set §2 Sotsb_blue 12
scoreboard players set §2 Sotsb_green 12
scoreboard players set §2 Sotsb_yellow 12
scoreboard players set §2 Sotsb_cyan 12
scoreboard players set §2 Sotsb_orange 12
scoreboard players set §2 Sotsb_pink 12
scoreboard players set §2 Sotsb_purple 12
scoreboard players set §2 Sotsb_global 12

team modify placeholder_2 suffix ""
team modify placeholder_2 prefix "§b§l本游戏积分:"

scoreboard players reset §r§1 Sotsb_red
scoreboard players reset §r§2 Sotsb_red
scoreboard players reset §b§1 Sotsb_blue
scoreboard players reset §b§2 Sotsb_blue
scoreboard players reset §g§1 Sotsb_green
scoreboard players reset §g§2 Sotsb_green
scoreboard players reset §y§1 Sotsb_yellow
scoreboard players reset §y§2 Sotsb_yellow
scoreboard players reset §c§1 Sotsb_cyan
scoreboard players reset §c§2 Sotsb_cyan
scoreboard players reset §i§1 Sotsb_pink
scoreboard players reset §i§2 Sotsb_pink
scoreboard players reset §o§1 Sotsb_orange
scoreboard players reset §o§2 Sotsb_orange
scoreboard players reset §p§1 Sotsb_purple
scoreboard players reset §p§2 Sotsb_purple

function utils:scoreboardrank/init
function sot:scoreboard/refresh