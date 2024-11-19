
# 增加1t
$scoreboard players add $(team) gr_currenttime 5
# 精确时间显示
$scoreboard players operation $(team) gr_currentmin = $(team) gr_currenttime
$scoreboard players operation $(team) gr_currentsec = $(team) gr_currenttime

$scoreboard players operation $(team) gr_currentmin /= 6000 math
$scoreboard players operation $(team) gr_currentsec /= 100 math
$scoreboard players operation $(team) gr_currentsec %= 60 math
# 显示房间目标和当前用时
$execute if score $(team) gr_currentsec matches 0..9 run title @a[team=$(team)] actionbar ["",{"score":{"name": "$(team)","objective": "gr_currentmin"}},":","0",{"score":{"name": "$(team)","objective": "gr_currentsec"}}," | ","[§e!§r]"," 复制图案！"]
$execute if score $(team) gr_currentsec matches 10..59 run title @a[team=$(team)] actionbar ["",{"score":{"name": "$(team)","objective": "gr_currentmin"}},":","",{"score":{"name": "$(team)","objective": "gr_currentsec"}}," | ","[§e!§r]"," 复制图案！"]