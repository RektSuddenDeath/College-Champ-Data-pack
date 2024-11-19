
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_red] run scoreboard players operation @s rrr_rank_storage = red rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_blue] run scoreboard players operation @s rrr_rank_storage = blue rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_green] run scoreboard players operation @s rrr_rank_storage = green rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_yellow] run scoreboard players operation @s rrr_rank_storage = yellow rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_cyan] run scoreboard players operation @s rrr_rank_storage = cyan rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_pink] run scoreboard players operation @s rrr_rank_storage = pink rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_orange] run scoreboard players operation @s rrr_rank_storage = orange rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_purple] run scoreboard players operation @s rrr_rank_storage = purple rrr_distance_final

tellraw @a ""
tellraw @a "§l矿车竞逐结果："
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=1}] run tellraw @a ["  1. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"m","       ",{"score":{"name": "race_pos_1","objective": "rrr_stats"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=2}] run tellraw @a ["  2. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"m","       ",{"score":{"name": "race_pos_2","objective": "rrr_stats"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=3}] run tellraw @a ["  3. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"m","       ",{"score":{"name": "race_pos_3","objective": "rrr_stats"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=4}] run tellraw @a ["  4. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"m","       ",{"score":{"name": "race_pos_4","objective": "rrr_stats"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=5}] run tellraw @a ["  5. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"m","       ",{"score":{"name": "race_pos_5","objective": "rrr_stats"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=6}] run tellraw @a ["  6. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"m","       ",{"score":{"name": "race_pos_6","objective": "rrr_stats"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=7}] run tellraw @a ["  7. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"m","       ",{"score":{"name": "race_pos_7","objective": "rrr_stats"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=8}] run tellraw @a ["  8. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"m","       ",{"score":{"name": "race_pos_8","objective": "rrr_stats"},"color": "gold"},"§6pts"]
tellraw @a ""

execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=1}] run scoreboard players operation @s rrr_temp_score += race_pos_1 rrr_stats
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=2}] run scoreboard players operation @s rrr_temp_score += race_pos_2 rrr_stats
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=3}] run scoreboard players operation @s rrr_temp_score += race_pos_3 rrr_stats
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=4}] run scoreboard players operation @s rrr_temp_score += race_pos_4 rrr_stats
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=5}] run scoreboard players operation @s rrr_temp_score += race_pos_5 rrr_stats
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=6}] run scoreboard players operation @s rrr_temp_score += race_pos_6 rrr_stats
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=7}] run scoreboard players operation @s rrr_temp_score += race_pos_7 rrr_stats
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=8}] run scoreboard players operation @s rrr_temp_score += race_pos_8 rrr_stats

execute as @a[team=!spec] at @s run playsound sound.acquire record @s