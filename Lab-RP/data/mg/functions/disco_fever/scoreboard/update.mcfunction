
# Macro Items
execute store result storage mg:disco_fever totalplayers int 1 run scoreboard players get TotalPlayers mg_df_game

scoreboard players set AlivePlayers mg_df_game 0
execute as @a[gamemode=!spectator] run scoreboard players add AlivePlayers mg_df_game 1

execute store result storage mg:disco_fever aliveplayers int 1 run scoreboard players get AlivePlayers mg_df_game
execute store result storage mg:disco_fever platform int 1 run scoreboard players get platform mg_df_game

scoreboard players operation duration_sec mg_df_game = duration_tick mg_df_game
scoreboard players operation duration_min mg_df_game = duration_tick mg_df_game

scoreboard players operation duration_min mg_df_game /= 60 math
scoreboard players operation duration_min mg_df_game /= 20 math

scoreboard players operation duration_sec mg_df_game /= 20 math
scoreboard players operation duration_sec mg_df_game %= 60 math

execute if score duration_sec mg_df_game matches 0..9 run scoreboard players set duration_sec_0 mg_df_game 0
execute unless score duration_sec mg_df_game matches 0..9 run scoreboard players reset duration_sec_0 mg_df_game

execute store result storage mg:disco_fever duration_min int 1 run scoreboard players get duration_min mg_df_game
execute store result storage mg:disco_fever duration_sec int 1 run scoreboard players get duration_sec mg_df_game

execute if score duration_sec_0 mg_df_game matches -2147483648..2147483647 store result storage mg:disco_fever duration_sec_0 int 1 run scoreboard players get duration_sec_0 mg_df_sb
execute unless score duration_sec_0 mg_df_game matches -2147483648..2147483647 run data modify storage mg:disco_fever duration_sec_0 set value ""

# Macro Update
function mg:disco_fever/scoreboard/update_macro with storage mg:disco_fever
