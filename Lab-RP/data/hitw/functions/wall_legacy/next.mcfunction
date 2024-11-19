
# This will select the seed for the next game behaviour

scoreboard players operation type hitw_wall = @e[type=area_effect_cloud,tag=Z,sort=random] random
scoreboard players operation direction hitw_wall = type hitw_wall
scoreboard players operation direction hitw_wall /= 10 math

scoreboard players operation wallbehavior hitw_wall = type hitw_wall
scoreboard players operation wallbehavior hitw_wall %= 10 math
# Changes wall behavior for the first minute. Remove 2-3 Psych Walls and 5 Streak Walls type, to reduce game difficulty.

# 第一分钟：去除三面、四面假墙、四连五连墙、假墙后连续来一面墙。剩余权重为2连：60% 3连: 20% 二面墙：20%
execute if score wallbehavior hitw_wall matches 0 if score minute master.timer matches 2.. run scoreboard players add type hitw_wall 2
execute if score wallbehavior hitw_wall matches 4 if score minute master.timer matches 2.. run scoreboard players remove type hitw_wall 1
execute if score wallbehavior hitw_wall matches 5 if score minute master.timer matches 2.. run scoreboard players remove type hitw_wall 3
execute if score wallbehavior hitw_wall matches 8 if score minute master.timer matches 2.. run scoreboard players remove type hitw_wall 6
execute if score wallbehavior hitw_wall matches 9 if score minute master.timer matches 2.. run scoreboard players remove type hitw_wall 7

# 第二分钟：去除四面假墙、五连墙。剩余权重为：2连：20%，3连：20%，2面墙：20%，其余10%.
execute if score wallbehavior hitw_wall matches 0 if score minute master.timer matches 1 run scoreboard players add type hitw_wall 2
execute if score wallbehavior hitw_wall matches 5 if score minute master.timer matches 1 run scoreboard players remove type hitw_wall 2

# 第三分钟：60%四面墙 20%五连 20%三面
execute if score wallbehavior hitw_wall matches 1 if score minute master.timer matches 0 run scoreboard players remove type hitw_wall 1
execute if score wallbehavior hitw_wall matches 2 if score minute master.timer matches 0 run scoreboard players remove type hitw_wall 2
execute if score wallbehavior hitw_wall matches 3 if score minute master.timer matches 0 run scoreboard players remove type hitw_wall 3
execute if score wallbehavior hitw_wall matches 4 if score minute master.timer matches 0 run scoreboard players remove type hitw_wall 4
execute if score wallbehavior hitw_wall matches 6 if score minute master.timer matches 0 run scoreboard players remove type hitw_wall 6
execute if score wallbehavior hitw_wall matches 7 if score minute master.timer matches 0 run scoreboard players add type hitw_wall 1
execute if score wallbehavior hitw_wall matches 9 if score minute master.timer matches 0 run scoreboard players remove type hitw_wall 4

# If the direction was the same to the previous one, the result shall be invalid.
# If the direction wasn't the same, result is considered valid and will move onto the next step
# Where the actual wall behaviour is selected.
execute unless score direction hitw_wall = prevdirection hitw_wall run function hitw:wall/decide
execute if score direction hitw_wall = prevdirection hitw_wall run function hitw:wall/next
execute unless score direction hitw_wall = prevdirection hitw_wall run scoreboard players operation prevdirection hitw_wall = direction hitw_wall