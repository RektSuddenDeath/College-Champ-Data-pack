

# Time Controller

execute if score floorstate mg_df_game matches 1 run scoreboard players remove timer_value mg_df_game 1
execute if score floorstate mg_df_game matches 2 run scoreboard players add timer_value mg_df_game 1


execute if score timer_value mg_df_game matches 0 if score floorstate_prev mg_df_game matches 1 run scoreboard players set floorstate mg_df_game 2
execute if score timer_value mg_df_game matches 30 if score floorstate_prev mg_df_game matches 2 run scoreboard players set floorstate mg_df_game 1

# FLOOR STATE SWITCH: 1
execute if score floorstate mg_df_game matches 1 unless score floorstate_prev mg_df_game = floorstate mg_df_game run function mg:disco_fever/game_action/new_floor
# FLOOR STATE SWITCH: 2
execute if score floorstate mg_df_game matches 2 unless score floorstate_prev mg_df_game = floorstate mg_df_game run function mg:disco_fever/game_action/end_floor

# Bossbar Value
execute store result bossbar mg_df_timer value run scoreboard players get timer_value mg_df_game
execute store result bossbar mg_df_timer max run scoreboard players get timer_max mg_df_game

# Scoreboard
scoreboard players add duration_tick mg_df_game 1
function mg:disco_fever/scoreboard/update

# Actionbar
execute if score floorstate mg_df_game matches 1 if score $selected mg_df_game matches 1 run title @a actionbar "§d§l紫水晶块"
execute if score floorstate mg_df_game matches 1 if score $selected mg_df_game matches 2 run title @a actionbar "§b§l钻石块"
execute if score floorstate mg_df_game matches 1 if score $selected mg_df_game matches 3 run title @a actionbar "§c§l红色混凝土"
execute if score floorstate mg_df_game matches 1 if score $selected mg_df_game matches 4 run title @a actionbar "§1§l青金石块"

# Elimination
scoreboard objectives add mg_df_y dummy
scoreboard players set $min mg_df_y 70
execute as @a[gamemode=!spectator] run execute store result score @s mg_df_y run data get entity @s Pos[1]
execute as @a[gamemode=!spectator] if score @s mg_df_y < $min mg_df_y at @s run function mg:disco_fever/game_action/eliminated
scoreboard objectives remove mg_df_y

scoreboard players operation floorstate_prev mg_df_game = floorstate mg_df_game


execute if score gameflag mg_df_game matches 1 run schedule function mg:disco_fever/inround_loop 1t