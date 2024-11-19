

## 现在有swiss_matchmaking_temp的team_in_match_1(2)(3)(4)的size，现在尝试swap in or out players
scoreboard players set team_in_match_1 swiss_matchmaking_temp 0
execute as @e[type=marker,tag=swiss_sort,scores={swiss_match_result=1}] run scoreboard players add team_in_match_1 swiss_matchmaking_temp 1
scoreboard players set team_in_match_2 swiss_matchmaking_temp 0
execute as @e[type=marker,tag=swiss_sort,scores={swiss_match_result=2}] run scoreboard players add team_in_match_2 swiss_matchmaking_temp 1
scoreboard players set team_in_match_3 swiss_matchmaking_temp 0
execute as @e[type=marker,tag=swiss_sort,scores={swiss_match_result=3}] run scoreboard players add team_in_match_3 swiss_matchmaking_temp 1
scoreboard players set team_in_match_4 swiss_matchmaking_temp 0
execute as @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4}] run scoreboard players add team_in_match_4 swiss_matchmaking_temp 1

# 选择一个有空位的对局
execute if score team_in_match_1 swiss_matchmaking_temp matches ..1 run data modify storage swiss_sort match_to_fill set value 1
execute if score team_in_match_2 swiss_matchmaking_temp matches ..1 run data modify storage swiss_sort match_to_fill set value 2
execute if score team_in_match_3 swiss_matchmaking_temp matches ..1 run data modify storage swiss_sort match_to_fill set value 3
execute if score team_in_match_4 swiss_matchmaking_temp matches ..1 run data modify storage swiss_sort match_to_fill set value 4

# 如果有一个对局的两个位置都是空的，就先放进去

# 选择调换的目标对局 (TBDONE)
execute if score team_in_match_4 swiss_matchmaking_temp matches 2 run function utils:swiss/try_swap/4 with storage swiss_sort
execute if score team_in_match_3 swiss_matchmaking_temp matches 2 run function utils:swiss/try_swap/3 with storage swiss_sort
execute if score team_in_match_2 swiss_matchmaking_temp matches 2 run function utils:swiss/try_swap/2 with storage swiss_sort
execute if score team_in_match_1 swiss_matchmaking_temp matches 2 run function utils:swiss/try_swap/1 with storage swiss_sort

## 如果查找成功，减少一个失败的分配组数。
execute unless score @s swiss_match_result matches -2147483648..2147483647 run return 0
scoreboard players remove failed_assigns swiss_match_result 1