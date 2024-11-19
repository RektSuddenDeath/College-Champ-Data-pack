
scoreboard players set remix_mode tourney_stats 0
fill -9958 102 -9993 -9960 100 -9993 air destroy
scoreboard players add minute master.timer 1

tellraw @a "§d电梯谜题已被解开，Decision Dome特殊玩法开启！"
function decisiondome:elevatorjoke/11/remix_loop