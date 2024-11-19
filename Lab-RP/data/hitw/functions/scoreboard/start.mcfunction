

schedule clear master:timer/starting/sec

function master:timer/timeleft/3min

scoreboard objectives remove hitw_sb_red
scoreboard objectives remove hitw_sb_blue
scoreboard objectives remove hitw_sb_green
scoreboard objectives remove hitw_sb_yellow
scoreboard objectives remove hitw_sb_cyan
scoreboard objectives remove hitw_sb_orange
scoreboard objectives remove hitw_sb_pink
scoreboard objectives remove hitw_sb_purple

scoreboard objectives add hitw_sb_red dummy [{"text": "Hole in the Wall","color": "yellow","bold": true}]
scoreboard objectives add hitw_sb_blue dummy [{"text": "Hole in the Wall","color": "yellow","bold": true}]
scoreboard objectives add hitw_sb_green dummy [{"text": "Hole in the Wall","color": "yellow","bold": true}]
scoreboard objectives add hitw_sb_yellow dummy [{"text": "Hole in the Wall","color": "yellow","bold": true}]
scoreboard objectives add hitw_sb_cyan dummy [{"text": "Hole in the Wall","color": "yellow","bold": true}]
scoreboard objectives add hitw_sb_orange dummy [{"text": "Hole in the Wall","color": "yellow","bold": true}]
scoreboard objectives add hitw_sb_pink dummy [{"text": "Hole in the Wall","color": "yellow","bold": true}]
scoreboard objectives add hitw_sb_purple dummy [{"text": "Hole in the Wall","color": "yellow","bold": true}]

scoreboard objectives setdisplay sidebar.team.red hitw_sb_red
scoreboard objectives setdisplay sidebar.team.blue hitw_sb_blue
scoreboard objectives setdisplay sidebar.team.green hitw_sb_green
scoreboard objectives setdisplay sidebar.team.yellow hitw_sb_yellow
scoreboard objectives setdisplay sidebar.team.dark_aqua hitw_sb_cyan
scoreboard objectives setdisplay sidebar.team.gold hitw_sb_orange
scoreboard objectives setdisplay sidebar.team.light_purple hitw_sb_pink
scoreboard objectives setdisplay sidebar.team.dark_purple hitw_sb_purple

scoreboard objectives modify hitw_sb numberformat fixed " "
scoreboard objectives modify hitw_sb_red numberformat fixed " "
scoreboard objectives modify hitw_sb_blue numberformat fixed " "
scoreboard objectives modify hitw_sb_green numberformat fixed " "
scoreboard objectives modify hitw_sb_yellow numberformat fixed " "
scoreboard objectives modify hitw_sb_cyan numberformat fixed " "
scoreboard objectives modify hitw_sb_orange numberformat fixed " "
scoreboard objectives modify hitw_sb_pink numberformat fixed " "
scoreboard objectives modify hitw_sb_purple numberformat fixed " "

team modify placeholder_1 suffix " "
team modify placeholder_2 suffix "简单 / 100%"
team modify placeholder_3 suffix ""
execute if score round hitw_game matches 1 run team modify placeholder_4 suffix "1/3"
execute if score round hitw_game matches 2 run team modify placeholder_4 suffix "2/3"
execute if score round hitw_game matches 3 run team modify placeholder_4 suffix "3/3"
team modify placeholder_5 suffix "Wall on Siyuan Lake"
team modify placeholder_6 suffix "§8Casual"
execute if score eventmode tourney_stats matches 1 run function hitw:scoreboard/macro_gameline_ig with storage master:event_status

# Chaos Multiplier
execute if score gamecount tourney_stats matches 0 if score eventmode tourney_stats matches 1 if score modifiers_chaos_multi tourney_stats matches 1 run team modify placeholder_6 suffix ["",{"text": "游戏 1/8","color":"aqua","bold": true},{"text": " ("},{"text": "x","color":"yellow"},{"storage":"master:chaos_multi","nbt":"master:chaos_multi","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 1 if score eventmode tourney_stats matches 1 if score modifiers_chaos_multi tourney_stats matches 1 run team modify placeholder_6 suffix ["",{"text": "游戏 2/8","color":"aqua","bold": true},{"text": " ("},{"text": "x","color":"yellow"},{"storage":"master:chaos_multi","nbt":"master:chaos_multi","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 2 if score eventmode tourney_stats matches 1 if score modifiers_chaos_multi tourney_stats matches 1 run team modify placeholder_6 suffix ["",{"text": "游戏 3/8","color":"aqua","bold": true},{"text": " ("},{"text": "x","color":"yellow"},{"storage":"master:chaos_multi","nbt":"master:chaos_multi","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 3 if score eventmode tourney_stats matches 1 if score modifiers_chaos_multi tourney_stats matches 1 run team modify placeholder_6 suffix ["",{"text": "游戏 4/8","color":"aqua","bold": true},{"text": " ("},{"text": "x","color":"yellow"},{"storage":"master:chaos_multi","nbt":"master:chaos_multi","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 4 if score eventmode tourney_stats matches 1 if score modifiers_chaos_multi tourney_stats matches 1 run team modify placeholder_6 suffix ["",{"text": "游戏 5/8","color":"aqua","bold": true},{"text": " ("},{"text": "x","color":"yellow"},{"storage":"master:chaos_multi","nbt":"master:chaos_multi","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 5 if score eventmode tourney_stats matches 1 if score modifiers_chaos_multi tourney_stats matches 1 run team modify placeholder_6 suffix ["",{"text": "游戏 6/8","color":"aqua","bold": true},{"text": " ("},{"text": "x","color":"yellow"},{"storage":"master:chaos_multi","nbt":"master:chaos_multi","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 6 if score eventmode tourney_stats matches 1 if score modifiers_chaos_multi tourney_stats matches 1 run team modify placeholder_6 suffix ["",{"text": "游戏 7/8","color":"aqua","bold": true},{"text": " ("},{"text": "x","color":"yellow"},{"storage":"master:chaos_multi","nbt":"master:chaos_multi","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 7 if score eventmode tourney_stats matches 1 if score modifiers_chaos_multi tourney_stats matches 1 run team modify placeholder_6 suffix ["",{"text": "游戏 8/8","color":"aqua","bold": true},{"text": " ("},{"text": "x","color":"yellow"},{"storage":"master:chaos_multi","nbt":"master:chaos_multi","color":"yellow"},{"text": ")"}]


team modify placeholder_7 suffix " "
team modify placeholder_8 suffix " "
team modify placeholder_9 suffix " "

team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"0"]
team modify placeholder_1 prefix " "
team modify placeholder_2 prefix [{"text": "墙: ","color":"gold"}]
team modify placeholder_3 prefix [{"text": "本游戏积分: ","color":"aqua","bold": true}]
team modify placeholder_4 prefix [{"text": "回合: ","color":"green"}]
team modify placeholder_5 prefix [{"text": "地图: ","color": "aqua"}]
team modify placeholder_6 prefix " "
team modify placeholder_7 prefix " "
team modify placeholder_8 prefix " "
team modify placeholder_9 prefix " "

scoreboard players set §0 hitw_sb -1
scoreboard players set §1 hitw_sb 0
scoreboard players set §3 hitw_sb 11
scoreboard players set §8 hitw_sb 12
scoreboard players set §2 hitw_sb 13
scoreboard players set : hitw_sb 14
scoreboard players set §4 hitw_sb 15
scoreboard players set §5 hitw_sb 16
scoreboard players set §6 hitw_sb 17

scoreboard players set §0 hitw_sb_red -1
scoreboard players set §1 hitw_sb_red 0
scoreboard players set §3 hitw_sb_red 11
scoreboard players set §8 hitw_sb_red 12
scoreboard players set §2 hitw_sb_red 13
scoreboard players set : hitw_sb_red 14
scoreboard players set §4 hitw_sb_red 15
scoreboard players set §5 hitw_sb_red 16
scoreboard players set §6 hitw_sb_red 17

scoreboard players set §0 hitw_sb_blue -1
scoreboard players set §1 hitw_sb_blue 0
scoreboard players set §3 hitw_sb_blue 11
scoreboard players set §8 hitw_sb_blue 12
scoreboard players set §2 hitw_sb_blue 13
scoreboard players set : hitw_sb_blue 14
scoreboard players set §4 hitw_sb_blue 15
scoreboard players set §5 hitw_sb_blue 16
scoreboard players set §6 hitw_sb_blue 17

scoreboard players set §0 hitw_sb_green -1
scoreboard players set §1 hitw_sb_green 0
scoreboard players set §3 hitw_sb_green 11
scoreboard players set §8 hitw_sb_green 12
scoreboard players set §2 hitw_sb_green 13
scoreboard players set : hitw_sb_green 14
scoreboard players set §4 hitw_sb_green 15
scoreboard players set §5 hitw_sb_green 16
scoreboard players set §6 hitw_sb_green 17

scoreboard players set §0 hitw_sb_yellow -1
scoreboard players set §1 hitw_sb_yellow 0
scoreboard players set §3 hitw_sb_yellow 11
scoreboard players set §8 hitw_sb_yellow 12
scoreboard players set §2 hitw_sb_yellow 13
scoreboard players set : hitw_sb_yellow 14
scoreboard players set §4 hitw_sb_yellow 15
scoreboard players set §5 hitw_sb_yellow 16
scoreboard players set §6 hitw_sb_yellow 17

scoreboard players set §0 hitw_sb_cyan -1
scoreboard players set §1 hitw_sb_cyan 0
scoreboard players set §3 hitw_sb_cyan 11
scoreboard players set §8 hitw_sb_cyan 12
scoreboard players set §2 hitw_sb_cyan 13
scoreboard players set : hitw_sb_cyan 14
scoreboard players set §4 hitw_sb_cyan 15
scoreboard players set §5 hitw_sb_cyan 16
scoreboard players set §6 hitw_sb_cyan 17

scoreboard players set §0 hitw_sb_orange -1
scoreboard players set §1 hitw_sb_orange 0
scoreboard players set §3 hitw_sb_orange 11
scoreboard players set §8 hitw_sb_orange 12
scoreboard players set §2 hitw_sb_orange 13
scoreboard players set : hitw_sb_orange 14
scoreboard players set §4 hitw_sb_orange 15
scoreboard players set §5 hitw_sb_orange 16
scoreboard players set §6 hitw_sb_orange 17

scoreboard players set §0 hitw_sb_pink -1
scoreboard players set §1 hitw_sb_pink 0
scoreboard players set §3 hitw_sb_pink 11
scoreboard players set §8 hitw_sb_pink 12
scoreboard players set §2 hitw_sb_pink 13
scoreboard players set : hitw_sb_pink 14
scoreboard players set §4 hitw_sb_pink 15
scoreboard players set §5 hitw_sb_pink 16
scoreboard players set §6 hitw_sb_pink 17

scoreboard players set §0 hitw_sb_purple -1
scoreboard players set §1 hitw_sb_purple 0
scoreboard players set §3 hitw_sb_purple 11
scoreboard players set §8 hitw_sb_purple 12
scoreboard players set §2 hitw_sb_purple 13
scoreboard players set : hitw_sb_purple 14
scoreboard players set §4 hitw_sb_purple 15
scoreboard players set §5 hitw_sb_purple 16
scoreboard players set §6 hitw_sb_purple 17


function utils:scoreboardrank/init
function hitw:scoreboard/refresh