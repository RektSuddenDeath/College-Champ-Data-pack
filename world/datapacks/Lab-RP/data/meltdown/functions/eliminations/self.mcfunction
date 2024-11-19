


gamemode spectator @s
clear @s

# Remove frozen state effects
effect clear @s slowness
effect clear @s jump_boost

execute if entity @s[tag=meltdown_frozen,tag=!falling_while_frozen] at @s run fill ~ ~-1 ~ ~ ~2 ~ air replace brown_stained_glass
execute if entity @s[tag=meltdown_frozen,tag=!falling_while_frozen] at @s positioned ~-0.49 ~ ~-0.49 run kill @e[type=block_display,tag=freeze_ice_block,limit=1,sort=nearest,distance=0..1]
execute if entity @s[tag=meltdown_frozen,tag=!falling_while_frozen] at @s run kill @e[type=marker,tag=freeze_victim_anchor,limit=1,sort=nearest,distance=0..1]

scoreboard players set @s meltdown_heater_cooldown -1
scoreboard players set @s meltdown_heat -1
scoreboard players set @s meltdown_freeze_since -1
scoreboard players set @s meltdown_player_is_frozen 0
scoreboard players set @s meltdown_team_frozen_delay -1

tag @s remove meltdown_alive
tag @s remove meltdown_frozen
tag @s remove queue_eliminated
tag @s remove falling_while_frozen

# Placement
scoreboard players operation @s meltdown_round_placement = AlivePlayers meltdown_game
scoreboard players remove AlivePlayers meltdown_game 1

# Recap
execute if score round meltdown_game matches 1 run scoreboard players operation @s meltdown_recap_r1 = @s meltdown_round_placement
execute if score round meltdown_game matches 2 run scoreboard players operation @s meltdown_recap_r2 = @s meltdown_round_placement
execute if score round meltdown_game matches 3 run scoreboard players operation @s meltdown_recap_r3 = @s meltdown_round_placement

execute if score round meltdown_game matches 3 run function meltdown:player_action/play_recap
# Remaining Players Notif
execute if score AlivePlayers meltdown_game matches 20 run tellraw @a ["§b[§r嚘§b] ","§b剩余",{"text": "20","color": "#E3E3E3"},"§b名玩家！"]
execute if score AlivePlayers meltdown_game matches 10 run tellraw @a ["§b[§r嚘§b] ","§b剩余",{"text": "10","color": "#E3E3E3"},"§b名玩家！"]
execute if score AlivePlayers meltdown_game matches 5 run tellraw @a ["§b[§r嚘§b] ","§b剩余",{"text": "5","color": "#E3E3E3"},"§b名玩家！"]
execute if score AlivePlayers meltdown_game matches 4 run tellraw @a ["§b[§r嚘§b] ","§b剩余",{"text": "4","color": "#E3E3E3"},"§b名玩家！"]
execute if score AlivePlayers meltdown_game matches 3 run tellraw @a ["§b[§r嚘§b] ","§b剩余",{"text": "3","color": "#E3E3E3"},"§b名玩家！"]
execute if score AlivePlayers meltdown_game matches 2 run tellraw @a ["§b[§r嚘§b] ","§b剩余",{"text": "2","color": "#E3E3E3"},"§b名玩家！"]

# Teleport to somewhere