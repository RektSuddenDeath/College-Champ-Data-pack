# 可能重复寻找对局，cancel it
execute if score @s swiss_match_result matches -2147483648..2147483647 run return 1

# LF MATCH
tag @s add lf_match
data modify storage swiss_sort match_to_swap set value 4

# 找lower placed team
scoreboard objectives add swiss_swap_temp dummy
scoreboard players set temp_order swiss_swap_temp 99999
execute as @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4}] run scoreboard players operation temp_order swiss_swap_temp < @s swiss_order_asc

# 对高低排名都做标记
execute as @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4}] if score @s swiss_order_asc = temp_order swiss_swap_temp run tag @s add swiss_temp_lower
execute as @e[type=marker,tag=swiss_sort,scores={swiss_match_result=4}] unless score @s swiss_order_asc = temp_order swiss_swap_temp run tag @s add swiss_temp_higher

# 获取四个玩家的队伍
scoreboard players operation lf_match_team swiss_swap_temp = @s swiss_team_no
$execute as @e[type=marker,tag=swiss_sort,scores={swiss_match_result=$(match_to_fill)}] run scoreboard players operation to_fill_opponent swiss_swap_temp = @s swiss_team_no
execute as @e[type=marker,tag=swiss_sort,tag=swiss_temp_higher] run scoreboard players operation swap_higher swiss_swap_temp = @s swiss_team_no
execute as @e[type=marker,tag=swiss_sort,tag=swiss_temp_lower] run scoreboard players operation swap_lower swiss_swap_temp = @s swiss_team_no

# 先试着swap out LOWER PLACED PLAYER
execute store result score success swiss_swap_temp run function utils:swiss/try_swap/swap_lower with storage swiss_sort
execute unless score success swiss_swap_temp matches 1 run function utils:swiss/try_swap/swap_higher with storage swiss_sort

# Cleanup flags
scoreboard objectives remove swiss_swap_temp
tag @s remove lf_match
tag @e[type=marker,tag=swiss_sort] remove swiss_temp_higher
tag @e[type=marker,tag=swiss_sort] remove swiss_temp_lower