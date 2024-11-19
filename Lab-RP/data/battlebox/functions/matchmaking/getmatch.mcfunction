
## 只能在2-3 / 7-8个队时正常工作。
# 对战表为
# 1: 红蓝 绿黄 青粉 橙紫
# 2: 红绿 蓝黄 青橙 粉紫
# 3: 红黄 蓝绿 青紫 橙粉
# 4: 红青 蓝粉 绿橙 黄紫
# 5: 红粉 蓝橙 绿紫 黄青
# 6: 红橙 蓝紫 绿青 黄粉
# 7: 红紫 蓝青 绿粉 黄橙

# 清除玩家标记
tag @a remove bb_arena_1
tag @a remove bb_arena_2
tag @a remove bb_arena_3
tag @a remove bb_arena_4
tag @a remove bb_arena_secondary

# 清空轮空标记
scoreboard objectives remove bb_round_off
scoreboard objectives add bb_round_off dummy

# 各对战表的差值
scoreboard objectives add bb_match_windif dummy
scoreboard players set 1 bb_match_windif 0
scoreboard players set 2 bb_match_windif 0
scoreboard players set 3 bb_match_windif 0
scoreboard players set 4 bb_match_windif 0
scoreboard players set 5 bb_match_windif 0
scoreboard players set 6 bb_match_windif 0
scoreboard players set 7 bb_match_windif 0

# color bb_wins
# Windif Sheet (行-列) 行数总是小于列数
#  红蓝绿黄青粉橙紫
#红
#蓝
#绿
#黄
#青
#粉
#橙
#紫

function battlebox:matchmaking/method/windif_sheet

# 现在获得了对战1-7的Windif并排除了已经使用的对战。选择差值最小的
scoreboard objectives add bb_temp_matchsel dummy
summon marker 0 0 0 {Tags:["bb_temp_matchsel","match_1"]}
summon marker 0 0 0 {Tags:["bb_temp_matchsel","match_2"]}
summon marker 0 0 0 {Tags:["bb_temp_matchsel","match_3"]}
summon marker 0 0 0 {Tags:["bb_temp_matchsel","match_4"]}
summon marker 0 0 0 {Tags:["bb_temp_matchsel","match_5"]}
summon marker 0 0 0 {Tags:["bb_temp_matchsel","match_6"]}
summon marker 0 0 0 {Tags:["bb_temp_matchsel","match_7"]}

## 寻找所有可选的对局。
scoreboard players operation @e[type=marker,tag=bb_temp_matchsel,tag=match_1,sort=random,limit=1] bb_temp_matchsel = 1 bb_match_windif
scoreboard players operation @e[type=marker,tag=bb_temp_matchsel,tag=match_2,sort=random,limit=1] bb_temp_matchsel = 2 bb_match_windif
scoreboard players operation @e[type=marker,tag=bb_temp_matchsel,tag=match_3,sort=random,limit=1] bb_temp_matchsel = 3 bb_match_windif
scoreboard players operation @e[type=marker,tag=bb_temp_matchsel,tag=match_4,sort=random,limit=1] bb_temp_matchsel = 4 bb_match_windif
scoreboard players operation @e[type=marker,tag=bb_temp_matchsel,tag=match_5,sort=random,limit=1] bb_temp_matchsel = 5 bb_match_windif
scoreboard players operation @e[type=marker,tag=bb_temp_matchsel,tag=match_6,sort=random,limit=1] bb_temp_matchsel = 6 bb_match_windif
scoreboard players operation @e[type=marker,tag=bb_temp_matchsel,tag=match_7,sort=random,limit=1] bb_temp_matchsel = 7 bb_match_windif

scoreboard players set marker bb_temp_matchsel 200000
execute as @e[type=marker,tag=bb_temp_matchsel] run scoreboard players operation marker bb_temp_matchsel < @s bb_temp_matchsel

execute as @e[type=marker,tag=bb_temp_matchsel] if score @s bb_temp_matchsel = marker bb_temp_matchsel run tag @s add to_be_selected
## 只选择一个对局
execute as @e[type=marker,tag=bb_temp_matchsel,tag=to_be_selected,sort=random,limit=1] run tag @s add match_selected
execute if entity @e[type=marker,tag=bb_temp_matchsel,tag=match_selected,tag=match_1] run function battlebox:matchmaking/method/set_match/1
execute if entity @e[type=marker,tag=bb_temp_matchsel,tag=match_selected,tag=match_2] run function battlebox:matchmaking/method/set_match/2
execute if entity @e[type=marker,tag=bb_temp_matchsel,tag=match_selected,tag=match_3] run function battlebox:matchmaking/method/set_match/3
execute if entity @e[type=marker,tag=bb_temp_matchsel,tag=match_selected,tag=match_4] run function battlebox:matchmaking/method/set_match/4
execute if entity @e[type=marker,tag=bb_temp_matchsel,tag=match_selected,tag=match_5] run function battlebox:matchmaking/method/set_match/5
execute if entity @e[type=marker,tag=bb_temp_matchsel,tag=match_selected,tag=match_6] run function battlebox:matchmaking/method/set_match/6
execute if entity @e[type=marker,tag=bb_temp_matchsel,tag=match_selected,tag=match_7] run function battlebox:matchmaking/method/set_match/7

## Cleanup
scoreboard objectives remove bb_temp_matchsel
kill @e[type=marker,tag=bb_temp_matchsel]

