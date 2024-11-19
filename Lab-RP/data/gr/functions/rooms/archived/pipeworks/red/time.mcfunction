
# 增加1t
scoreboard players add red gr_currenttime 5
# 精确时间显示
scoreboard players operation red gr_currentmin = red gr_currenttime
scoreboard players operation red gr_currentsec = red gr_currenttime

scoreboard players operation red gr_currentmin /= 6000 math
scoreboard players operation red gr_currentsec /= 100 math
scoreboard players operation red gr_currentsec %= 60 math
# 显示房间目标和当前用时
execute if score red gr_currentsec matches 0..9 run title @a[team=red] actionbar ["",{"score":{"name": "red","objective": "gr_currentmin"}},":","0",{"score":{"name": "red","objective": "gr_currentsec"}}," | ","[§e!§r]"," 连通线路，点亮红石灯。"]
execute if score red gr_currentsec matches 10..59 run title @a[team=red] actionbar ["",{"score":{"name": "red","objective": "gr_currentmin"}},":","",{"score":{"name": "red","objective": "gr_currentsec"}}," | ","[§e!§r]"," 连通线路，点亮红石灯。"]