

scoreboard objectives remove swiss_match_result
scoreboard objectives add swiss_match_result dummy

## 检查是否有队伍要轮空
scoreboard players operation match_to_make swiss_match_result = step swiss_order_sort
scoreboard players operation match_to_make swiss_match_result /= 2 math
execute store result score overflow swiss_match_result run scoreboard players operation step swiss_order_sort %= 2 math

## 有无队伍没有找到对战，存储空间
scoreboard players set failed_assigns swiss_match_result 0

## match result 的分数代表的是队伍被分配到第几号对战中。此算法至少需要安排一个对战。
execute as @e[type=marker,tag=swiss_sort,scores={swiss_order_dec=1}] run function utils:swiss/asc/assign
execute as @e[type=marker,tag=swiss_sort,scores={swiss_order_dec=2}] run function utils:swiss/asc/assign
execute as @e[type=marker,tag=swiss_sort,scores={swiss_order_dec=3}] run function utils:swiss/asc/assign
execute as @e[type=marker,tag=swiss_sort,scores={swiss_order_dec=4}] run function utils:swiss/asc/assign
execute as @e[type=marker,tag=swiss_sort,scores={swiss_order_dec=5}] run function utils:swiss/asc/assign
execute as @e[type=marker,tag=swiss_sort,scores={swiss_order_dec=6}] run function utils:swiss/asc/assign
execute as @e[type=marker,tag=swiss_sort,scores={swiss_order_dec=7}] run function utils:swiss/asc/assign
execute as @e[type=marker,tag=swiss_sort,scores={swiss_order_dec=8}] run function utils:swiss/asc/assign


## 如果failed_assign数量为0，则为成功
scoreboard objectives add swiss_opponent_result dummy
#scoreboard players set @e[type=marker,tag=swiss_sort] swiss_match_result 0
execute if score failed_assigns swiss_match_result matches 0 if score overflow swiss_match_result matches 0 run function utils:swiss/write_match
execute if score failed_assigns swiss_match_result matches 0 if score overflow swiss_match_result matches 1 run function utils:swiss/write_match_overflow
execute if score failed_assigns swiss_match_result matches 0 run return 1
## 如果failed_assign大于等于1，则有问题，需要做调换
## 先tag未满的对局，假设只有一个对局不成立 (NEEDS HEAVY TESTING)
## 尝试三次。
execute if score failed_assigns swiss_match_result matches 1.. run function utils:swiss/try_swap_rev



