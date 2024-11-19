

# Priority 1-3
scoreboard objectives add swiss_sequence_total dummy
scoreboard objectives add swiss_sequence_max dummy
scoreboard objectives add swiss_sequence_amount dummy

scoreboard players set 1 swiss_sequence_total 0
scoreboard players set 2 swiss_sequence_total 0
scoreboard players set 3 swiss_sequence_total 0
scoreboard players set 4 swiss_sequence_total 0
scoreboard players set 5 swiss_sequence_total 0
scoreboard players set 6 swiss_sequence_total 0
scoreboard players set 7 swiss_sequence_total 0

scoreboard players set 1 swiss_sequence_max 0
scoreboard players set 2 swiss_sequence_max 0
scoreboard players set 3 swiss_sequence_max 0
scoreboard players set 4 swiss_sequence_max 0
scoreboard players set 5 swiss_sequence_max 0
scoreboard players set 6 swiss_sequence_max 0
scoreboard players set 7 swiss_sequence_max 0

scoreboard players set 1 swiss_sequence_amount 0
scoreboard players set 2 swiss_sequence_amount 0
scoreboard players set 3 swiss_sequence_amount 0
scoreboard players set 4 swiss_sequence_amount 0
scoreboard players set 5 swiss_sequence_amount 0
scoreboard players set 6 swiss_sequence_amount 0
scoreboard players set 7 swiss_sequence_amount 0
# Sequence Are:
# 1-2 3-4 5-6 7-8
# 1-3 2-4 5-7 6-8
# 1-4 2-3 5-8 6-7
# 1-5 2-6 3-7 4-8
# 1-6 2-5 3-8 4-7
# 1-7 2-8 3-5 4-6
# 1-8 2-7 3-6 4-5
scoreboard players operation 1 swiss_sequence_total += 12 swiss_win_dif_matrix
scoreboard players operation 1 swiss_sequence_total += 34 swiss_win_dif_matrix
scoreboard players operation 1 swiss_sequence_total += 56 swiss_win_dif_matrix
scoreboard players operation 1 swiss_sequence_total += 78 swiss_win_dif_matrix

scoreboard players operation 2 swiss_sequence_total += 13 swiss_win_dif_matrix
scoreboard players operation 2 swiss_sequence_total += 24 swiss_win_dif_matrix
scoreboard players operation 2 swiss_sequence_total += 57 swiss_win_dif_matrix
scoreboard players operation 2 swiss_sequence_total += 68 swiss_win_dif_matrix

scoreboard players operation 3 swiss_sequence_total += 14 swiss_win_dif_matrix
scoreboard players operation 3 swiss_sequence_total += 23 swiss_win_dif_matrix
scoreboard players operation 3 swiss_sequence_total += 58 swiss_win_dif_matrix
scoreboard players operation 3 swiss_sequence_total += 67 swiss_win_dif_matrix

scoreboard players operation 4 swiss_sequence_total += 15 swiss_win_dif_matrix
scoreboard players operation 4 swiss_sequence_total += 26 swiss_win_dif_matrix
scoreboard players operation 4 swiss_sequence_total += 37 swiss_win_dif_matrix
scoreboard players operation 4 swiss_sequence_total += 48 swiss_win_dif_matrix

scoreboard players operation 5 swiss_sequence_total += 16 swiss_win_dif_matrix
scoreboard players operation 5 swiss_sequence_total += 25 swiss_win_dif_matrix
scoreboard players operation 5 swiss_sequence_total += 38 swiss_win_dif_matrix
scoreboard players operation 5 swiss_sequence_total += 47 swiss_win_dif_matrix

scoreboard players operation 6 swiss_sequence_total += 17 swiss_win_dif_matrix
scoreboard players operation 6 swiss_sequence_total += 28 swiss_win_dif_matrix
scoreboard players operation 6 swiss_sequence_total += 35 swiss_win_dif_matrix
scoreboard players operation 6 swiss_sequence_total += 46 swiss_win_dif_matrix

scoreboard players operation 7 swiss_sequence_total += 18 swiss_win_dif_matrix
scoreboard players operation 7 swiss_sequence_total += 27 swiss_win_dif_matrix
scoreboard players operation 7 swiss_sequence_total += 36 swiss_win_dif_matrix
scoreboard players operation 7 swiss_sequence_total += 45 swiss_win_dif_matrix
# Max Difference
scoreboard players operation 1 swiss_sequence_max > 12 swiss_win_dif_matrix
scoreboard players operation 1 swiss_sequence_max > 34 swiss_win_dif_matrix
scoreboard players operation 1 swiss_sequence_max > 56 swiss_win_dif_matrix
scoreboard players operation 1 swiss_sequence_max > 78 swiss_win_dif_matrix

scoreboard players operation 2 swiss_sequence_max > 13 swiss_win_dif_matrix
scoreboard players operation 2 swiss_sequence_max > 24 swiss_win_dif_matrix
scoreboard players operation 2 swiss_sequence_max > 57 swiss_win_dif_matrix
scoreboard players operation 2 swiss_sequence_max > 68 swiss_win_dif_matrix

scoreboard players operation 3 swiss_sequence_max > 14 swiss_win_dif_matrix
scoreboard players operation 3 swiss_sequence_max > 23 swiss_win_dif_matrix
scoreboard players operation 3 swiss_sequence_max > 58 swiss_win_dif_matrix
scoreboard players operation 3 swiss_sequence_max > 67 swiss_win_dif_matrix

scoreboard players operation 4 swiss_sequence_max > 15 swiss_win_dif_matrix
scoreboard players operation 4 swiss_sequence_max > 26 swiss_win_dif_matrix
scoreboard players operation 4 swiss_sequence_max > 37 swiss_win_dif_matrix
scoreboard players operation 4 swiss_sequence_max > 48 swiss_win_dif_matrix

scoreboard players operation 5 swiss_sequence_max > 16 swiss_win_dif_matrix
scoreboard players operation 5 swiss_sequence_max > 25 swiss_win_dif_matrix
scoreboard players operation 5 swiss_sequence_max > 38 swiss_win_dif_matrix
scoreboard players operation 5 swiss_sequence_max > 47 swiss_win_dif_matrix

scoreboard players operation 6 swiss_sequence_max > 17 swiss_win_dif_matrix
scoreboard players operation 6 swiss_sequence_max > 28 swiss_win_dif_matrix
scoreboard players operation 6 swiss_sequence_max > 35 swiss_win_dif_matrix
scoreboard players operation 6 swiss_sequence_max > 46 swiss_win_dif_matrix

scoreboard players operation 7 swiss_sequence_max > 18 swiss_win_dif_matrix
scoreboard players operation 7 swiss_sequence_max > 27 swiss_win_dif_matrix
scoreboard players operation 7 swiss_sequence_max > 36 swiss_win_dif_matrix
scoreboard players operation 7 swiss_sequence_max > 45 swiss_win_dif_matrix

# 找到最好的序列
## 排除已用序列
execute if score 1 swiss_match_sequence_used matches 1 run scoreboard players set 1 swiss_sequence_total 99999
execute if score 2 swiss_match_sequence_used matches 1 run scoreboard players set 2 swiss_sequence_total 99999
execute if score 3 swiss_match_sequence_used matches 1 run scoreboard players set 3 swiss_sequence_total 99999
execute if score 4 swiss_match_sequence_used matches 1 run scoreboard players set 4 swiss_sequence_total 99999
execute if score 5 swiss_match_sequence_used matches 1 run scoreboard players set 5 swiss_sequence_total 99999
execute if score 6 swiss_match_sequence_used matches 1 run scoreboard players set 6 swiss_sequence_total 99999
execute if score 7 swiss_match_sequence_used matches 1 run scoreboard players set 7 swiss_sequence_total 99999

## TOTAL
scoreboard players set minimum swiss_sequence_total 9999
# scoreboard players operation minimum