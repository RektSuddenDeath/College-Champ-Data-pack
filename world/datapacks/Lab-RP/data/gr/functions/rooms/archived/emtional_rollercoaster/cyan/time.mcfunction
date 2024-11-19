
# 增加1t
scoreboard players add cyan gr_currenttime 5
# 精确时间显示
scoreboard players operation cyan gr_currentmin = cyan gr_currenttime
scoreboard players operation cyan gr_currentsec = cyan gr_currenttime

scoreboard players operation cyan gr_currentmin /= 6000 math
scoreboard players operation cyan gr_currentsec /= 100 math
scoreboard players operation cyan gr_currentsec %= 60 math
# 显示房间目标和当前用时
execute if score cyan gr_currentsec matches 0..9 run title @a[team=cyan] actionbar ["",{"score":{"name": "cyan","objective": "gr_currentmin"}},":","0",{"score":{"name": "cyan","objective": "gr_currentsec"}}," | ","[§e!§r]"," 取得钥匙。"]
execute if score cyan gr_currentsec matches 10..59 run title @a[team=cyan] actionbar ["",{"score":{"name": "cyan","objective": "gr_currentmin"}},":","",{"score":{"name": "cyan","objective": "gr_currentsec"}}," | ","[§e!§r]"," 取得钥匙。"]