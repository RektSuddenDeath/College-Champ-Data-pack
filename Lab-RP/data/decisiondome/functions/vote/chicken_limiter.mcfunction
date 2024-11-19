
execute if score dome_chickens tourney_stats matches 801.. if score phase tourney_stats matches 3 run tellraw @a "[§6§lDecision Dome§f]: 小鸡数量已达上限，投票将立即结束。"
execute if score dome_chickens tourney_stats matches 801.. if score phase tourney_stats matches 3 run function decisiondome:vote/close

schedule function decisiondome:vote/chicken_limiter 1t