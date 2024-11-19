#region Initial
scoreboard objectives remove hitw_sb
scoreboard objectives add hitw_sb dummy [{"text": "Hole in the Wall","color": "yellow","bold": true}]
scoreboard objectives setdisplay sidebar hitw_sb
scoreboard objectives modify hitw_sb numberformat fixed " "

#endregion

#region Texts
team modify placeholder_0 suffix " "
team modify placeholder_1 suffix " "
team modify placeholder_2 suffix "Wall on Siyuan Lake"
team modify placeholder_3 suffix "§8Casual"
execute if score eventmode tourney_stats matches 1 run function hitw:scoreboard/macro_gameline with storage master:event_status

# Chaos Multiplier
execute if score gamecount tourney_stats matches 0 if score eventmode tourney_stats matches 1 if score modifiers_chaos_multi tourney_stats matches 1 run team modify placeholder_3 suffix ["",{"text": "游戏 1/8","color":"aqua","bold": true},{"text": " ("},{"text": "x","color":"yellow"},{"storage":"master:chaos_multi","nbt":"master:chaos_multi","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 1 if score eventmode tourney_stats matches 1 if score modifiers_chaos_multi tourney_stats matches 1 run team modify placeholder_3 suffix ["",{"text": "游戏 2/8","color":"aqua","bold": true},{"text": " ("},{"text": "x","color":"yellow"},{"storage":"master:chaos_multi","nbt":"master:chaos_multi","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 2 if score eventmode tourney_stats matches 1 if score modifiers_chaos_multi tourney_stats matches 1 run team modify placeholder_3 suffix ["",{"text": "游戏 3/8","color":"aqua","bold": true},{"text": " ("},{"text": "x","color":"yellow"},{"storage":"master:chaos_multi","nbt":"master:chaos_multi","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 3 if score eventmode tourney_stats matches 1 if score modifiers_chaos_multi tourney_stats matches 1 run team modify placeholder_3 suffix ["",{"text": "游戏 4/8","color":"aqua","bold": true},{"text": " ("},{"text": "x","color":"yellow"},{"storage":"master:chaos_multi","nbt":"master:chaos_multi","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 4 if score eventmode tourney_stats matches 1 if score modifiers_chaos_multi tourney_stats matches 1 run team modify placeholder_3 suffix ["",{"text": "游戏 5/8","color":"aqua","bold": true},{"text": " ("},{"text": "x","color":"yellow"},{"storage":"master:chaos_multi","nbt":"master:chaos_multi","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 5 if score eventmode tourney_stats matches 1 if score modifiers_chaos_multi tourney_stats matches 1 run team modify placeholder_3 suffix ["",{"text": "游戏 6/8","color":"aqua","bold": true},{"text": " ("},{"text": "x","color":"yellow"},{"storage":"master:chaos_multi","nbt":"master:chaos_multi","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 6 if score eventmode tourney_stats matches 1 if score modifiers_chaos_multi tourney_stats matches 1 run team modify placeholder_3 suffix ["",{"text": "游戏 7/8","color":"aqua","bold": true},{"text": " ("},{"text": "x","color":"yellow"},{"storage":"master:chaos_multi","nbt":"master:chaos_multi","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 7 if score eventmode tourney_stats matches 1 if score modifiers_chaos_multi tourney_stats matches 1 run team modify placeholder_3 suffix ["",{"text": "游戏 8/8","color":"aqua","bold": true},{"text": " ("},{"text": "x","color":"yellow"},{"storage":"master:chaos_multi","nbt":"master:chaos_multi","color":"yellow"},{"text": ")"}]


team modify placeholder_4 suffix " "
team modify placeholder_5 suffix " "
team modify placeholder_6 suffix " "
team modify placeholder_7 suffix " "
team modify placeholder_8 suffix " "
team modify placeholder_9 suffix " "

team modify placeholder_0 prefix " "
team modify placeholder_1 prefix " "
team modify placeholder_2 prefix [{"text": "地图: ","color": "aqua"}]
team modify placeholder_3 prefix ""
team modify placeholder_4 prefix " "
team modify placeholder_5 prefix " "
team modify placeholder_6 prefix " "
team modify placeholder_7 prefix " "
team modify placeholder_8 prefix " "
team modify placeholder_9 prefix " "
#endregion

scoreboard players set §0 hitw_sb 0
function master:timer/starting/hitw
scoreboard players set §2 hitw_sb 2
scoreboard players set §3 hitw_sb 3

