
# 增加1t
scoreboard players add orange gr_currenttime 5
# 精确时间显示
scoreboard players operation orange gr_currentmin = orange gr_currenttime
scoreboard players operation orange gr_currentsec = orange gr_currenttime

scoreboard players operation orange gr_currentmin /= 6000 math
scoreboard players operation orange gr_currentsec /= 100 math
scoreboard players operation orange gr_currentsec %= 60 math
# 显示房间目标和当前用时
execute if score orange gr_currentsec matches 0..9 run title @a[team=orange] actionbar ["",{"score":{"name": "orange","objective": "gr_currentmin"}},":","0",{"score":{"name": "orange","objective": "gr_currentsec"}}," | ","[§e!§r]"," 开启通路，点亮迷宫底部的红石灯。"]
execute if score orange gr_currentsec matches 10..59 run title @a[team=orange] actionbar ["",{"score":{"name": "orange","objective": "gr_currentmin"}},":","",{"score":{"name": "orange","objective": "gr_currentsec"}}," | ","[§e!§r]"," 开启通路，点亮迷宫底部的红石灯。"]