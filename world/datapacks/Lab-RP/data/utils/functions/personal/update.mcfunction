
scoreboard objectives add personalcalc_t dummy
scoreboard objectives add personal_t dummy

scoreboard players set @a personalRank -1

scoreboard players set $totalPlayers personalcalc_t 0
scoreboard players set $curPos personalcalc_t 1


execute as @a[team=!spec] run scoreboard players operation @s personal_t = @s tourney_indv
execute as @a[team=!spec] run scoreboard players add $totalPlayers personalcalc_t 1

# 递归生成玩家排名
tag @a[team=!spec] add personal_unranked
execute if score $totalPlayers personalcalc_t >= 1 math run function utils:personal/loop

# 只显示前50%玩家的排名
scoreboard players operation $totalPlayers personalcalc_t /= 2 math
scoreboard players operation $displayRankMin personalRank = $totalPlayers personalcalc_t

# Clean Up
scoreboard objectives remove personalcalc_t
scoreboard objectives remove personal_t