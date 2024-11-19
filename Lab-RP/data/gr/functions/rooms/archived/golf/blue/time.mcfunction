
# 增加1t
scoreboard players add blue gr_currenttime 5
# 精确时间显示
scoreboard players operation blue gr_currentmin = blue gr_currenttime
scoreboard players operation blue gr_currentsec = blue gr_currenttime

scoreboard players operation blue gr_currentmin /= 6000 math
scoreboard players operation blue gr_currentsec /= 100 math
scoreboard players operation blue gr_currentsec %= 60 math
# 显示房间目标和当前用时
execute if score blue gr_currentsec matches 0..9 run title @a[team=blue] actionbar ["",{"score":{"name": "blue","objective": "gr_currentmin"}},":","0",{"score":{"name": "blue","objective": "gr_currentsec"}}," | ","[§e!§r]"," 站到全部水管上。"]
execute if score blue gr_currentsec matches 10..59 run title @a[team=blue] actionbar ["",{"score":{"name": "blue","objective": "gr_currentmin"}},":","",{"score":{"name": "blue","objective": "gr_currentsec"}}," | ","[§e!§r]"," 站到全部水管上。"]