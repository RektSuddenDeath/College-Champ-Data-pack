
data remove storage swiss_sort *
# 先按照胜场数与颜色顺序决定一个初始的权重，再根据这个权重排先后
scoreboard objectives add swiss_weight_raw dummy
scoreboard players operation red swiss_weight_raw = red swiss_win_count
scoreboard players operation blue swiss_weight_raw = blue swiss_win_count
scoreboard players operation green swiss_weight_raw = green swiss_win_count
scoreboard players operation yellow swiss_weight_raw = yellow swiss_win_count
scoreboard players operation cyan swiss_weight_raw = cyan swiss_win_count
scoreboard players operation pink swiss_weight_raw = pink swiss_win_count
scoreboard players operation orange swiss_weight_raw = orange swiss_win_count
scoreboard players operation purple swiss_weight_raw = purple swiss_win_count

# 胜局数乘以100
scoreboard players set 100 math 100
scoreboard players operation red swiss_weight_raw *= 100 math
scoreboard players operation blue swiss_weight_raw *= 100 math
scoreboard players operation green swiss_weight_raw *= 100 math
scoreboard players operation yellow swiss_weight_raw *= 100 math
scoreboard players operation cyan swiss_weight_raw *= 100 math
scoreboard players operation pink swiss_weight_raw *= 100 math
scoreboard players operation orange swiss_weight_raw *= 100 math
scoreboard players operation purple swiss_weight_raw *= 100 math

# 根据队伍颜色加一，避免重合。
scoreboard players add red swiss_weight_raw 8
scoreboard players add blue swiss_weight_raw 7
scoreboard players add green swiss_weight_raw 6
scoreboard players add yellow swiss_weight_raw 5
scoreboard players add cyan swiss_weight_raw 4
scoreboard players add pink swiss_weight_raw 3
scoreboard players add orange swiss_weight_raw 2
scoreboard players add purple swiss_weight_raw 1
