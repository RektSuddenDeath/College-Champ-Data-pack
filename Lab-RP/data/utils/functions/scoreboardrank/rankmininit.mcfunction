# 以排名为目标再次递归，但是根据队伍顺序依次扣除-1..-8的量，以防止计分板重合
execute as @e[type=marker,tag=sbrank.t] run scoreboard players operation @s sbrank_temp = @s sbrank_rank

scoreboard players remove @e[type=marker,tag=red,tag=sbrank.t] sbrank_temp 1
scoreboard players remove @e[type=marker,tag=blue,tag=sbrank.t] sbrank_temp 2
scoreboard players remove @e[type=marker,tag=green,tag=sbrank.t] sbrank_temp 3
scoreboard players remove @e[type=marker,tag=yellow,tag=sbrank.t] sbrank_temp 4
scoreboard players remove @e[type=marker,tag=cyan,tag=sbrank.t] sbrank_temp 5
scoreboard players remove @e[type=marker,tag=pink,tag=sbrank.t] sbrank_temp 6
scoreboard players remove @e[type=marker,tag=orange,tag=sbrank.t] sbrank_temp 7
scoreboard players remove @e[type=marker,tag=purple,tag=sbrank.t] sbrank_temp 8

scoreboard players set CurrentPos sbrank_temp 1
function utils:scoreboardrank/rankmin