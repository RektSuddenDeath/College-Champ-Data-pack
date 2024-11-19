
scoreboard objectives add temp_elev_tp_x dummy
scoreboard objectives add temp_elev_tp_y dummy

execute as @a[gamemode=!spectator] run execute store result score @s temp_elev_tp_x run data get entity @s Pos[0]
execute as @a[gamemode=!spectator] run execute store result score @s temp_elev_tp_y run data get entity @s Pos[1]

execute as @a[gamemode=!spectator] if score @s temp_elev_tp_x matches -9970.. if score @s temp_elev_tp_y matches ..82 run tp @s -9966 105 -10000 -90 0

scoreboard objectives remove temp_elev_tp_x
scoreboard objectives remove temp_elev_tp_y
execute if score lobby tourney_stats matches 1 run schedule function decisiondome:elevatorjoke/4 1t