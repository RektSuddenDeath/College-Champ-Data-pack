
# 创建一个临时空间
scoreboard objectives add swiss_matchmaking_temp dummy
## 给本队编码
scoreboard players operation team swiss_matchmaking_temp = @s swiss_team_no

# 第1名，总是在第一个区域内
scoreboard players set @s swiss_match_result 1

# 结束