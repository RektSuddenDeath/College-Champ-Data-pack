
scoreboard objectives remove rrr_rank_temp
scoreboard objectives remove rrr_rank_result
scoreboard objectives remove rrr_rank_storage
scoreboard objectives add rrr_rank_temp dummy
scoreboard objectives add rrr_rank_result dummy
scoreboard objectives add rrr_rank_storage dummy


execute as @e[type=marker,tag=rrr_temp_rank] run scoreboard players add total rrr_rank_temp 1

# 记录分数
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_red] run scoreboard players operation @s rrr_rank_storage = red rrr_gold_rush_round_3
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_blue] run scoreboard players operation @s rrr_rank_storage = blue rrr_gold_rush_round_3
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_green] run scoreboard players operation @s rrr_rank_storage = green rrr_gold_rush_round_3
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_yellow] run scoreboard players operation @s rrr_rank_storage = yellow rrr_gold_rush_round_3
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_cyan] run scoreboard players operation @s rrr_rank_storage = cyan rrr_gold_rush_round_3
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_pink] run scoreboard players operation @s rrr_rank_storage = pink rrr_gold_rush_round_3
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_orange] run scoreboard players operation @s rrr_rank_storage = orange rrr_gold_rush_round_3
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_purple] run scoreboard players operation @s rrr_rank_storage = purple rrr_gold_rush_round_3


function railroadrush:scoring/sort
function railroadrush:scoring/gold_rush/announce3