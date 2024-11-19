
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_red] run scoreboard players operation @s rrr_rank_storage = red rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_blue] run scoreboard players operation @s rrr_rank_storage = blue rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_green] run scoreboard players operation @s rrr_rank_storage = green rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_yellow] run scoreboard players operation @s rrr_rank_storage = yellow rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_cyan] run scoreboard players operation @s rrr_rank_storage = cyan rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_pink] run scoreboard players operation @s rrr_rank_storage = pink rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_orange] run scoreboard players operation @s rrr_rank_storage = orange rrr_emerald_team
execute as @e[type=marker,tag=rrr_temp_rank,tag=team_purple] run scoreboard players operation @s rrr_rank_storage = purple rrr_emerald_team

tellraw @a ""
tellraw @a "§l采集绿宝石得分："
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=1}] run tellraw @a ["  1. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"        ",{"score":{"name": "@s","objective": "rrr_rank_storage2"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=2}] run tellraw @a ["  2. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"        ",{"score":{"name": "@s","objective": "rrr_rank_storage2"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=3}] run tellraw @a ["  3. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"        ",{"score":{"name": "@s","objective": "rrr_rank_storage2"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=4}] run tellraw @a ["  4. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"        ",{"score":{"name": "@s","objective": "rrr_rank_storage2"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=5}] run tellraw @a ["  5. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"        ",{"score":{"name": "@s","objective": "rrr_rank_storage2"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=6}] run tellraw @a ["  6. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"        ",{"score":{"name": "@s","objective": "rrr_rank_storage2"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=7}] run tellraw @a ["  7. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"        ",{"score":{"name": "@s","objective": "rrr_rank_storage2"},"color": "gold"},"§6pts"]
execute as @e[type=marker,tag=rrr_temp_rank,scores={rrr_rank_result=8}] run tellraw @a ["  8. ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "rrr_rank_storage"}},"        ",{"score":{"name": "@s","objective": "rrr_rank_storage2"},"color": "gold"},"§6pts"]
tellraw @a ""

execute as @a[team=!spec] at @s run playsound sound.acquire record @s