
scoreboard objectives add pkws_qualify_limit_temp dummy
scoreboard players operation leaps_to_calc_left pkws_qualify_limit_temp = leaps pkws_game
scoreboard players operation leaps_to_calc_left pkws_qualify_limit_temp -= 1 math

scoreboard players operation leaps_division pkws_qualify_limit_temp = leaps pkws_game
scoreboard players operation leaps_division pkws_qualify_limit_temp -= 1 math
scoreboard players set current_leap pkws_qualify_limit_temp 1

function pkws:init_functions/qualify_limit_loop

scoreboard objectives remove pkws_qualify_limit_temp