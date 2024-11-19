
scoreboard objectives remove rrr_rank_temp
scoreboard objectives remove rrr_rank_result2
scoreboard objectives remove rrr_rank_storage
scoreboard objectives remove rrr_rank_storage2
scoreboard objectives add rrr_rank_temp dummy
scoreboard objectives add rrr_rank_result2 dummy
scoreboard objectives add rrr_rank_storage dummy
scoreboard objectives add rrr_rank_storage2 dummy

# Storage 1为distance Storage 2为checkpoints
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_red] run scoreboard players operation @s rrr_rank_storage = red rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_blue] run scoreboard players operation @s rrr_rank_storage = blue rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_green] run scoreboard players operation @s rrr_rank_storage = green rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_yellow] run scoreboard players operation @s rrr_rank_storage = yellow rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_cyan] run scoreboard players operation @s rrr_rank_storage = cyan rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_pink] run scoreboard players operation @s rrr_rank_storage = pink rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_orange] run scoreboard players operation @s rrr_rank_storage = orange rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_purple] run scoreboard players operation @s rrr_rank_storage = purple rrr_distance_final

execute as @e[type=marker,tag=rrr_temp_rank] run scoreboard players operation @s rrr_rank_storage *= distance_a rrr_stats
execute as @e[type=marker,tag=rrr_temp_rank] run scoreboard players operation @s rrr_rank_storage /= distance_b rrr_stats

execute as @e[type=marker,tag=rrr_temp_rank] run scoreboard players operation @s rrr_rank_result2 += @s rrr_rank_storage

execute as @e[type=marker,tag=rrr_temp_rank,tag=team_red] run scoreboard players operation @s rrr_rank_storage2 = red rrr_checkpoint_reached
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_blue] run scoreboard players operation @s rrr_rank_storage2 = blue rrr_checkpoint_reached
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_green] run scoreboard players operation @s rrr_rank_storage2 = green rrr_checkpoint_reached
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_yellow] run scoreboard players operation @s rrr_rank_storage2 = yellow rrr_checkpoint_reached
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_cyan] run scoreboard players operation @s rrr_rank_storage2 = cyan rrr_checkpoint_reached
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_pink] run scoreboard players operation @s rrr_rank_storage2 = pink rrr_checkpoint_reached
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_orange] run scoreboard players operation @s rrr_rank_storage2 = orange rrr_checkpoint_reached
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_purple] run scoreboard players operation @s rrr_rank_storage2 = purple rrr_checkpoint_reached

execute as @e[type=marker,tag=rrr_temp_rank] run scoreboard players operation @s rrr_rank_storage2 *= per_checkpoint rrr_stats
execute as @e[type=marker,tag=rrr_temp_rank] run scoreboard players operation @s rrr_rank_result2 += @s rrr_rank_storage2

function railroadrush:scoring/race_distance/announce
