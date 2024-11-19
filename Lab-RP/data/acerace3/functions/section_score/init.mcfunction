
scoreboard objectives remove ar_secbests
scoreboard objectives remove ar_besttimes_ms
scoreboard objectives remove ar_besttimes_ms_z
scoreboard objectives remove ar_besttimes_s
scoreboard objectives add ar_secbests dummy

scoreboard objectives add ar_besttimes_s dummy
scoreboard objectives add ar_besttimes_ms dummy
scoreboard objectives add ar_besttimes_ms_z dummy

scoreboard players set 1 ar_secbests 2147483647
scoreboard players set 2 ar_secbests 2147483647
scoreboard players set 3 ar_secbests 2147483647
scoreboard players set 4 ar_secbests 2147483647
scoreboard players set 5 ar_secbests 2147483647
scoreboard players set 6 ar_secbests 2147483647
scoreboard players set 7 ar_secbests 2147483647
scoreboard players set 8 ar_secbests 2147483647

# 计算系数，根据实际情况可以调整：
scoreboard objectives add ar_sec_factors dummy

# 此参数除以100即是在计算非第1名相对第1更慢的比例时，对比例的额外乘数。如100则是x1，150是x1.5
scoreboard players set slow_percent_rate ar_sec_factors 200

# 这是第1名所得分数
scoreboard players set first_score ar_sec_factors 50

# 这是第1名以外的玩家的得分基础数
scoreboard players set base_score ar_sec_factors 35

# Figure out the minimum times for each section
execute as @a[scores={ar_sec1time=1..},team=!spec] run scoreboard players operation 1 ar_secbests < @s ar_sec1time
execute as @a[scores={ar_sec2time=1..},team=!spec] run scoreboard players operation 2 ar_secbests < @s ar_sec2time
execute as @a[scores={ar_sec3time=1..},team=!spec] run scoreboard players operation 3 ar_secbests < @s ar_sec3time
execute as @a[scores={ar_sec4time=1..},team=!spec] run scoreboard players operation 4 ar_secbests < @s ar_sec4time
execute as @a[scores={ar_sec5time=1..},team=!spec] run scoreboard players operation 5 ar_secbests < @s ar_sec5time
execute as @a[scores={ar_sec6time=1..},team=!spec] run scoreboard players operation 6 ar_secbests < @s ar_sec6time
execute as @a[scores={ar_sec7time=1..},team=!spec] run scoreboard players operation 7 ar_secbests < @s ar_sec7time
execute as @a[scores={ar_sec8time=1..},team=!spec] run scoreboard players operation 8 ar_secbests < @s ar_sec8time

# Tag the champions of each section
execute as @a[team=!spec] if score @s ar_sec1time = 1 ar_secbests run tag @s add ar_champ_cp_1
execute as @a[team=!spec] if score @s ar_sec2time = 2 ar_secbests run tag @s add ar_champ_cp_2
execute as @a[team=!spec] if score @s ar_sec3time = 3 ar_secbests run tag @s add ar_champ_cp_3
execute as @a[team=!spec] if score @s ar_sec4time = 4 ar_secbests run tag @s add ar_champ_cp_4
execute as @a[team=!spec] if score @s ar_sec5time = 5 ar_secbests run tag @s add ar_champ_cp_5
execute as @a[team=!spec] if score @s ar_sec6time = 6 ar_secbests run tag @s add ar_champ_cp_6
execute as @a[team=!spec] if score @s ar_sec7time = 7 ar_secbests run tag @s add ar_champ_cp_7
execute as @a[team=!spec] if score @s ar_sec8time = 8 ar_secbests run tag @s add ar_champ_cp_8

# 时间的储存格式是每1分对应10毫秒，即是 ssssss00
scoreboard players operation 1 ar_besttimes_s = 1 ar_secbests
scoreboard players operation 1 ar_besttimes_ms = 1 ar_secbests
scoreboard players operation 1 ar_besttimes_s /= 100 math
scoreboard players operation 1 ar_besttimes_ms %= 100 math
execute if score 1 ar_besttimes_ms < 10 math run scoreboard players set 1 ar_besttimes_ms_z 0

scoreboard players operation 2 ar_besttimes_s = 2 ar_secbests
scoreboard players operation 2 ar_besttimes_ms = 2 ar_secbests
scoreboard players operation 2 ar_besttimes_s /= 100 math
scoreboard players operation 2 ar_besttimes_ms %= 100 math
execute if score 2 ar_besttimes_ms < 10 math run scoreboard players set 2 ar_besttimes_ms_z 0

scoreboard players operation 3 ar_besttimes_s = 3 ar_secbests
scoreboard players operation 3 ar_besttimes_ms = 3 ar_secbests
scoreboard players operation 3 ar_besttimes_s /= 100 math
scoreboard players operation 3 ar_besttimes_ms %= 100 math
execute if score 3 ar_besttimes_ms < 10 math run scoreboard players set 3 ar_besttimes_ms_z 0

scoreboard players operation 4 ar_besttimes_s = 4 ar_secbests
scoreboard players operation 4 ar_besttimes_ms = 4 ar_secbests
scoreboard players operation 4 ar_besttimes_s /= 100 math
scoreboard players operation 4 ar_besttimes_ms %= 100 math
execute if score 4 ar_besttimes_ms < 10 math run scoreboard players set 4 ar_besttimes_ms_z 0

scoreboard players operation 5 ar_besttimes_s = 5 ar_secbests
scoreboard players operation 5 ar_besttimes_ms = 5 ar_secbests
scoreboard players operation 5 ar_besttimes_s /= 100 math
scoreboard players operation 5 ar_besttimes_ms %= 100 math
execute if score 5 ar_besttimes_ms < 10 math run scoreboard players set 5 ar_besttimes_ms_z 0

scoreboard players operation 6 ar_besttimes_s = 6 ar_secbests
scoreboard players operation 6 ar_besttimes_ms = 6 ar_secbests
scoreboard players operation 6 ar_besttimes_s /= 100 math
scoreboard players operation 6 ar_besttimes_ms %= 100 math
execute if score 6 ar_besttimes_ms < 10 math run scoreboard players set 6 ar_besttimes_ms_z 0

scoreboard players operation 7 ar_besttimes_s = 7 ar_secbests
scoreboard players operation 7 ar_besttimes_ms = 7 ar_secbests
scoreboard players operation 7 ar_besttimes_s /= 100 math
scoreboard players operation 7 ar_besttimes_ms %= 100 math
execute if score 7 ar_besttimes_ms < 10 math run scoreboard players set 7 ar_besttimes_ms_z 0

scoreboard players operation 8 ar_besttimes_s = 8 ar_secbests
scoreboard players operation 8 ar_besttimes_ms = 8 ar_secbests
scoreboard players operation 8 ar_besttimes_s /= 100 math
scoreboard players operation 8 ar_besttimes_ms %= 100 math
execute if score 8 ar_besttimes_ms < 10 math run scoreboard players set 8 ar_besttimes_ms_z 0

# Announce Section champions
