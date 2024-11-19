
# Every Leap, reduce the amount of players allowed through by 1/(Leaps-1)

execute if score current_leap pkws_qualify_limit_temp matches 1 run scoreboard players operation 1 pkws_qualify_limit_max = players pkws_game

execute if score current_leap pkws_qualify_limit_temp matches 2 run scoreboard players operation 2 pkws_qualify_limit_max = players pkws_game
execute if score current_leap pkws_qualify_limit_temp matches 2 run scoreboard players operation 2 pkws_qualify_limit_max *= leaps_to_calc_left pkws_qualify_limit_temp
execute if score current_leap pkws_qualify_limit_temp matches 2 run scoreboard players operation 2 pkws_qualify_limit_max /= leaps_division pkws_game

execute if score current_leap pkws_qualify_limit_temp matches 3 run scoreboard players operation 3 pkws_qualify_limit_max = players pkws_game
execute if score current_leap pkws_qualify_limit_temp matches 3 run scoreboard players operation 3 pkws_qualify_limit_max *= leaps_to_calc_left pkws_qualify_limit_temp
execute if score current_leap pkws_qualify_limit_temp matches 3 run scoreboard players operation 3 pkws_qualify_limit_max /= leaps_division pkws_game

execute if score current_leap pkws_qualify_limit_temp matches 4 run scoreboard players operation 4 pkws_qualify_limit_max = players pkws_game
execute if score current_leap pkws_qualify_limit_temp matches 4 run scoreboard players operation 4 pkws_qualify_limit_max *= leaps_to_calc_left pkws_qualify_limit_temp
execute if score current_leap pkws_qualify_limit_temp matches 4 run scoreboard players operation 4 pkws_qualify_limit_max /= leaps_division pkws_game

execute if score current_leap pkws_qualify_limit_temp matches 5 run scoreboard players operation 5 pkws_qualify_limit_max = players pkws_game
execute if score current_leap pkws_qualify_limit_temp matches 5 run scoreboard players operation 5 pkws_qualify_limit_max *= leaps_to_calc_left pkws_qualify_limit_temp
execute if score current_leap pkws_qualify_limit_temp matches 5 run scoreboard players operation 5 pkws_qualify_limit_max /= leaps_division pkws_game

execute if score current_leap pkws_qualify_limit_temp matches 6 run scoreboard players operation 6 pkws_qualify_limit_max = players pkws_game
execute if score current_leap pkws_qualify_limit_temp matches 6 run scoreboard players operation 6 pkws_qualify_limit_max *= leaps_to_calc_left pkws_qualify_limit_temp
execute if score current_leap pkws_qualify_limit_temp matches 6 run scoreboard players operation 6 pkws_qualify_limit_max /= leaps_division pkws_game

execute if score current_leap pkws_qualify_limit_temp matches 7 run scoreboard players operation 7 pkws_qualify_limit_max = players pkws_game
execute if score current_leap pkws_qualify_limit_temp matches 7 run scoreboard players operation 7 pkws_qualify_limit_max *= leaps_to_calc_left pkws_qualify_limit_temp
execute if score current_leap pkws_qualify_limit_temp matches 7 run scoreboard players operation 7 pkws_qualify_limit_max /= leaps_division pkws_game

execute if score current_leap pkws_qualify_limit_temp matches 8 run scoreboard players operation 8 pkws_qualify_limit_max = players pkws_game
execute if score current_leap pkws_qualify_limit_temp matches 8 run scoreboard players operation 8 pkws_qualify_limit_max *= leaps_to_calc_left pkws_qualify_limit_temp
execute if score current_leap pkws_qualify_limit_temp matches 8 run scoreboard players operation 8 pkws_qualify_limit_max /= leaps_division pkws_game

execute if score current_leap pkws_qualify_limit_temp matches 9 run scoreboard players operation 9 pkws_qualify_limit_max = players pkws_game
execute if score current_leap pkws_qualify_limit_temp matches 9 run scoreboard players operation 9 pkws_qualify_limit_max *= leaps_to_calc_left pkws_qualify_limit_temp
execute if score current_leap pkws_qualify_limit_temp matches 9 run scoreboard players operation 9 pkws_qualify_limit_max /= leaps_division pkws_game

execute if score current_leap pkws_qualify_limit_temp matches 10 run scoreboard players operation 10 pkws_qualify_limit_max = players pkws_game
execute if score current_leap pkws_qualify_limit_temp matches 10 run scoreboard players operation 10 pkws_qualify_limit_max *= leaps_to_calc_left pkws_qualify_limit_temp
execute if score current_leap pkws_qualify_limit_temp matches 10 run scoreboard players operation 10 pkws_qualify_limit_max /= leaps_division pkws_game

execute if score current_leap pkws_qualify_limit_temp matches 11 run scoreboard players operation 11 pkws_qualify_limit_max = players pkws_game
execute if score current_leap pkws_qualify_limit_temp matches 11 run scoreboard players operation 11 pkws_qualify_limit_max *= leaps_to_calc_left pkws_qualify_limit_temp
execute if score current_leap pkws_qualify_limit_temp matches 11 run scoreboard players operation 11 pkws_qualify_limit_max /= leaps_division pkws_game

execute if score current_leap pkws_qualify_limit_temp matches 12 run scoreboard players operation 12 pkws_qualify_limit_max = players pkws_game
execute if score current_leap pkws_qualify_limit_temp matches 12 run scoreboard players operation 12 pkws_qualify_limit_max *= leaps_to_calc_left pkws_qualify_limit_temp
execute if score current_leap pkws_qualify_limit_temp matches 12 run scoreboard players operation 12 pkws_qualify_limit_max /= leaps_division pkws_game


scoreboard players add current_leap pkws_qualify_limit_temp 1
scoreboard players remove leaps_to_calc_left pkws_qualify_limit_temp 1
execute if score leaps_to_calc_left pkws_qualify_limit_temp matches 0 run function pkws:init_functions/qualify_limit_final_leap
execute if score leaps_to_calc_left pkws_qualify_limit_temp matches 0 run return 1

function pkws:init_functions/qualify_limit_loop