
scoreboard players set $Min sbrank_temp 2147483646

execute as @e[type=marker,tag=sbrank.t] run scoreboard players operation $Min sbrank_temp < @s sbrank_temp

execute as @e[type=marker,tag=sbrank.t] if score @s sbrank_temp = $Min sbrank_temp run scoreboard players operation @s sbrank_rank = CurrentPos sbrank_temp
execute as @e[type=marker,tag=sbrank.t] if score @s sbrank_temp = $Min sbrank_temp run scoreboard players add CurrentPos sbrank_temp 1
execute as @e[type=marker,tag=sbrank.t] if score @s sbrank_temp = $Min sbrank_temp run scoreboard players set @s sbrank_temp 2147483647

execute if score CurrentPos sbrank_temp matches ..8 run function utils:scoreboardrank/rankmin