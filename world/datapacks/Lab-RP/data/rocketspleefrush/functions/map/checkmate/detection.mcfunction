
function rocketspleefrush:death
execute if score minute master.timer matches 0 if score second master.timer matches 0 if score overtime_flag rsr_game matches 0 run tellraw @a ["§c[§r鼱§c] ","§c游戏在仅剩最后",{"text": "1","color": "#E3E3E3"},"§c个队伍时才会结束！"]
execute if score minute master.timer matches 0 if score second master.timer matches 0 if score overtime_flag rsr_game matches 0 run scoreboard players set overtime_flag rsr_game 1
execute if score gameflag rsr_game matches 1 run schedule function rocketspleefrush:map/checkmate/detection 1t