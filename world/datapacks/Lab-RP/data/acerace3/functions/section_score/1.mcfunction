
# 如果没有一个最好成绩，就直接弹出
execute if score 1 ar_secbests matches 0 run tellraw @a "§7没有人完成区域 1."
execute if score 1 ar_secbests matches 0 run return 0

# Calculate Scores
scoreboard objectives remove ar_sect_score_s
scoreboard objectives remove ar_sect_score_ms
scoreboard objectives remove ar_sect_score_ms_z

scoreboard objectives add ar_sect_score_s dummy
scoreboard objectives add ar_sect_score_ms dummy
scoreboard objectives add ar_sect_score_ms_z dummy

execute as @a run scoreboard players operation @s ar_sect_score_s = @s ar_sec1time
execute as @a run scoreboard players operation @s ar_sect_score_ms = @s ar_sec1time

execute as @a run scoreboard players operation @s ar_sect_score_s /= 100 math
execute as @a run scoreboard players operation @s ar_sect_score_ms %= 100 math
execute as @a if score @s ar_sect_score_ms < 10 math run scoreboard players set @s ar_sect_score_ms_z 0

# Champions
execute as @a[tag=ar_champ_cp_1] run tellraw @s ["䅃区域§b1: ",{"score":{"name": "@s","objective": "ar_sect_score_s"},"color": "gold"},"§6.",{"score":{"name": "@s","objective": "ar_sect_score_ms_z"},"color": "gold"},{"score":{"name": "@s","objective": "ar_sect_score_ms"},"color": "gold"},"§6s"," §e§l#1! "," §6[§6+",{"score":{"name": "first_score","objective": "ar_sec_factors"},"color": "gold"},"§6分]"]
execute as @a[tag=ar_champ_cp_1] run scoreboard players operation @s ar_indvscore += first_score ar_sec_factors

# Non-Champions
scoreboard objectives remove ar_sectscore_1
scoreboard objectives remove ar_sectdiff_1
scoreboard objectives remove ar_sectcalc_1

scoreboard objectives add ar_sectscore_1 dummy
scoreboard objectives add ar_sectdiff_1 dummy
scoreboard objectives add ar_sectcalc_1 dummy

# 计算比重，这段计算所得数值是慢的百分比*100
# 问题：除以零
# 如果玩家没有完成过这个区域，这里就用1000000作为玩家时间。
execute as @a[team=!spec,tag=!ar_champ_cp_1] run scoreboard players operation @s ar_sectcalc_1 = @s ar_sec1time
execute as @a[team=!spec,tag=!ar_champ_cp_1] if score @s ar_sec1time matches 0 run scoreboard players set @s ar_sectcalc_1 1000000

execute as @a[team=!spec,tag=!ar_champ_cp_1] run scoreboard players operation @s ar_sectcalc_1 -= 1 ar_secbests
execute as @a[team=!spec,tag=!ar_champ_cp_1] run scoreboard players operation @s ar_sectcalc_1 *= 100 math
execute as @a[team=!spec,tag=!ar_champ_cp_1] run scoreboard players operation @s ar_sectcalc_1 /= 1 ar_secbests
## 再附加比例乘数
execute as @a[team=!spec,tag=!ar_champ_cp_1] run scoreboard players operation @s ar_sectcalc_1 *= slow_percent_rate ar_sec_factors
execute as @a[team=!spec,tag=!ar_champ_cp_1] run scoreboard players operation @s ar_sectcalc_1 /= 100 math
### 如果超过100，则置为100
execute as @a[team=!spec,tag=!ar_champ_cp_1] if score @s ar_sectcalc_1 > 100 math run scoreboard players set @s ar_sectcalc_1 100

# 这样就算出来了一个比例数值，但是还要除以100，排除小于0的情况
scoreboard players set @a[team=!spec,tag=!ar_champ_cp_1] ar_sectdiff_1 100
execute as @a[team=!spec,tag=!ar_champ_cp_1] run scoreboard players operation @s ar_sectdiff_1 -= @s ar_sectcalc_1

execute as @a[team=!spec,tag=!ar_champ_cp_1] if score @s ar_sectdiff_1 < 1 math run scoreboard players set @s ar_sectdiff_1 0

# 以此计算各个玩家这个分段的得分
execute as @a[team=!spec,tag=!ar_champ_cp_1] run scoreboard players operation @s ar_sectscore_1 = base_score ar_sec_factors
execute as @a[team=!spec,tag=!ar_champ_cp_1] run scoreboard players operation @s ar_sectscore_1 *= @s ar_sectdiff_1
execute as @a[team=!spec,tag=!ar_champ_cp_1] run scoreboard players operation @s ar_sectscore_1 /= 100 math

execute as @a[team=!spec,tag=!ar_champ_cp_1] if score @s ar_sectdiff_1 matches 50..100 run tellraw @s ["区域§b1: ",{"score":{"name": "@s","objective": "ar_sect_score_s"},"color": "yellow"},"§e.",{"score":{"name": "@s","objective": "ar_sect_score_ms_z"},"color": "yellow"},{"score":{"name": "@s","objective": "ar_sect_score_ms"},"color": "yellow"},"§es"," §6[§6+",{"score":{"name": "@s","objective": "ar_sectscore_1"},"color": "gold"},"§6分]"]
execute as @a[team=!spec,tag=!ar_champ_cp_1] if score @s ar_sectdiff_1 matches 1..49 run tellraw @s ["区域§b1: ",{"score":{"name": "@s","objective": "ar_sect_score_s"},"color": "red"},"§c.",{"score":{"name": "@s","objective": "ar_sect_score_ms_z"},"color": "red"},{"score":{"name": "@s","objective": "ar_sect_score_ms"},"color": "red"},"§cs"," §6[§6+",{"score":{"name": "@s","objective": "ar_sectscore_1"},"color": "gold"},"§6分]"]
execute as @a[team=!spec,tag=!ar_champ_cp_1] if score @s ar_sectdiff_1 matches 0 run tellraw @s ["区域§b1: ",{"score":{"name": "@s","objective": "ar_sect_score_s"},"color": "gray"},"§7.",{"score":{"name": "@s","objective": "ar_sect_score_ms_z"},"color": "gray"},{"score":{"name": "@s","objective": "ar_sect_score_ms"},"color": "gray"},"§7s"," §6[§6+",{"score":{"name": "@s","objective": "ar_sectscore_1"},"color": "gold"},"§6分]"]
execute as @a[team=!spec,tag=!ar_champ_cp_1] run scoreboard players operation @s ar_indvscore += @s ar_sectscore_1

# Debug信息，发送给admins
scoreboard players set $min_score ar_sectscore_1 1000000
scoreboard players set $max_time ar_sectscore_1 0

execute as @a[team=!spec,tag=!ar_champ_cp_1] run scoreboard players operation $min_score ar_sectscore_1 < @s ar_sectscore_1
execute as @a[team=!spec,tag=!ar_champ_cp_1] run scoreboard players operation $max_time ar_sectscore_1 > @s ar_sec1time

tellraw @a[tag=admin] ["最低分: ",{"score":{"name": "$min_score","objective": "ar_sectscore_1"},"color": "red"}," 最长时间：",{"score":{"name": "$max_time","objective": "ar_sectscore_1"}}]



