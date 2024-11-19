## Survival Games
## Game No. 15
## Time 14
## Empty 13
## Team Multi. 0

scoreboard objectives remove sg_sb
scoreboard objectives remove sg_sb_red
scoreboard objectives remove sg_sb_blue
scoreboard objectives remove sg_sb_green
scoreboard objectives remove sg_sb_yellow
scoreboard objectives remove sg_sb_cyan
scoreboard objectives remove sg_sb_orange
scoreboard objectives remove sg_sb_pink
scoreboard objectives remove sg_sb_purple

scoreboard objectives add sg_sb dummy "§e§lSurvival Games"
scoreboard objectives add sg_sb_red dummy "§e§lSurvival Games"
scoreboard objectives add sg_sb_blue dummy "§e§lSurvival Games"
scoreboard objectives add sg_sb_green dummy "§e§lSurvival Games"
scoreboard objectives add sg_sb_yellow dummy "§e§lSurvival Games"
scoreboard objectives add sg_sb_cyan dummy "§e§lSurvival Games"
scoreboard objectives add sg_sb_orange dummy "§e§lSurvival Games"
scoreboard objectives add sg_sb_pink dummy "§e§lSurvival Games"
scoreboard objectives add sg_sb_purple dummy "§e§lSurvival Games"

# Display Slot
scoreboard objectives setdisplay below_name health
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar sg_sb
scoreboard objectives setdisplay sidebar.team.red sg_sb_red
scoreboard objectives setdisplay sidebar.team.blue sg_sb_blue
scoreboard objectives setdisplay sidebar.team.green sg_sb_green
scoreboard objectives setdisplay sidebar.team.yellow sg_sb_yellow
scoreboard objectives setdisplay sidebar.team.light_purple sg_sb_pink
scoreboard objectives setdisplay sidebar.team.dark_aqua sg_sb_cyan
scoreboard objectives setdisplay sidebar.team.gold sg_sb_orange
scoreboard objectives setdisplay sidebar.team.dark_purple sg_sb_purple

# Hide Numbers
scoreboard objectives modify sg_sb numberformat fixed " "
scoreboard objectives modify sg_sb_red numberformat fixed " "
scoreboard objectives modify sg_sb_blue numberformat fixed " "
scoreboard objectives modify sg_sb_green numberformat fixed " "
scoreboard objectives modify sg_sb_yellow numberformat fixed " "
scoreboard objectives modify sg_sb_cyan numberformat fixed " "
scoreboard objectives modify sg_sb_pink numberformat fixed " "
scoreboard objectives modify sg_sb_orange numberformat fixed " "
scoreboard objectives modify sg_sb_purple numberformat fixed " "

# General Display
scoreboard players set §3 sg_sb 15
scoreboard players set §3 sg_sb_red 15
scoreboard players set §3 sg_sb_blue 15
scoreboard players set §3 sg_sb_green 15
scoreboard players set §3 sg_sb_yellow 15
scoreboard players set §3 sg_sb_orange 15
scoreboard players set §3 sg_sb_pink 15
scoreboard players set §3 sg_sb_purple 15
scoreboard players set §3 sg_sb_cyan 15


team modify placeholder_3 suffix "§8Casual"
team modify placeholder_3 prefix ""

execute if score eventmode tourney_stats matches 1 run function sg:scoreboard/macro_gameline with storage master:event_status

scoreboard players set : sg_sb 14
scoreboard players set : sg_sb_red 14
scoreboard players set : sg_sb_blue 14
scoreboard players set : sg_sb_green 14
scoreboard players set : sg_sb_yellow 14
scoreboard players set : sg_sb_orange 14
scoreboard players set : sg_sb_pink 14
scoreboard players set : sg_sb_purple 14
scoreboard players set : sg_sb_cyan 14

function master:timer/starting/sg

scoreboard players set §1 sg_sb 12
scoreboard players set §1 sg_sb_red 12
scoreboard players set §1 sg_sb_blue 12
scoreboard players set §1 sg_sb_green 12
scoreboard players set §1 sg_sb_yellow 12
scoreboard players set §1 sg_sb_orange 12
scoreboard players set §1 sg_sb_pink 12
scoreboard players set §1 sg_sb_purple 12
scoreboard players set §1 sg_sb_cyan 12

team modify placeholder_1 suffix ""
team modify placeholder_1 prefix ""

scoreboard players set §5 sg_sb 11
scoreboard players set §5 sg_sb_red 11
scoreboard players set §5 sg_sb_blue 11
scoreboard players set §5 sg_sb_green 11
scoreboard players set §5 sg_sb_yellow 11
scoreboard players set §5 sg_sb_orange 11
scoreboard players set §5 sg_sb_pink 11
scoreboard players set §5 sg_sb_purple 11
scoreboard players set §5 sg_sb_cyan 11
team modify placeholder_5 suffix "§b§l本游戏积分:"
team modify placeholder_5 prefix ""

scoreboard players set §6 sg_sb 0
scoreboard players set §6 sg_sb_red 0
scoreboard players set §6 sg_sb_blue 0
scoreboard players set §6 sg_sb_green 0
scoreboard players set §6 sg_sb_yellow 0
scoreboard players set §6 sg_sb_orange 0
scoreboard players set §6 sg_sb_pink 0
scoreboard players set §6 sg_sb_purple 0
scoreboard players set §6 sg_sb_cyan 0

team modify placeholder_6 suffix ""
team modify placeholder_6 prefix ""
# Team Specifics

function utils:scoreboardrank/init
function sg:scoreboard/refresh