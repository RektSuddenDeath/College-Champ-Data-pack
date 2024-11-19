
# 创建一个临时空间
scoreboard objectives add swiss_matchmaking_temp dummy
## 给本队编码
scoreboard players operation team swiss_matchmaking_temp = @s swiss_team_no

# 不是第1名，尝试fill a match.
execute store result score success swiss_matchmaking_temp run function utils:swiss/try_match/1
execute if score success swiss_matchmaking_temp matches 1 run return 1

execute store result score success swiss_matchmaking_temp run function utils:swiss/try_match/2
execute if score success swiss_matchmaking_temp matches 1 run return 1

execute store result score success swiss_matchmaking_temp run function utils:swiss/try_match/3
execute if score success swiss_matchmaking_temp matches 1 run return 1

execute store result score success swiss_matchmaking_temp run function utils:swiss/try_match/4
execute if score success swiss_matchmaking_temp matches 1 run return 1
# 结束
## 没有找到对战？返回error
execute unless score @s swiss_match_result matches -2147483648..2147483647 run scoreboard players add failed_assigns swiss_match_result 1
execute unless score @s swiss_match_result matches -2147483648..2147483647 run return 0