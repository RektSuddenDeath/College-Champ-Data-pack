
# 时间的单位是0.1ms. (0.0001s)
scoreboard players set this_time u_tickfix 1000000
# 获得100倍的当前tickrate，然后以此计算时间。
execute store result score this_tickrate u_tickfix run execute store result storage utils:tickfix tickrate_100x int 100 run tick query
scoreboard players operation this_time u_tickfix /= this_tickrate u_tickfix
scoreboard players operation this_factor u_tickfix = this_time u_tickfix
# 当延时超过一定数值（默认0.055s时，才会触发）
scoreboard players operation this_factor u_tickfix -= reduce_amount u_tickfix

# 如果factor>0，累加到补偿时间里面，否则清空
execute if score this_factor u_tickfix matches 1.. run scoreboard players operation current u_tickfix += this_factor u_tickfix
execute if score this_factor u_tickfix matches ..0 run scoreboard players set current u_tickfix 0

# Disable time compensation conditions. (Paused)
execute if score pause master.timer matches 1 run scoreboard players set current u_tickfix 0

# 当补偿时间因素大于1秒时，则从计时器额外扣除1秒。这要求计时器的second值是>1的. 然后清空补偿时间累计。
execute if score second master.timer matches 2.. if score current u_tickfix > threshold u_tickfix run scoreboard players remove second master.timer 1
## 如果是SOT，从所有队伍计时器扣除1秒。（只在队伍时间剩余10秒以上时生效）
execute if score ActiveGame tourney_stats matches 3 if score red SotTeamTime matches 11.. run function sot:time/sec/red
execute if score ActiveGame tourney_stats matches 3 if score blue SotTeamTime matches 11.. run function sot:time/sec/blue
execute if score ActiveGame tourney_stats matches 3 if score green SotTeamTime matches 11.. run function sot:time/sec/green
execute if score ActiveGame tourney_stats matches 3 if score yellow SotTeamTime matches 11.. run function sot:time/sec/yellow
execute if score ActiveGame tourney_stats matches 3 if score cyan SotTeamTime matches 11.. run function sot:time/sec/cyan
execute if score ActiveGame tourney_stats matches 3 if score pink SotTeamTime matches 11.. run function sot:time/sec/pink
execute if score ActiveGame tourney_stats matches 3 if score orange SotTeamTime matches 11.. run function sot:time/sec/orange
execute if score ActiveGame tourney_stats matches 3 if score purple SotTeamTime matches 11.. run function sot:time/sec/purple
## 复位
execute if score current u_tickfix > threshold u_tickfix run scoreboard players set current u_tickfix 0

schedule function utils:tickfix/loop 1t