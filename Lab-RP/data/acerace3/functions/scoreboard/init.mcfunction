
scoreboard objectives remove ar_sb
scoreboard objectives add ar_sb dummy "§e§lAce Race"
scoreboard objectives setdisplay sidebar ar_sb
scoreboard objectives modify ar_sb numberformat fixed " "

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
team modify placeholder_7 suffix [{"text":"地图: ","color":"aqua"},{"text":"Overgrown Ruins   ","color":"white","bold":false}]
team modify placeholder_8 suffix "§8Casual"
execute if score eventmode tourney_stats matches 1 run function acerace3:scoreboard/macro_gameline with storage master:event_status

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

kill @e[type=marker,tag=ar_scb_pos]
summon marker 0 -64 0 {Tags:["ar_scb_pos","l3"]}
summon marker 0 -64 0 {Tags:["ar_scb_pos","l2"]}
summon marker 0 -64 0 {Tags:["ar_scb_pos","l1"]}
summon marker 0 -64 0 {Tags:["ar_scb_pos","l0"]}