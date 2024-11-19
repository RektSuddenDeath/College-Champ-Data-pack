
data remove storage swiss_sort *

# 写各个队伍的对战对手。
## 有轮空排除
execute as @e[type=marker,tag=swiss_sort,tag=red] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
data modify storage swiss_sort team_name set value "red"
data modify storage swiss_sort team_id set value 1
function utils:swiss/macro_equal_score with storage swiss_sort

execute as @e[type=marker,tag=swiss_sort,tag=blue] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
data modify storage swiss_sort team_name set value "blue"
data modify storage swiss_sort team_id set value 2
function utils:swiss/macro_equal_score with storage swiss_sort

execute as @e[type=marker,tag=swiss_sort,tag=green] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
data modify storage swiss_sort team_name set value "green"
data modify storage swiss_sort team_id set value 3
function utils:swiss/macro_equal_score with storage swiss_sort

execute as @e[type=marker,tag=swiss_sort,tag=yellow] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
data modify storage swiss_sort team_name set value "yellow"
data modify storage swiss_sort team_id set value 4
function utils:swiss/macro_equal_score with storage swiss_sort

execute as @e[type=marker,tag=swiss_sort,tag=cyan] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
data modify storage swiss_sort team_name set value "cyan"
data modify storage swiss_sort team_id set value 5
function utils:swiss/macro_equal_score with storage swiss_sort

execute as @e[type=marker,tag=swiss_sort,tag=pink] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
data modify storage swiss_sort team_name set value "pink"
data modify storage swiss_sort team_id set value 6
function utils:swiss/macro_equal_score with storage swiss_sort

execute as @e[type=marker,tag=swiss_sort,tag=orange] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
data modify storage swiss_sort team_name set value "orange"
data modify storage swiss_sort team_id set value 7
function utils:swiss/macro_equal_score with storage swiss_sort

execute as @e[type=marker,tag=swiss_sort,tag=purple] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
data modify storage swiss_sort team_name set value "purple"
data modify storage swiss_sort team_id set value 8
function utils:swiss/macro_equal_score with storage swiss_sort

## 无轮空排除
# execute as @e[type=marker,tag=swiss_sort,tag=red] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
# data modify storage swiss_sort team_name set value "red"
# data modify storage swiss_sort team_id set value 1
# execute if entity @p[team=red] run function utils:swiss/macro_equal_score with storage swiss_sort

# execute as @e[type=marker,tag=swiss_sort,tag=blue] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
# data modify storage swiss_sort team_name set value "blue"
# data modify storage swiss_sort team_id set value 2
# execute if entity @p[team=blue] run function utils:swiss/macro_equal_score with storage swiss_sort

# execute as @e[type=marker,tag=swiss_sort,tag=green] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
# data modify storage swiss_sort team_name set value "green"
# data modify storage swiss_sort team_id set value 3
# execute if entity @p[team=green] run function utils:swiss/macro_equal_score with storage swiss_sort

# execute as @e[type=marker,tag=swiss_sort,tag=yellow] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
# data modify storage swiss_sort team_name set value "yellow"
# data modify storage swiss_sort team_id set value 4
# execute if entity @p[team=yellow] run function utils:swiss/macro_equal_score with storage swiss_sort

# execute as @e[type=marker,tag=swiss_sort,tag=cyan] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
# data modify storage swiss_sort team_name set value "cyan"
# data modify storage swiss_sort team_id set value 5
# execute if entity @p[team=cyan] run function utils:swiss/macro_equal_score with storage swiss_sort

# execute as @e[type=marker,tag=swiss_sort,tag=pink] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
# data modify storage swiss_sort team_name set value "pink"
# data modify storage swiss_sort team_id set value 6
# execute if entity @p[team=pink] run function utils:swiss/macro_equal_score with storage swiss_sort

# execute as @e[type=marker,tag=swiss_sort,tag=orange] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
# data modify storage swiss_sort team_name set value "orange"
# data modify storage swiss_sort team_id set value 7
# execute if entity @p[team=orange] run function utils:swiss/macro_equal_score with storage swiss_sort

# execute as @e[type=marker,tag=swiss_sort,tag=purple] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
# data modify storage swiss_sort team_name set value "purple"
# data modify storage swiss_sort team_id set value 8
# execute if entity @p[team=purple] run function utils:swiss/macro_equal_score with storage swiss_sort

## 现在所有队伍都有了swiss_opponent_result，下一步写8*8矩阵。
## 有轮空排除
# data modify storage swiss_sort team_name set value "red"
# execute if entity @p[team=red] as @e[type=marker,tag=swiss_sort,tag=red] run function utils:swiss/macro_write_matrix with storage swiss_sort
# data modify storage swiss_sort team_name set value "blue"
# execute if entity @p[team=blue] as @e[type=marker,tag=swiss_sort,tag=blue] run function utils:swiss/macro_write_matrix with storage swiss_sort
# data modify storage swiss_sort team_name set value "green"
# execute if entity @p[team=green] as @e[type=marker,tag=swiss_sort,tag=green] run function utils:swiss/macro_write_matrix with storage swiss_sort
# data modify storage swiss_sort team_name set value "yellow"
# execute if entity @p[team=yellow] as @e[type=marker,tag=swiss_sort,tag=yellow] run function utils:swiss/macro_write_matrix with storage swiss_sort
# data modify storage swiss_sort team_name set value "cyan"
# execute if entity @p[team=cyan] as @e[type=marker,tag=swiss_sort,tag=cyan] run function utils:swiss/macro_write_matrix with storage swiss_sort
# data modify storage swiss_sort team_name set value "pink"
# execute if entity @p[team=pink] as @e[type=marker,tag=swiss_sort,tag=pink] run function utils:swiss/macro_write_matrix with storage swiss_sort
# data modify storage swiss_sort team_name set value "orange"
# execute if entity @p[team=orange] as @e[type=marker,tag=swiss_sort,tag=orange] run function utils:swiss/macro_write_matrix with storage swiss_sort
# data modify storage swiss_sort team_name set value "purple"
# execute if entity @p[team=purple] as @e[type=marker,tag=swiss_sort,tag=purple] run function utils:swiss/macro_write_matrix with storage swiss_sort

## 无轮空排除
data modify storage swiss_sort team_name set value "red"
execute as @e[type=marker,tag=swiss_sort,tag=red] run function utils:swiss/macro_write_matrix with storage swiss_sort

data modify storage swiss_sort team_name set value "blue"
execute as @e[type=marker,tag=swiss_sort,tag=blue] run function utils:swiss/macro_write_matrix with storage swiss_sort

data modify storage swiss_sort team_name set value "green"
execute as @e[type=marker,tag=swiss_sort,tag=green] run function utils:swiss/macro_write_matrix with storage swiss_sort

data modify storage swiss_sort team_name set value "yellow"
execute as @e[type=marker,tag=swiss_sort,tag=yellow] run function utils:swiss/macro_write_matrix with storage swiss_sort

data modify storage swiss_sort team_name set value "cyan"
execute as @e[type=marker,tag=swiss_sort,tag=cyan] run function utils:swiss/macro_write_matrix with storage swiss_sort

data modify storage swiss_sort team_name set value "pink"
execute as @e[type=marker,tag=swiss_sort,tag=pink] run function utils:swiss/macro_write_matrix with storage swiss_sort

data modify storage swiss_sort team_name set value "orange"
execute as @e[type=marker,tag=swiss_sort,tag=orange] run function utils:swiss/macro_write_matrix with storage swiss_sort

data modify storage swiss_sort team_name set value "purple"
execute as @e[type=marker,tag=swiss_sort,tag=purple] run function utils:swiss/macro_write_matrix with storage swiss_sort

## ENDs
#tellraw @a "§aWrite match complete."