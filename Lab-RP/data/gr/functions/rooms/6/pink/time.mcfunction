
# 增加1t
scoreboard players add pink gr_currenttime 5
# 精确时间显示
scoreboard players operation pink gr_currentmin = pink gr_currenttime
scoreboard players operation pink gr_currentsec = pink gr_currenttime

scoreboard players operation pink gr_currentmin /= 6000 math
scoreboard players operation pink gr_currentsec /= 100 math
scoreboard players operation pink gr_currentsec %= 60 math
# 显示房间目标和当前用时
execute if score pink gr_currentsec matches 0..9 run title @a[team=pink] actionbar ["",{"score":{"name": "pink","objective": "gr_currentmin"}},":","0",{"score":{"name": "pink","objective": "gr_currentsec"}}," | ","[§e!§r]"," 合成装备。"]
execute if score pink gr_currentsec matches 10..59 run title @a[team=pink] actionbar ["",{"score":{"name": "pink","objective": "gr_currentmin"}},":","",{"score":{"name": "pink","objective": "gr_currentsec"}}," | ","[§e!§r]"," 合成装备。"]