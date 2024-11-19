
scoreboard players add step rrr_rank_temp 1
scoreboard players set marker rrr_rank_temp -9999999

execute as @e[type=marker,tag=rrr_temp_rank] run scoreboard players operation marker rrr_rank_temp > @s rrr_rank_storage
execute as @e[type=marker,tag=rrr_temp_rank] if score @s rrr_rank_storage = marker rrr_rank_temp run scoreboard players operation @s rrr_rank_result = step rrr_rank_temp
execute as @e[type=marker,tag=rrr_temp_rank] if score @s rrr_rank_storage = marker rrr_rank_temp run scoreboard players set @s rrr_rank_storage -10000000

execute if score step rrr_rank_temp < total rrr_rank_temp run function railroadrush:scoring/sort
