
scoreboard objectives remove rrr_rank_temp
scoreboard objectives remove rrr_rank_result
scoreboard objectives remove rrr_rank_storage
scoreboard objectives remove rrr_rank_storage2
scoreboard objectives add rrr_rank_temp dummy
scoreboard objectives add rrr_rank_result dummy
scoreboard objectives add rrr_rank_storage dummy
scoreboard objectives add rrr_rank_storage2 dummy

execute as @e[type=marker,tag=rrr_temp_rank] run scoreboard players add total rrr_rank_temp 1

# Storage 1被排序，Storage2为积分
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_red] run scoreboard players operation @s rrr_rank_storage = red rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_blue] run scoreboard players operation @s rrr_rank_storage = blue rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_green] run scoreboard players operation @s rrr_rank_storage = green rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_yellow] run scoreboard players operation @s rrr_rank_storage = yellow rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_cyan] run scoreboard players operation @s rrr_rank_storage = cyan rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_pink] run scoreboard players operation @s rrr_rank_storage = pink rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_orange] run scoreboard players operation @s rrr_rank_storage = orange rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_purple] run scoreboard players operation @s rrr_rank_storage = purple rrr_emerald_team


execute as @e[type=marker,tag=rrr_temp_rank,tag=team_red] run scoreboard players operation @s rrr_rank_storage2 = red rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_blue] run scoreboard players operation @s rrr_rank_storage2 = blue rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_green] run scoreboard players operation @s rrr_rank_storage2 = green rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_yellow] run scoreboard players operation @s rrr_rank_storage2 = yellow rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_cyan] run scoreboard players operation @s rrr_rank_storage2 = cyan rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_pink] run scoreboard players operation @s rrr_rank_storage2 = pink rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_orange] run scoreboard players operation @s rrr_rank_storage2 = orange rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_purple] run scoreboard players operation @s rrr_rank_storage2 = purple rrr_emerald_team

execute as @e[type=marker,tag=rrr_temp_rank] run scoreboard players operation @s rrr_rank_storage2 *= per_emerald rrr_stats
execute as @e[type=marker,tag=rrr_temp_rank] run scoreboard players operation @s rrr_temp_score += @s rrr_rank_storage2

scoreboard players set step rrr_rank_temp 0
function railroadrush:scoring/sort
function railroadrush:scoring/emerald/announce
