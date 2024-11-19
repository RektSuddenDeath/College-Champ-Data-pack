
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_red] run scoreboard players operation @s rrr_rank_storage = red rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_blue] run scoreboard players operation @s rrr_rank_storage = blue rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_green] run scoreboard players operation @s rrr_rank_storage = green rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_yellow] run scoreboard players operation @s rrr_rank_storage = yellow rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_cyan] run scoreboard players operation @s rrr_rank_storage = cyan rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_pink] run scoreboard players operation @s rrr_rank_storage = pink rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_orange] run scoreboard players operation @s rrr_rank_storage = orange rrr_distance_final
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_purple] run scoreboard players operation @s rrr_rank_storage = purple rrr_distance_final


execute as @e[type=marker,tag=rrr_temp_rank,tag=team_red] run scoreboard players operation @s rrr_rank_storage2 = red rrr_checkpoint_reached
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_blue] run scoreboard players operation @s rrr_rank_storage2 = blue rrr_checkpoint_reached
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_green] run scoreboard players operation @s rrr_rank_storage2 = green rrr_checkpoint_reached
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_yellow] run scoreboard players operation @s rrr_rank_storage2 = yellow rrr_checkpoint_reached
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_cyan] run scoreboard players operation @s rrr_rank_storage2 = cyan rrr_checkpoint_reached
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_pink] run scoreboard players operation @s rrr_rank_storage2 = pink rrr_checkpoint_reached
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_orange] run scoreboard players operation @s rrr_rank_storage2 = orange rrr_checkpoint_reached
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_purple] run scoreboard players operation @s rrr_rank_storage2 = purple rrr_checkpoint_reached

tellraw @a ""
tellraw @a "§l矿车行进距离："
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=1}] run tellraw @a ["  1. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"m    ",{"score":{"name": "@s","objective": "rrr_rank_storage2"}},"个记录点","       ",{"score":{"name": "@s","objective": "rrr_rank_result2"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=2}] run tellraw @a ["  2. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"m    ",{"score":{"name": "@s","objective": "rrr_rank_storage2"}},"个记录点","       ",{"score":{"name": "@s","objective": "rrr_rank_result2"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=3}] run tellraw @a ["  3. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"m    ",{"score":{"name": "@s","objective": "rrr_rank_storage2"}},"个记录点","       ",{"score":{"name": "@s","objective": "rrr_rank_result2"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=4}] run tellraw @a ["  4. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"m    ",{"score":{"name": "@s","objective": "rrr_rank_storage2"}},"个记录点","       ",{"score":{"name": "@s","objective": "rrr_rank_result2"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=5}] run tellraw @a ["  5. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"m    ",{"score":{"name": "@s","objective": "rrr_rank_storage2"}},"个记录点","       ",{"score":{"name": "@s","objective": "rrr_rank_result2"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=6}] run tellraw @a ["  6. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"m    ",{"score":{"name": "@s","objective": "rrr_rank_storage2"}},"个记录点","       ",{"score":{"name": "@s","objective": "rrr_rank_result2"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=7}] run tellraw @a ["  7. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"m    ",{"score":{"name": "@s","objective": "rrr_rank_storage2"}},"个记录点","       ",{"score":{"name": "@s","objective": "rrr_rank_result2"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=8}] run tellraw @a ["  8. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"m    ",{"score":{"name": "@s","objective": "rrr_rank_storage2"}},"个记录点","       ",{"score":{"name": "@s","objective": "rrr_rank_result2"},"color": "gold"},"§6pts"]
tellraw @a ""

execute as @e[type=marker,tag=rrr_temp_rank] run scoreboard players operation @s rrr_temp_score += @s rrr_rank_result2

execute as @a[team=!spec] at @s run playsound sound.acquire record @s