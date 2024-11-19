
scoreboard players set Marker grCalcCache1 -2147483647
execute as @e[type=area_effect_cloud,tag=calctemp] run scoreboard players operation Marker grCalcCache1 > @s gr_postemp

# 发现最高完成房间数的队伍并随机选择其中之一
execute as @e[type=area_effect_cloud,tag=standings,limit=1,sort=nearest] if score @s gr_postemp = Marker grCalcCache1 run scoreboard players operation @s gr_ranktemp = Step grCalcCache1
execute as @e[type=area_effect_cloud,tag=standings,limit=1,sort=nearest] if score @s gr_postemp = Marker grCalcCache1 run scoreboard players add Step grCalcCache1 1

# 清除已被排的
scoreboard players set @e[type=area_effect_cloud,tag=calctemp,scores={gr_ranktemp=1..}] gr_postemp -2147483648
# 如已排完则跳出递归
execute if score Step grCalcCache1 matches 1..8 run function gr:scoreboard/calcp2