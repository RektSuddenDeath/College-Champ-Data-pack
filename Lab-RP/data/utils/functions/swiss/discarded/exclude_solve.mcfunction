execute as @e[type=marker,tag=swiss_sort,tag=red] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
data modify storage swiss_sort team_name set value "red"
data modify storage swiss_sort team_id set value 1
function utils:swiss/macro_exclude_solve with storage swiss_sort

execute as @e[type=marker,tag=swiss_sort,tag=blue] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
data modify storage swiss_sort team_name set value "blue"
data modify storage swiss_sort team_id set value 2
function utils:swiss/macro_exclude_solve with storage swiss_sort

execute as @e[type=marker,tag=swiss_sort,tag=green] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
data modify storage swiss_sort team_name set value "green"
data modify storage swiss_sort team_id set value 3
function utils:swiss/macro_exclude_solve with storage swiss_sort

execute as @e[type=marker,tag=swiss_sort,tag=yellow] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
data modify storage swiss_sort team_name set value "yellow"
data modify storage swiss_sort team_id set value 4
function utils:swiss/macro_exclude_solve with storage swiss_sort

execute as @e[type=marker,tag=swiss_sort,tag=cyan] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
data modify storage swiss_sort team_name set value "cyan"
data modify storage swiss_sort team_id set value 5
function utils:swiss/macro_exclude_solve with storage swiss_sort

execute as @e[type=marker,tag=swiss_sort,tag=pink] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
data modify storage swiss_sort team_name set value "pink"
data modify storage swiss_sort team_id set value 6
function utils:swiss/macro_exclude_solve with storage swiss_sort

execute as @e[type=marker,tag=swiss_sort,tag=orange] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
data modify storage swiss_sort team_name set value "orange"
data modify storage swiss_sort team_id set value 7
function utils:swiss/macro_exclude_solve with storage swiss_sort

execute as @e[type=marker,tag=swiss_sort,tag=purple] store result storage swiss_sort match_id int 1 run scoreboard players get @s swiss_match_result
data modify storage swiss_sort team_name set value "purple"
data modify storage swiss_sort team_id set value 8
function utils:swiss/macro_exclude_solve with storage swiss_sort