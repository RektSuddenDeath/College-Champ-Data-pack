# match_to_swap, match_to_fill
# 此命令的执行者是寻找对局的marker 
# GENERIC
# 获取四个玩家的队伍编码为lf_match_team, to_fill_opponent, swap_higher, swap_lower
# 原对局是 swap_higher vs swap_lower // to_fill_opponent vs empty
# 在这种情况对换的对局是 swap_higher vs lf_match_team // to_fill_opponent vs swap_lower
# 矩阵是对称的，只需要检查一边。
# 不通过则return 0
## LOWER BRACKET
execute if score to_fill_opponent swiss_swap_temp matches 1 if entity @e[type=marker,tag=swiss_sort,tag=swiss_temp_lower,tag=done_red] run return 0
execute if score to_fill_opponent swiss_swap_temp matches 2 if entity @e[type=marker,tag=swiss_sort,tag=swiss_temp_lower,tag=done_blue] run return 0
execute if score to_fill_opponent swiss_swap_temp matches 3 if entity @e[type=marker,tag=swiss_sort,tag=swiss_temp_lower,tag=done_green] run return 0
execute if score to_fill_opponent swiss_swap_temp matches 4 if entity @e[type=marker,tag=swiss_sort,tag=swiss_temp_lower,tag=done_yellow] run return 0
execute if score to_fill_opponent swiss_swap_temp matches 5 if entity @e[type=marker,tag=swiss_sort,tag=swiss_temp_lower,tag=done_cyan] run return 0
execute if score to_fill_opponent swiss_swap_temp matches 6 if entity @e[type=marker,tag=swiss_sort,tag=swiss_temp_lower,tag=done_pink] run return 0
execute if score to_fill_opponent swiss_swap_temp matches 7 if entity @e[type=marker,tag=swiss_sort,tag=swiss_temp_lower,tag=done_orange] run return 0
execute if score to_fill_opponent swiss_swap_temp matches 8 if entity @e[type=marker,tag=swiss_sort,tag=swiss_temp_lower,tag=done_purple] run return 0
## HIGHER BRACKET
execute if score lf_match_team swiss_swap_temp matches 1 if entity @e[type=marker,tag=swiss_sort,tag=swiss_temp_higher,tag=done_red] run return 0
execute if score lf_match_team swiss_swap_temp matches 2 if entity @e[type=marker,tag=swiss_sort,tag=swiss_temp_higher,tag=done_blue] run return 0
execute if score lf_match_team swiss_swap_temp matches 3 if entity @e[type=marker,tag=swiss_sort,tag=swiss_temp_higher,tag=done_green] run return 0
execute if score lf_match_team swiss_swap_temp matches 4 if entity @e[type=marker,tag=swiss_sort,tag=swiss_temp_higher,tag=done_yellow] run return 0
execute if score lf_match_team swiss_swap_temp matches 5 if entity @e[type=marker,tag=swiss_sort,tag=swiss_temp_higher,tag=done_cyan] run return 0
execute if score lf_match_team swiss_swap_temp matches 6 if entity @e[type=marker,tag=swiss_sort,tag=swiss_temp_higher,tag=done_pink] run return 0
execute if score lf_match_team swiss_swap_temp matches 7 if entity @e[type=marker,tag=swiss_sort,tag=swiss_temp_higher,tag=done_orange] run return 0
execute if score lf_match_team swiss_swap_temp matches 8 if entity @e[type=marker,tag=swiss_sort,tag=swiss_temp_higher,tag=done_purple] run return 0
## 以上校验全部通过，对换swap_lower 与 lf_match_team
$scoreboard players set @s swiss_match_result $(match_to_swap)
$execute as @e[type=marker,tag=swiss_sort,tag=swiss_temp_lower,sort=nearest,limit=1] run scoreboard players set @s swiss_match_result $(match_to_fill)

#tellraw @a "Triggered Low"

return 1

