## Parkour Warrior
## Game No. 15
## Time 14
## Empty 13
## Team Multi. 0

scoreboard objectives remove pkw2_sb
scoreboard objectives remove pkw2_sb_red
scoreboard objectives remove pkw2_sb_blue
scoreboard objectives remove pkw2_sb_green
scoreboard objectives remove pkw2_sb_yellow
scoreboard objectives remove pkw2_sb_cyan
scoreboard objectives remove pkw2_sb_orange
scoreboard objectives remove pkw2_sb_pink
scoreboard objectives remove pkw2_sb_purple

scoreboard objectives add pkw2_sb dummy "§e§lParkour Warrior"
scoreboard objectives add pkw2_sb_red dummy " §e§lParkour Warrior"
scoreboard objectives add pkw2_sb_blue dummy "§e§lParkour Warrior"
scoreboard objectives add pkw2_sb_green dummy "§e§lParkour Warrior"
scoreboard objectives add pkw2_sb_yellow dummy "§e§lParkour Warrior"
scoreboard objectives add pkw2_sb_cyan dummy "§e§lParkour Warrior"
scoreboard objectives add pkw2_sb_orange dummy "§e§lParkour Warrior"
scoreboard objectives add pkw2_sb_pink dummy "§e§lParkour Warrior"
scoreboard objectives add pkw2_sb_purple dummy "§e§lParkour Warrior"

# Display Slot
scoreboard objectives setdisplay below_name
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar pkw2_sb
scoreboard objectives setdisplay sidebar.team.red pkw2_sb_red
scoreboard objectives setdisplay sidebar.team.blue pkw2_sb_blue
scoreboard objectives setdisplay sidebar.team.green pkw2_sb_green
scoreboard objectives setdisplay sidebar.team.yellow pkw2_sb_yellow
scoreboard objectives setdisplay sidebar.team.light_purple pkw2_sb_pink
scoreboard objectives setdisplay sidebar.team.dark_aqua pkw2_sb_cyan
scoreboard objectives setdisplay sidebar.team.gold pkw2_sb_orange
scoreboard objectives setdisplay sidebar.team.dark_purple pkw2_sb_purple

# Hide Numbers
scoreboard objectives modify pkw2_sb numberformat fixed " "
scoreboard objectives modify pkw2_sb_red numberformat fixed " "
scoreboard objectives modify pkw2_sb_blue numberformat fixed " "
scoreboard objectives modify pkw2_sb_green numberformat fixed " "
scoreboard objectives modify pkw2_sb_yellow numberformat fixed " "
scoreboard objectives modify pkw2_sb_cyan numberformat fixed " "
scoreboard objectives modify pkw2_sb_pink numberformat fixed " "
scoreboard objectives modify pkw2_sb_orange numberformat fixed " "
scoreboard objectives modify pkw2_sb_purple numberformat fixed " "

# General Display
scoreboard players set §3 pkw2_sb 15
scoreboard players set §3 pkw2_sb_red 15
scoreboard players set §3 pkw2_sb_blue 15
scoreboard players set §3 pkw2_sb_green 15
scoreboard players set §3 pkw2_sb_yellow 15
scoreboard players set §3 pkw2_sb_orange 15
scoreboard players set §3 pkw2_sb_pink 15
scoreboard players set §3 pkw2_sb_purple 15
scoreboard players set §3 pkw2_sb_cyan 15

scoreboard players set §1 pkw2_sb 13
scoreboard players set §1 pkw2_sb_red 13
scoreboard players set §1 pkw2_sb_blue 13
scoreboard players set §1 pkw2_sb_green 13
scoreboard players set §1 pkw2_sb_yellow 13
scoreboard players set §1 pkw2_sb_orange 13
scoreboard players set §1 pkw2_sb_pink 13
scoreboard players set §1 pkw2_sb_purple 13
scoreboard players set §1 pkw2_sb_cyan 13

team modify placeholder_3 suffix "§8Casual"
team modify placeholder_3 prefix ""

execute if score eventmode tourney_stats matches 1 run function pkw2:scoreboard/macro_gameline with storage master:event_status

team modify placeholder_1 suffix ""
team modify placeholder_1 prefix ""

scoreboard players set §5 pkw2_sb 12
scoreboard players set §5 pkw2_sb_red 12
scoreboard players set §5 pkw2_sb_blue 12
scoreboard players set §5 pkw2_sb_green 12
scoreboard players set §5 pkw2_sb_yellow 12
scoreboard players set §5 pkw2_sb_orange 12
scoreboard players set §5 pkw2_sb_pink 12
scoreboard players set §5 pkw2_sb_purple 12
scoreboard players set §5 pkw2_sb_cyan 12
team modify placeholder_5 suffix "§b§l获得奖牌数:"
team modify placeholder_5 prefix ""

scoreboard players set §6 pkw2_sb 0
scoreboard players set §6 pkw2_sb_red 0
scoreboard players set §6 pkw2_sb_blue 0
scoreboard players set §6 pkw2_sb_green 0
scoreboard players set §6 pkw2_sb_yellow 0
scoreboard players set §6 pkw2_sb_orange 0
scoreboard players set §6 pkw2_sb_pink 0
scoreboard players set §6 pkw2_sb_purple 0
scoreboard players set §6 pkw2_sb_cyan 0

team modify placeholder_6 suffix ""
team modify placeholder_6 prefix ""
# Team Specifics
scoreboard players set §r§1 pkw2_sb_red -1
scoreboard players set §b§1 pkw2_sb_blue -1
scoreboard players set §g§1 pkw2_sb_green -1
scoreboard players set §y§1 pkw2_sb_yellow -1
scoreboard players set §c§1 pkw2_sb_cyan -1
scoreboard players set §o§1 pkw2_sb_orange -1
scoreboard players set §p§1 pkw2_sb_purple -1
scoreboard players set §i§1 pkw2_sb_pink -1


team modify placeholder_r1 prefix [{"text": "团队倍率: ","color": "green"}]
team modify placeholder_b1 prefix [{"text": "团队倍率: ","color": "green"}]
team modify placeholder_g1 prefix [{"text": "团队倍率: ","color": "green"}]
team modify placeholder_y1 prefix [{"text": "团队倍率: ","color": "green"}]
team modify placeholder_cy1 prefix [{"text": "团队倍率: ","color": "green"}]
team modify placeholder_pu1 prefix [{"text": "团队倍率: ","color": "green"}]
team modify placeholder_pi1 prefix [{"text": "团队倍率: ","color": "green"}]
team modify placeholder_or1 prefix [{"text": "团队倍率: ","color": "green"}]

team modify placeholder_r1 suffix "1.0x"
team modify placeholder_b1 suffix "1.0x"
team modify placeholder_g1 suffix "1.0x"
team modify placeholder_y1 suffix "1.0x"
team modify placeholder_cy1 suffix "1.0x"
team modify placeholder_pi1 suffix "1.0x"
team modify placeholder_or1 suffix "1.0x"
team modify placeholder_pu1 suffix "1.0x"

function utils:scoreboardrank/init
function pkw2:scoreboard/refresh