
execute store result storage swiss abs_step int 1 run scoreboard players add step swiss_win_dif_matrix 1
function utils:swiss/win_dif_abs/macro with storage swiss

execute if score step swiss_win_dif_matrix matches ..87 run function utils:swiss/win_dif_abs/loop