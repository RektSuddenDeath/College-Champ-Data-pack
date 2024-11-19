
scoreboard objectives setdisplay sidebar ar_sb

scoreboard players reset §y§6 ar_sb
scoreboard players reset §9 ar_sb
scoreboard players set §5 ar_sb 5
scoreboard players set §7 ar_sb 7
scoreboard players set §8 ar_sb 8

team modify placeholder_0 prefix ""
team modify placeholder_1 prefix ""
team modify placeholder_2 prefix ""
team modify placeholder_3 prefix ""
team modify placeholder_4 prefix ""
team modify placeholder_5 prefix ""
team modify placeholder_6 prefix ""
team modify placeholder_7 prefix ""
team modify placeholder_8 prefix ""
team modify placeholder_9 prefix ""

team modify placeholder_0 suffix " "
team modify placeholder_1 suffix " "
team modify placeholder_2 suffix " "
team modify placeholder_3 suffix " "
team modify placeholder_4 suffix " "
team modify placeholder_5 suffix " "
team modify placeholder_6 suffix " "
team modify placeholder_7 suffix [{"text":"地图: ","color":"aqua"},{"text":"Caves and Cliffs","color":"white","bold":false}]
team modify placeholder_8 suffix "§8Casual"
execute if score gamecount tourney_stats matches 0 if score eventmode tourney_stats matches 1 run team modify placeholder_8 suffix ["",{"text": "游戏 1/8","color":"aqua","bold": true},{"text": " ("},{"text": "x1.0","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 1 if score eventmode tourney_stats matches 1 run team modify placeholder_8 suffix ["",{"text": "游戏 2/8","color":"aqua","bold": true},{"text": " ("},{"text": "x1.5","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 2 if score eventmode tourney_stats matches 1 run team modify placeholder_8 suffix ["",{"text": "游戏 3/8","color":"aqua","bold": true},{"text": " ("},{"text": "x1.5","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 3 if score eventmode tourney_stats matches 1 run team modify placeholder_8 suffix ["",{"text": "游戏 4/8","color":"aqua","bold": true},{"text": " ("},{"text": "x2.0","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 4 if score eventmode tourney_stats matches 1 run team modify placeholder_8 suffix ["",{"text": "游戏 5/8","color":"aqua","bold": true},{"text": " ("},{"text": "x2.0","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 5 if score eventmode tourney_stats matches 1 run team modify placeholder_8 suffix ["",{"text": "游戏 6/8","color":"aqua","bold": true},{"text": " ("},{"text": "x2.5","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 6 if score eventmode tourney_stats matches 1 run team modify placeholder_8 suffix ["",{"text": "游戏 7/8","color":"aqua","bold": true},{"text": " ("},{"text": "x2.5","color":"yellow"},{"text": ")"}]
execute if score gamecount tourney_stats matches 7 if score eventmode tourney_stats matches 1 run team modify placeholder_8 suffix ["",{"text": "游戏 8/8","color":"aqua","bold": true},{"text": " ("},{"text": "x3.0","color":"yellow"},{"text": ")"}]
team modify placeholder_9 suffix " "

team join placeholder_r1 §r§1
team join placeholder_b1 §b§1
team join placeholder_g1 §g§1
team join placeholder_y1 §y§1
team join placeholder_cy1 §c§1
team join placeholder_or1 §o§1
team join placeholder_pi1 §i§1
team join placeholder_pu1 §p§1

team join placeholder_r2 §r§2
team join placeholder_b2 §b§2
team join placeholder_g2 §g§2
team join placeholder_y2 §y§2
team join placeholder_cy2 §c§2
team join placeholder_or2 §o§2
team join placeholder_pi2 §i§2
team join placeholder_pu2 §p§2

team join placeholder_r3 §r§3
team join placeholder_b3 §b§3
team join placeholder_g3 §g§3
team join placeholder_y3 §y§3
team join placeholder_cy3 §c§3
team join placeholder_or3 §o§3
team join placeholder_pi3 §i§3
team join placeholder_pu3 §p§3

team modify placeholder_y0 suffix ""
team modify placeholder_r0 suffix ""
team modify placeholder_b0 suffix ""
team modify placeholder_g0 suffix ""

team modify placeholder_y1 suffix ""
team modify placeholder_r1 suffix ""
team modify placeholder_b1 suffix ""
team modify placeholder_g1 suffix ""
team modify placeholder_cy1 suffix ""
team modify placeholder_or1 suffix ""
team modify placeholder_pu1 suffix ""
team modify placeholder_pi1 suffix ""

team modify placeholder_y2 suffix ""
team modify placeholder_r2 suffix ""
team modify placeholder_b2 suffix ""
team modify placeholder_g2 suffix ""
team modify placeholder_cy2 suffix ""
team modify placeholder_or2 suffix ""
team modify placeholder_pu2 suffix ""
team modify placeholder_pi2 suffix ""

team modify placeholder_y3 suffix ""
team modify placeholder_r3 suffix ""
team modify placeholder_b3 suffix ""
team modify placeholder_g3 suffix ""
team modify placeholder_cy3 suffix ""
team modify placeholder_or3 suffix ""
team modify placeholder_pu3 suffix ""
team modify placeholder_pi3 suffix ""