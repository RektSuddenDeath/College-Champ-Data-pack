
# 0:50 GOLD RUSH 1 INIT
execute if score minute master.timer matches 11 if score second master.timer matches 10 if score pause master.timer matches 0 run function railroadrush:goldrush/init
# 1:00 GOLD RUSH 1 START
execute if score minute master.timer matches 11 if score second master.timer matches 0 if score pause master.timer matches 0 run function railroadrush:goldrush/start_round

# 2:20 GOLD RUSH 1 END
execute if score minute master.timer matches 9 if score second master.timer matches 40 if score pause master.timer matches 0 run function railroadrush:goldrush/end_round

# 4:20 GOLD RUSH 2 INIT
execute if score minute master.timer matches 7 if score second master.timer matches 40 if score pause master.timer matches 0 run function railroadrush:goldrush/init

# 4:30 GOLD RUSH 2 START
execute if score minute master.timer matches 7 if score second master.timer matches 30 if score pause master.timer matches 0 run function railroadrush:goldrush/start_round

# 5:50 GOLD RUSH 2 END
execute if score minute master.timer matches 6 if score second master.timer matches 10 if score pause master.timer matches 0 run function railroadrush:goldrush/end_round

# 7:50 GOLD RUSH 3 INIT
execute if score minute master.timer matches 4 if score second master.timer matches 10 if score pause master.timer matches 0 run function railroadrush:goldrush/init

# 8:00 GOLD RUSH 3 START
execute if score minute master.timer matches 4 if score second master.timer matches 0 if score pause master.timer matches 0 run function railroadrush:goldrush/start_round

# 9:20 GOLD RUSH 3 END
execute if score minute master.timer matches 2 if score second master.timer matches 40 if score pause master.timer matches 0 run function railroadrush:goldrush/end_round

# 11:00 ONE MINUTE WARNING
execute if score minute master.timer matches 1 if score second master.timer matches 0 if score pause master.timer matches 0 run execute as @a at @s run playsound sound.generalshrinkwarn record @s
execute if score minute master.timer matches 1 if score second master.timer matches 0 if score pause master.timer matches 0 run tellraw @a ["§c[§f褿§c] §c游戏时间仅剩1分钟！"]

# 11:15 OVERTIME
execute if score minute master.timer matches 0 if score second master.timer matches 45 if score pause master.timer matches 0 run function master:overtime/init
execute if score minute master.timer matches 0 if score second master.timer matches 45 if score pause master.timer matches 0 run schedule clear railroadrush:modifiers/order_up/loop
# 12:00 GAME END
execute if score minute master.timer matches 0 if score second master.timer matches 0 run function railroadrush:end


# GLOW
effect give @a[team=!spec] glowing infinite 0 true

execute if score RoundActive tourney_stats matches 1 run schedule function railroadrush:timing 1s