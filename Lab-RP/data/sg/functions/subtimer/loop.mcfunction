
execute if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 0.. unless score pause sg_subtimer matches 1 run scoreboard players remove second sg_subtimer 1
execute if score second sg_subtimer matches -1 run scoreboard players remove minute sg_subtimer 1 
execute if score second sg_subtimer matches -1 run scoreboard players set second sg_subtimer 59

execute if score minute sg_subtimer matches ..9 run scoreboard players set min_pad sg_subtimer 0
execute if score second sg_subtimer matches ..9 run scoreboard players set sec_pad sg_subtimer 0

execute if score minute sg_subtimer matches 10.. run scoreboard players reset min_pad sg_subtimer
execute if score second sg_subtimer matches 10.. run scoreboard players reset sec_pad sg_subtimer

scoreboard players set warning sg_subtimer 0
execute if score second sg_subtimer matches ..10 if score minute sg_subtimer matches ..0 run scoreboard players set warning sg_subtimer 1

# SCB
execute if score gamephase sg_game matches 1 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 9 run team modify sg_subtimer prefix [{"text":"保护时间结束: ","color":"light_purple"},{"text":"9","color":"white"}]
execute if score gamephase sg_game matches 1 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 8 run team modify sg_subtimer prefix [{"text":"保护时间结束: ","color":"light_purple"},{"text":"8","color":"white"}]
execute if score gamephase sg_game matches 1 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 7 run team modify sg_subtimer prefix [{"text":"保护时间结束: ","color":"light_purple"},{"text":"7","color":"white"}]
execute if score gamephase sg_game matches 1 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 6 run team modify sg_subtimer prefix [{"text":"保护时间结束: ","color":"light_purple"},{"text":"6","color":"white"}]
execute if score gamephase sg_game matches 1 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 5 run team modify sg_subtimer prefix [{"text":"保护时间结束: ","color":"light_purple"},{"text":"5","color":"white"}]
execute if score gamephase sg_game matches 1 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 4 run team modify sg_subtimer prefix [{"text":"保护时间结束: ","color":"light_purple"},{"text":"4","color":"white"}]
execute if score gamephase sg_game matches 1 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 3 run team modify sg_subtimer prefix [{"text":"保护时间结束: ","color":"light_purple"},{"text":"3","color":"white"}]
execute if score gamephase sg_game matches 1 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 2 run team modify sg_subtimer prefix [{"text":"保护时间结束: ","color":"light_purple"},{"text":"2","color":"white"}]
execute if score gamephase sg_game matches 1 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 1 run team modify sg_subtimer prefix [{"text":"保护时间结束: ","color":"light_purple"},{"text":"1","color":"white"}]
execute if score gamephase sg_game matches 1 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 0 run team modify sg_subtimer prefix [{"text":"保护时间结束: ","color":"light_purple"},{"text":"0","color":"white"}]

execute if score gamephase sg_game matches 2 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 9 run team modify sg_subtimer prefix [{"text":"边界收缩: ","color":"red"},{"text":"9","color":"white"}]
execute if score gamephase sg_game matches 2 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 8 run team modify sg_subtimer prefix [{"text":"边界收缩: ","color":"red"},{"text":"8","color":"white"}]
execute if score gamephase sg_game matches 2 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 7 run team modify sg_subtimer prefix [{"text":"边界收缩: ","color":"red"},{"text":"7","color":"white"}]
execute if score gamephase sg_game matches 2 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 6 run team modify sg_subtimer prefix [{"text":"边界收缩: ","color":"red"},{"text":"6","color":"white"}]
execute if score gamephase sg_game matches 2 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 5 run team modify sg_subtimer prefix [{"text":"边界收缩: ","color":"red"},{"text":"5","color":"white"}]
execute if score gamephase sg_game matches 2 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 4 run team modify sg_subtimer prefix [{"text":"边界收缩: ","color":"red"},{"text":"4","color":"white"}]
execute if score gamephase sg_game matches 2 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 3 run team modify sg_subtimer prefix [{"text":"边界收缩: ","color":"red"},{"text":"3","color":"white"}]
execute if score gamephase sg_game matches 2 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 2 run team modify sg_subtimer prefix [{"text":"边界收缩: ","color":"red"},{"text":"2","color":"white"}]
execute if score gamephase sg_game matches 2 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 1 run team modify sg_subtimer prefix [{"text":"边界收缩: ","color":"red"},{"text":"1","color":"white"}]
execute if score gamephase sg_game matches 2 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 0 run team modify sg_subtimer prefix [{"text":"边界收缩: ","color":"red"},{"text":"0","color":"white"}]

execute if score gamephase sg_game matches 3 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 9 run team modify sg_subtimer prefix ["",{"text":"LAST STAND: ","color":"red","bold": true},{"text":"9","color":"white"}]
execute if score gamephase sg_game matches 3 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 8 run team modify sg_subtimer prefix ["",{"text":"LAST STAND: ","color":"red","bold": true},{"text":"8","color":"white"}]
execute if score gamephase sg_game matches 3 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 7 run team modify sg_subtimer prefix ["",{"text":"LAST STAND: ","color":"red","bold": true},{"text":"7","color":"white"}]
execute if score gamephase sg_game matches 3 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 6 run team modify sg_subtimer prefix ["",{"text":"LAST STAND: ","color":"red","bold": true},{"text":"6","color":"white"}]
execute if score gamephase sg_game matches 3 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 5 run team modify sg_subtimer prefix ["",{"text":"LAST STAND: ","color":"red","bold": true},{"text":"5","color":"white"}]
execute if score gamephase sg_game matches 3 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 4 run team modify sg_subtimer prefix ["",{"text":"LAST STAND: ","color":"red","bold": true},{"text":"4","color":"white"}]
execute if score gamephase sg_game matches 3 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 3 run team modify sg_subtimer prefix ["",{"text":"LAST STAND: ","color":"red","bold": true},{"text":"3","color":"white"}]
execute if score gamephase sg_game matches 3 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 2 run team modify sg_subtimer prefix ["",{"text":"LAST STAND: ","color":"red","bold": true},{"text":"2","color":"white"}]
execute if score gamephase sg_game matches 3 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 1 run team modify sg_subtimer prefix ["",{"text":"LAST STAND: ","color":"red","bold": true},{"text":"1","color":"white"}]
execute if score gamephase sg_game matches 3 if score second sg_subtimer matches 0.. if score minute sg_subtimer matches 0 run team modify sg_subtimer prefix ["",{"text":"LAST STAND: ","color":"red","bold": true},{"text":"0","color":"white"}]

execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 59 run team modify sg_subtimer suffix "59"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 58 run team modify sg_subtimer suffix "58"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 57 run team modify sg_subtimer suffix "57"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 56 run team modify sg_subtimer suffix "56"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 55 run team modify sg_subtimer suffix "55"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 54 run team modify sg_subtimer suffix "54"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 53 run team modify sg_subtimer suffix "53"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 52 run team modify sg_subtimer suffix "52"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 51 run team modify sg_subtimer suffix "51"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 50 run team modify sg_subtimer suffix "50"

execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 49 run team modify sg_subtimer suffix "49"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 48 run team modify sg_subtimer suffix "48"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 47 run team modify sg_subtimer suffix "47"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 46 run team modify sg_subtimer suffix "46"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 45 run team modify sg_subtimer suffix "45"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 44 run team modify sg_subtimer suffix "44"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 43 run team modify sg_subtimer suffix "43"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 42 run team modify sg_subtimer suffix "42"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 41 run team modify sg_subtimer suffix "41"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 40 run team modify sg_subtimer suffix "40"

execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 39 run team modify sg_subtimer suffix "39"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 38 run team modify sg_subtimer suffix "38"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 37 run team modify sg_subtimer suffix "37"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 36 run team modify sg_subtimer suffix "36"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 35 run team modify sg_subtimer suffix "35"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 34 run team modify sg_subtimer suffix "34"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 33 run team modify sg_subtimer suffix "33"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 32 run team modify sg_subtimer suffix "32"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 31 run team modify sg_subtimer suffix "31"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 30 run team modify sg_subtimer suffix "30"

execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 29 run team modify sg_subtimer suffix "29"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 28 run team modify sg_subtimer suffix "28"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 27 run team modify sg_subtimer suffix "27"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 26 run team modify sg_subtimer suffix "26"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 25 run team modify sg_subtimer suffix "25"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 24 run team modify sg_subtimer suffix "24"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 23 run team modify sg_subtimer suffix "23"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 22 run team modify sg_subtimer suffix "22"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 21 run team modify sg_subtimer suffix "21"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 20 run team modify sg_subtimer suffix "20"

execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 19 run team modify sg_subtimer suffix "19"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 18 run team modify sg_subtimer suffix "18"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 17 run team modify sg_subtimer suffix "17"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 16 run team modify sg_subtimer suffix "16"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 15 run team modify sg_subtimer suffix "15"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 14 run team modify sg_subtimer suffix "14"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 13 run team modify sg_subtimer suffix "13"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 12 run team modify sg_subtimer suffix "12"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 11 run team modify sg_subtimer suffix "11"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 10 run team modify sg_subtimer suffix "10"

execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 9 run team modify sg_subtimer suffix "09"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 8 run team modify sg_subtimer suffix "08"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 7 run team modify sg_subtimer suffix "07"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 6 run team modify sg_subtimer suffix "06"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 5 run team modify sg_subtimer suffix "05"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 4 run team modify sg_subtimer suffix "04"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 3 run team modify sg_subtimer suffix "03"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 2 run team modify sg_subtimer suffix "02"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 1 run team modify sg_subtimer suffix "01"
execute if score gamephase sg_game matches 1..3 if score second sg_subtimer matches 0 run team modify sg_subtimer suffix "00"

# BOSSBAR
execute if score gamephase sg_game matches 1 if score warning sg_subtimer matches 0 run bossbar set sg_timebar name ["",{"text": "54","font": "space:backspace"},{"text": "\ub128","font": "ui_offset_-2","color": "#4E5C24"},{"text": "7643","font": "space:backspace"},{"text": "保护时间结束: ","font": "hud_cs_offset_-2"},{"score":{"name": "min_pad","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "yellow"},{"score":{"name": "minute","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "yellow"},{"text": ":","font":"hud_cs_offset_-2","color": "yellow"},{"score":{"name": "sec_pad","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "yellow"},{"score":{"name": "second","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "yellow"}]
execute if score gamephase sg_game matches 2 if score warning sg_subtimer matches 0 run bossbar set sg_timebar name ["",{"text": "54","font": "space:backspace"},{"text": "\ub128","font": "ui_offset_-2","color": "#4E5C24"},{"text": "7643","font": "space:backspace"},{"text": "边界开始收缩: ","font": "hud_cs_offset_-2"},{"score":{"name": "min_pad","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "yellow"},{"score":{"name": "minute","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "yellow"},{"text": ":","font":"hud_cs_offset_-2","color": "yellow"},{"score":{"name": "sec_pad","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "yellow"},{"score":{"name": "second","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "yellow"}]
execute if score gamephase sg_game matches 3 if score warning sg_subtimer matches 0 run bossbar set sg_timebar name ["",{"text": "6","font": "space:backspace"},{"text": "\ub128","font": "ui_offset_-2","color": "#4E5C24"},{"text": "76","font": "space:backspace"},{"text": "决战模式！","font": "hud_cs_offset_-2","color": "red"},{"score":{"name": "min_pad","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "yellow"},{"score":{"name": "minute","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "yellow"},{"text": ":","font":"hud_cs_offset_-2","color": "yellow"},{"score":{"name": "sec_pad","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "yellow"},{"score":{"name": "second","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "yellow"}]

execute if score gamephase sg_game matches 1 if score warning sg_subtimer matches 1 run bossbar set sg_timebar name ["",{"text": "54","font": "space:backspace"},{"text": "\ub128","font": "ui_offset_-2","color": "#4E5C24"},{"text": "7643","font": "space:backspace"},{"text": "保护时间结束: ","font": "hud_cs_offset_-2"},{"score":{"name": "min_pad","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "red"},{"score":{"name": "minute","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "red"},{"text": ":","font":"hud_cs_offset_-2","color": "red"},{"score":{"name": "sec_pad","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "red"},{"score":{"name": "second","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "red"}]
execute if score gamephase sg_game matches 2 if score warning sg_subtimer matches 1 run bossbar set sg_timebar name ["",{"text": "54","font": "space:backspace"},{"text": "\ub128","font": "ui_offset_-2","color": "#4E5C24"},{"text": "7643","font": "space:backspace"},{"text": "边界开始收缩: ","font": "hud_cs_offset_-2"},{"score":{"name": "min_pad","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "red"},{"score":{"name": "minute","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "red"},{"text": ":","font":"hud_cs_offset_-2","color": "red"},{"score":{"name": "sec_pad","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "red"},{"score":{"name": "second","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "red"}]
execute if score gamephase sg_game matches 3 if score warning sg_subtimer matches 1 run bossbar set sg_timebar name ["",{"text": "6","font": "space:backspace"},{"text": "\ub128","font": "ui_offset_-2","color": "#4E5C24"},{"text": "76","font": "space:backspace"},{"text": "决战模式！","font": "hud_cs_offset_-2","color": "red"},{"score":{"name": "min_pad","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "red"},{"score":{"name": "minute","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "red"},{"text": ":","font":"hud_cs_offset_-2","color": "red"},{"score":{"name": "sec_pad","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "red"},{"score":{"name": "second","objective": "sg_subtimer"},"font":"hud_cs_offset_-2","color": "red"}]


execute if score gamephase sg_game matches 1..3 if score gameflag sg_game matches 1 run schedule function sg:subtimer/loop 1s