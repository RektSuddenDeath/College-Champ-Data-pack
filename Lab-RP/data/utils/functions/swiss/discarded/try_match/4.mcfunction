

# 返回值： 1是找到对局，0是没找到对局。

# 不存在这个对局编号（溢出）
execute if score match_to_make swiss_match_result matches ..3 run return 0

# 查这个对局编号里面有几个队伍
scoreboard players set team_in_match_4 swiss_matchmaking_temp 0
execute as @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4}] run scoreboard players add team_in_match_4 swiss_matchmaking_temp 1

# 没有
execute if score team_in_match_4 swiss_matchmaking_temp matches 0 run scoreboard players set @s swiss_match_result 4
execute if score team_in_match_4 swiss_matchmaking_temp matches 0 run return 1

# 有2个（已满）
execute if score team_in_match_4 swiss_matchmaking_temp matches 2 run return 0

# 有1个
execute if entity @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4},tag=red] unless entity @s[tag=done_red] run scoreboard players set @s swiss_match_result 4
execute if entity @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4},tag=red] unless entity @s[tag=done_red] run return 1

execute if entity @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4},tag=blue] unless entity @s[tag=done_blue] run scoreboard players set @s swiss_match_result 4
execute if entity @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4},tag=blue] unless entity @s[tag=done_blue] run return 1

execute if entity @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4},tag=green] unless entity @s[tag=done_green] run scoreboard players set @s swiss_match_result 4
execute if entity @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4},tag=green] unless entity @s[tag=done_green] run return 1

execute if entity @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4},tag=yellow] unless entity @s[tag=done_yellow] run scoreboard players set @s swiss_match_result 4
execute if entity @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4},tag=yellow] unless entity @s[tag=done_yellow] run return 1

execute if entity @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4},tag=cyan] unless entity @s[tag=done_cyan] run scoreboard players set @s swiss_match_result 4
execute if entity @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4},tag=cyan] unless entity @s[tag=done_cyan] run return 1

execute if entity @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4},tag=pink] unless entity @s[tag=done_pink] run scoreboard players set @s swiss_match_result 4
execute if entity @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4},tag=pink] unless entity @s[tag=done_pink] run return 1

execute if entity @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4},tag=orange] unless entity @s[tag=done_orange] run scoreboard players set @s swiss_match_result 4
execute if entity @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4},tag=orange] unless entity @s[tag=done_orange] run return 1

execute if entity @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4},tag=purple] unless entity @s[tag=done_purple] run scoreboard players set @s swiss_match_result 4
execute if entity @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4},tag=purple] unless entity @s[tag=done_purple] run return 1

# 到这里没返回，说明ERROR
return 0


