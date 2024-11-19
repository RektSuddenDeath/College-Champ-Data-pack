
# 增加1t
scoreboard players add yellow gr_currenttime 5
# 精确时间显示
scoreboard players operation yellow gr_currentmin = yellow gr_currenttime
scoreboard players operation yellow gr_currentsec = yellow gr_currenttime

scoreboard players operation yellow gr_currentmin /= 6000 math
scoreboard players operation yellow gr_currentsec /= 100 math
scoreboard players operation yellow gr_currentsec %= 60 math
# 显示房间目标和当前用时
execute if score yellow gr_currentsec matches 0..9 run title @a[team=yellow] actionbar ["",{"score":{"name": "yellow","objective": "gr_currentmin"}},":","0",{"score":{"name": "yellow","objective": "gr_currentsec"}}," | ","[§e!§r]"," 击败全部怪物。"]
execute if score yellow gr_currentsec matches 10..59 run title @a[team=yellow] actionbar ["",{"score":{"name": "yellow","objective": "gr_currentmin"}},":","",{"score":{"name": "yellow","objective": "gr_currentsec"}}," | ","[§e!§r]"," 击败全部怪物。"]