
# 增加1t
scoreboard players add purple gr_currenttime 5
# 精确时间显示
scoreboard players operation purple gr_currentmin = purple gr_currenttime
scoreboard players operation purple gr_currentsec = purple gr_currenttime

scoreboard players operation purple gr_currentmin /= 6000 math
scoreboard players operation purple gr_currentsec /= 100 math
scoreboard players operation purple gr_currentsec %= 60 math
# 显示房间目标和当前用时
execute if score purple gr_currentsec matches 0..9 run title @a[team=purple] actionbar ["",{"score":{"name": "purple","objective": "gr_currentmin"}},":","0",{"score":{"name": "purple","objective": "gr_currentsec"}}," | ","[§e!§r]"," 取得钥匙。"]
execute if score purple gr_currentsec matches 10..59 run title @a[team=purple] actionbar ["",{"score":{"name": "purple","objective": "gr_currentmin"}},":","",{"score":{"name": "purple","objective": "gr_currentsec"}}," | ","[§e!§r]"," 取得钥匙。"]