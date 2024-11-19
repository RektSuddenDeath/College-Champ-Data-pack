
# 增加1t
scoreboard players add green gr_currenttime 5
# 精确时间显示
scoreboard players operation green gr_currentmin = green gr_currenttime
scoreboard players operation green gr_currentsec = green gr_currenttime

scoreboard players operation green gr_currentmin /= 6000 math
scoreboard players operation green gr_currentsec /= 100 math
scoreboard players operation green gr_currentsec %= 60 math
# 显示房间目标和当前用时
execute if score green gr_currentsec matches 0..9 run title @a[team=green] actionbar ["",{"score":{"name": "green","objective": "gr_currentmin"}},":","0",{"score":{"name": "green","objective": "gr_currentsec"}}," | ","[§e!§r]"," 站到全部水管上。"]
execute if score green gr_currentsec matches 10..59 run title @a[team=green] actionbar ["",{"score":{"name": "green","objective": "gr_currentmin"}},":","",{"score":{"name": "green","objective": "gr_currentsec"}}," | ","[§e!§r]"," 站到全部水管上。"]