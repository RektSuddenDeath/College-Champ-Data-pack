
# 十位数和个位分别是两个队伍的编号。
scoreboard objectives add swiss_win_dif_matrix dummy

scoreboard players operation 12 swiss_win_dif_matrix = red swiss_win_count
scoreboard players operation 13 swiss_win_dif_matrix = red swiss_win_count
scoreboard players operation 14 swiss_win_dif_matrix = red swiss_win_count
scoreboard players operation 15 swiss_win_dif_matrix = red swiss_win_count
scoreboard players operation 16 swiss_win_dif_matrix = red swiss_win_count
scoreboard players operation 17 swiss_win_dif_matrix = red swiss_win_count
scoreboard players operation 18 swiss_win_dif_matrix = red swiss_win_count

scoreboard players operation 23 swiss_win_dif_matrix = blue swiss_win_count
scoreboard players operation 24 swiss_win_dif_matrix = blue swiss_win_count
scoreboard players operation 25 swiss_win_dif_matrix = blue swiss_win_count
scoreboard players operation 26 swiss_win_dif_matrix = blue swiss_win_count
scoreboard players operation 27 swiss_win_dif_matrix = blue swiss_win_count
scoreboard players operation 28 swiss_win_dif_matrix = blue swiss_win_count

scoreboard players operation 34 swiss_win_dif_matrix = green swiss_win_count
scoreboard players operation 35 swiss_win_dif_matrix = green swiss_win_count
scoreboard players operation 36 swiss_win_dif_matrix = green swiss_win_count
scoreboard players operation 37 swiss_win_dif_matrix = green swiss_win_count
scoreboard players operation 38 swiss_win_dif_matrix = green swiss_win_count

scoreboard players operation 45 swiss_win_dif_matrix = yellow swiss_win_count
scoreboard players operation 46 swiss_win_dif_matrix = yellow swiss_win_count
scoreboard players operation 47 swiss_win_dif_matrix = yellow swiss_win_count
scoreboard players operation 48 swiss_win_dif_matrix = yellow swiss_win_count

scoreboard players operation 56 swiss_win_dif_matrix = cyan swiss_win_count
scoreboard players operation 57 swiss_win_dif_matrix = cyan swiss_win_count
scoreboard players operation 58 swiss_win_dif_matrix = cyan swiss_win_count

scoreboard players operation 67 swiss_win_dif_matrix = pink swiss_win_count
scoreboard players operation 68 swiss_win_dif_matrix = pink swiss_win_count

scoreboard players operation 78 swiss_win_dif_matrix = orange swiss_win_count


scoreboard players operation 12 swiss_win_dif_matrix -= blue swiss_win_count

scoreboard players operation 13 swiss_win_dif_matrix -= green swiss_win_count
scoreboard players operation 23 swiss_win_dif_matrix -= green swiss_win_count

scoreboard players operation 14 swiss_win_dif_matrix -= yellow swiss_win_count
scoreboard players operation 24 swiss_win_dif_matrix -= yellow swiss_win_count
scoreboard players operation 34 swiss_win_dif_matrix -= yellow swiss_win_count

scoreboard players operation 15 swiss_win_dif_matrix -= cyan swiss_win_count
scoreboard players operation 25 swiss_win_dif_matrix -= cyan swiss_win_count
scoreboard players operation 35 swiss_win_dif_matrix -= cyan swiss_win_count
scoreboard players operation 45 swiss_win_dif_matrix -= cyan swiss_win_count

scoreboard players operation 16 swiss_win_dif_matrix -= pink swiss_win_count
scoreboard players operation 26 swiss_win_dif_matrix -= pink swiss_win_count
scoreboard players operation 36 swiss_win_dif_matrix -= pink swiss_win_count
scoreboard players operation 46 swiss_win_dif_matrix -= pink swiss_win_count
scoreboard players operation 56 swiss_win_dif_matrix -= pink swiss_win_count

scoreboard players operation 17 swiss_win_dif_matrix -= orange swiss_win_count
scoreboard players operation 27 swiss_win_dif_matrix -= orange swiss_win_count
scoreboard players operation 37 swiss_win_dif_matrix -= orange swiss_win_count
scoreboard players operation 47 swiss_win_dif_matrix -= orange swiss_win_count
scoreboard players operation 57 swiss_win_dif_matrix -= orange swiss_win_count
scoreboard players operation 67 swiss_win_dif_matrix -= orange swiss_win_count

scoreboard players operation 18 swiss_win_dif_matrix -= purple swiss_win_count
scoreboard players operation 28 swiss_win_dif_matrix -= purple swiss_win_count
scoreboard players operation 38 swiss_win_dif_matrix -= purple swiss_win_count
scoreboard players operation 48 swiss_win_dif_matrix -= purple swiss_win_count
scoreboard players operation 58 swiss_win_dif_matrix -= purple swiss_win_count
scoreboard players operation 68 swiss_win_dif_matrix -= purple swiss_win_count
scoreboard players operation 78 swiss_win_dif_matrix -= purple swiss_win_count

# Absolute Value
scoreboard players set -1 math -1
scoreboard players set step swiss_win_dif_matrix 11
function utils:swiss/win_dif_abs/loop