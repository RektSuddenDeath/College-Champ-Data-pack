# Windif Sheet (行-列)
#  红蓝绿黄青粉橙紫
#红
#蓝
#绿
#黄
#青
#粉
#橙
#紫

scoreboard objectives remove bb_match_windif_sheet
scoreboard objectives add bb_match_windif_sheet dummy

# 用一个临时空间
scoreboard objectives add bb_tempcal_wins dummy
scoreboard players operation red bb_tempcal_wins = red bb_wins
scoreboard players operation blue bb_tempcal_wins = blue bb_wins
scoreboard players operation green bb_tempcal_wins = green bb_wins
scoreboard players operation yellow bb_tempcal_wins = yellow bb_wins
scoreboard players operation cyan bb_tempcal_wins = cyan bb_wins
scoreboard players operation pink bb_tempcal_wins = pink bb_wins
scoreboard players operation orange bb_tempcal_wins = orange bb_wins
scoreboard players operation purple bb_tempcal_wins = purple bb_wins

## 设置无人队伍的胜场数为 1000，使得轮空会产生一个较大的weight.
execute unless entity @a[team=red] run scoreboard players set red bb_tempcal_wins 1000
execute unless entity @a[team=blue] run scoreboard players set blue bb_tempcal_wins 1000
execute unless entity @a[team=green] run scoreboard players set green bb_tempcal_wins 1000
execute unless entity @a[team=yellow] run scoreboard players set yellow bb_tempcal_wins 1000
execute unless entity @a[team=cyan] run scoreboard players set cyan bb_tempcal_wins 1000
execute unless entity @a[team=pink] run scoreboard players set pink bb_tempcal_wins 1000
execute unless entity @a[team=orange] run scoreboard players set orange bb_tempcal_wins 1000
execute unless entity @a[team=purple] run scoreboard players set purple bb_tempcal_wins 1000

# 计算表内各格的值
scoreboard players operation 1-2 bb_match_windif_sheet = red bb_tempcal_wins
scoreboard players operation 1-3 bb_match_windif_sheet = red bb_tempcal_wins
scoreboard players operation 1-4 bb_match_windif_sheet = red bb_tempcal_wins
scoreboard players operation 1-5 bb_match_windif_sheet = red bb_tempcal_wins
scoreboard players operation 1-6 bb_match_windif_sheet = red bb_tempcal_wins
scoreboard players operation 1-7 bb_match_windif_sheet = red bb_tempcal_wins
scoreboard players operation 1-8 bb_match_windif_sheet = red bb_tempcal_wins

scoreboard players operation 2-3 bb_match_windif_sheet = blue bb_tempcal_wins
scoreboard players operation 2-4 bb_match_windif_sheet = blue bb_tempcal_wins
scoreboard players operation 2-5 bb_match_windif_sheet = blue bb_tempcal_wins
scoreboard players operation 2-6 bb_match_windif_sheet = blue bb_tempcal_wins
scoreboard players operation 2-7 bb_match_windif_sheet = blue bb_tempcal_wins
scoreboard players operation 2-8 bb_match_windif_sheet = blue bb_tempcal_wins

scoreboard players operation 3-4 bb_match_windif_sheet = green bb_tempcal_wins
scoreboard players operation 3-5 bb_match_windif_sheet = green bb_tempcal_wins
scoreboard players operation 3-6 bb_match_windif_sheet = green bb_tempcal_wins
scoreboard players operation 3-7 bb_match_windif_sheet = green bb_tempcal_wins
scoreboard players operation 3-8 bb_match_windif_sheet = green bb_tempcal_wins

scoreboard players operation 4-5 bb_match_windif_sheet = cyan bb_tempcal_wins
scoreboard players operation 4-6 bb_match_windif_sheet = cyan bb_tempcal_wins
scoreboard players operation 4-7 bb_match_windif_sheet = cyan bb_tempcal_wins
scoreboard players operation 4-8 bb_match_windif_sheet = cyan bb_tempcal_wins

scoreboard players operation 5-6 bb_match_windif_sheet = pink bb_tempcal_wins
scoreboard players operation 5-7 bb_match_windif_sheet = pink bb_tempcal_wins
scoreboard players operation 5-8 bb_match_windif_sheet = pink bb_tempcal_wins

scoreboard players operation 6-7 bb_match_windif_sheet = orange bb_tempcal_wins
scoreboard players operation 6-8 bb_match_windif_sheet = orange bb_tempcal_wins

scoreboard players operation 7-8 bb_match_windif_sheet = purple bb_tempcal_wins

##
scoreboard players operation 1-2 bb_match_windif_sheet -= blue bb_tempcal_wins

scoreboard players operation 1-3 bb_match_windif_sheet -= green bb_tempcal_wins
scoreboard players operation 2-3 bb_match_windif_sheet -= green bb_tempcal_wins

scoreboard players operation 1-4 bb_match_windif_sheet -= yellow bb_tempcal_wins
scoreboard players operation 2-4 bb_match_windif_sheet -= yellow bb_tempcal_wins
scoreboard players operation 3-4 bb_match_windif_sheet -= yellow bb_tempcal_wins

scoreboard players operation 1-5 bb_match_windif_sheet -= cyan bb_tempcal_wins
scoreboard players operation 2-5 bb_match_windif_sheet -= cyan bb_tempcal_wins
scoreboard players operation 3-5 bb_match_windif_sheet -= cyan bb_tempcal_wins
scoreboard players operation 4-5 bb_match_windif_sheet -= cyan bb_tempcal_wins

scoreboard players operation 1-6 bb_match_windif_sheet -= pink bb_tempcal_wins
scoreboard players operation 2-6 bb_match_windif_sheet -= pink bb_tempcal_wins
scoreboard players operation 3-6 bb_match_windif_sheet -= pink bb_tempcal_wins
scoreboard players operation 4-6 bb_match_windif_sheet -= pink bb_tempcal_wins
scoreboard players operation 5-6 bb_match_windif_sheet -= pink bb_tempcal_wins

scoreboard players operation 1-7 bb_match_windif_sheet -= orange bb_tempcal_wins
scoreboard players operation 2-7 bb_match_windif_sheet -= orange bb_tempcal_wins
scoreboard players operation 3-7 bb_match_windif_sheet -= orange bb_tempcal_wins
scoreboard players operation 4-7 bb_match_windif_sheet -= orange bb_tempcal_wins
scoreboard players operation 5-7 bb_match_windif_sheet -= orange bb_tempcal_wins
scoreboard players operation 6-7 bb_match_windif_sheet -= orange bb_tempcal_wins

scoreboard players operation 1-8 bb_match_windif_sheet -= purple bb_tempcal_wins
scoreboard players operation 2-8 bb_match_windif_sheet -= purple bb_tempcal_wins
scoreboard players operation 3-8 bb_match_windif_sheet -= purple bb_tempcal_wins
scoreboard players operation 4-8 bb_match_windif_sheet -= purple bb_tempcal_wins
scoreboard players operation 5-8 bb_match_windif_sheet -= purple bb_tempcal_wins
scoreboard players operation 6-8 bb_match_windif_sheet -= purple bb_tempcal_wins
scoreboard players operation 7-8 bb_match_windif_sheet -= purple bb_tempcal_wins

# 将每一格都取abs
scoreboard players set -1 math -1

execute if score 1-2 bb_match_windif_sheet matches ..-1 run scoreboard players operation 1-2 bb_match_windif_sheet *= -1 math
execute if score 1-3 bb_match_windif_sheet matches ..-1 run scoreboard players operation 1-3 bb_match_windif_sheet *= -1 math
execute if score 1-4 bb_match_windif_sheet matches ..-1 run scoreboard players operation 1-4 bb_match_windif_sheet *= -1 math
execute if score 1-5 bb_match_windif_sheet matches ..-1 run scoreboard players operation 1-5 bb_match_windif_sheet *= -1 math
execute if score 1-6 bb_match_windif_sheet matches ..-1 run scoreboard players operation 1-6 bb_match_windif_sheet *= -1 math
execute if score 1-7 bb_match_windif_sheet matches ..-1 run scoreboard players operation 1-7 bb_match_windif_sheet *= -1 math
execute if score 1-8 bb_match_windif_sheet matches ..-1 run scoreboard players operation 1-8 bb_match_windif_sheet *= -1 math

execute if score 2-3 bb_match_windif_sheet matches ..-1 run scoreboard players operation 2-3 bb_match_windif_sheet *= -1 math
execute if score 2-4 bb_match_windif_sheet matches ..-1 run scoreboard players operation 2-4 bb_match_windif_sheet *= -1 math
execute if score 2-5 bb_match_windif_sheet matches ..-1 run scoreboard players operation 2-5 bb_match_windif_sheet *= -1 math
execute if score 2-6 bb_match_windif_sheet matches ..-1 run scoreboard players operation 2-6 bb_match_windif_sheet *= -1 math
execute if score 2-7 bb_match_windif_sheet matches ..-1 run scoreboard players operation 2-7 bb_match_windif_sheet *= -1 math
execute if score 2-8 bb_match_windif_sheet matches ..-1 run scoreboard players operation 2-8 bb_match_windif_sheet *= -1 math

execute if score 3-4 bb_match_windif_sheet matches ..-1 run scoreboard players operation 3-4 bb_match_windif_sheet *= -1 math
execute if score 3-5 bb_match_windif_sheet matches ..-1 run scoreboard players operation 3-5 bb_match_windif_sheet *= -1 math
execute if score 3-6 bb_match_windif_sheet matches ..-1 run scoreboard players operation 3-6 bb_match_windif_sheet *= -1 math
execute if score 3-7 bb_match_windif_sheet matches ..-1 run scoreboard players operation 3-7 bb_match_windif_sheet *= -1 math
execute if score 3-8 bb_match_windif_sheet matches ..-1 run scoreboard players operation 3-8 bb_match_windif_sheet *= -1 math

execute if score 4-5 bb_match_windif_sheet matches ..-1 run scoreboard players operation 4-5 bb_match_windif_sheet *= -1 math
execute if score 4-6 bb_match_windif_sheet matches ..-1 run scoreboard players operation 4-6 bb_match_windif_sheet *= -1 math
execute if score 4-7 bb_match_windif_sheet matches ..-1 run scoreboard players operation 4-7 bb_match_windif_sheet *= -1 math
execute if score 4-8 bb_match_windif_sheet matches ..-1 run scoreboard players operation 4-8 bb_match_windif_sheet *= -1 math

execute if score 5-6 bb_match_windif_sheet matches ..-1 run scoreboard players operation 5-6 bb_match_windif_sheet *= -1 math
execute if score 5-7 bb_match_windif_sheet matches ..-1 run scoreboard players operation 5-7 bb_match_windif_sheet *= -1 math
execute if score 5-8 bb_match_windif_sheet matches ..-1 run scoreboard players operation 5-8 bb_match_windif_sheet *= -1 math

execute if score 6-7 bb_match_windif_sheet matches ..-1 run scoreboard players operation 6-7 bb_match_windif_sheet *= -1 math
execute if score 6-8 bb_match_windif_sheet matches ..-1 run scoreboard players operation 6-8 bb_match_windif_sheet *= -1 math

execute if score 7-8 bb_match_windif_sheet matches ..-1 run scoreboard players operation 7-8 bb_match_windif_sheet *= -1 math

# 对战表为
# 1: 红蓝 绿黄 青粉 橙紫
# 2: 红绿 蓝黄 青橙 粉紫
# 3: 红黄 蓝绿 青紫 橙粉
# 4: 红青 蓝粉 绿橙 黄紫
# 5: 红粉 蓝橙 绿紫 黄青
# 6: 红橙 蓝紫 绿青 黄粉
# 7: 红紫 蓝青 绿粉 黄橙

#  红蓝绿黄青粉橙紫
#红
#蓝
#绿
#黄
#青
#粉
#橙
#紫

# 结算各对战表的差值，希望轮空的队伍最多只有一个。
scoreboard players operation 1 bb_match_windif += 1-2 bb_match_windif_sheet
scoreboard players operation 2 bb_match_windif += 1-3 bb_match_windif_sheet
scoreboard players operation 3 bb_match_windif += 1-4 bb_match_windif_sheet
scoreboard players operation 4 bb_match_windif += 1-5 bb_match_windif_sheet
scoreboard players operation 5 bb_match_windif += 1-6 bb_match_windif_sheet
scoreboard players operation 6 bb_match_windif += 1-7 bb_match_windif_sheet
scoreboard players operation 7 bb_match_windif += 1-8 bb_match_windif_sheet

scoreboard players operation 1 bb_match_windif += 3-4 bb_match_windif_sheet
scoreboard players operation 2 bb_match_windif += 2-4 bb_match_windif_sheet
scoreboard players operation 3 bb_match_windif += 2-3 bb_match_windif_sheet
scoreboard players operation 4 bb_match_windif += 2-6 bb_match_windif_sheet
scoreboard players operation 5 bb_match_windif += 2-7 bb_match_windif_sheet
scoreboard players operation 6 bb_match_windif += 2-8 bb_match_windif_sheet
scoreboard players operation 7 bb_match_windif += 2-5 bb_match_windif_sheet

scoreboard players operation 1 bb_match_windif += 5-6 bb_match_windif_sheet
scoreboard players operation 2 bb_match_windif += 5-7 bb_match_windif_sheet
scoreboard players operation 3 bb_match_windif += 5-8 bb_match_windif_sheet
scoreboard players operation 4 bb_match_windif += 3-7 bb_match_windif_sheet
scoreboard players operation 5 bb_match_windif += 3-8 bb_match_windif_sheet
scoreboard players operation 6 bb_match_windif += 3-5 bb_match_windif_sheet
scoreboard players operation 7 bb_match_windif += 3-6 bb_match_windif_sheet

scoreboard players operation 1 bb_match_windif += 7-8 bb_match_windif_sheet
scoreboard players operation 2 bb_match_windif += 6-8 bb_match_windif_sheet
scoreboard players operation 3 bb_match_windif += 6-7 bb_match_windif_sheet
scoreboard players operation 4 bb_match_windif += 4-8 bb_match_windif_sheet
scoreboard players operation 5 bb_match_windif += 4-5 bb_match_windif_sheet
scoreboard players operation 6 bb_match_windif += 4-6 bb_match_windif_sheet
scoreboard players operation 7 bb_match_windif += 4-7 bb_match_windif_sheet

# 对于已使用的对战，差值置为infinite
execute if score 1 bb_matchtable matches 1 run scoreboard players set 1 bb_match_windif 20000000
execute if score 2 bb_matchtable matches 1 run scoreboard players set 2 bb_match_windif 20000000
execute if score 3 bb_matchtable matches 1 run scoreboard players set 3 bb_match_windif 20000000
execute if score 4 bb_matchtable matches 1 run scoreboard players set 4 bb_match_windif 20000000
execute if score 5 bb_matchtable matches 1 run scoreboard players set 5 bb_match_windif 20000000
execute if score 6 bb_matchtable matches 1 run scoreboard players set 6 bb_match_windif 20000000
execute if score 7 bb_matchtable matches 1 run scoreboard players set 7 bb_match_windif 20000000
