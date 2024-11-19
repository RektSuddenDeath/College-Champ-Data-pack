
# Summon 8 markers representing each team
summon marker -10000 125 -10000 {Tags:["red","ddToolsDistribute"],CustomName:'"§c红队"'}
summon marker -10000 125 -10000 {Tags:["blue","ddToolsDistribute"],CustomName:'"§9蓝队"'}
summon marker -10000 125 -10000 {Tags:["green","ddToolsDistribute"],CustomName:'"§a绿队"'}
summon marker -10000 125 -10000 {Tags:["yellow","ddToolsDistribute"],CustomName:'"§e黄队"'}
summon marker -10000 125 -10000 {Tags:["cyan","ddToolsDistribute"],CustomName:'"§3青队"'}
summon marker -10000 125 -10000 {Tags:["orange","ddToolsDistribute"],CustomName:'"§6橙队"'}
summon marker -10000 125 -10000 {Tags:["purple","ddToolsDistribute"],CustomName:'"§5紫队"'}
summon marker -10000 125 -10000 {Tags:["pink","ddToolsDistribute"],CustomName:'"§d粉队"'}

# 根据当前游戏的序号，加载提供给玩家的道具集
execute if score gamecount tourney_stats matches 1 run scoreboard players operation activeToolSeries ddToolsSequence = 2 ddToolsSequence
execute if score gamecount tourney_stats matches 2 run scoreboard players operation activeToolSeries ddToolsSequence = 3 ddToolsSequence
execute if score gamecount tourney_stats matches 3 run scoreboard players operation activeToolSeries ddToolsSequence = 4 ddToolsSequence
execute if score gamecount tourney_stats matches 4 run scoreboard players operation activeToolSeries ddToolsSequence = 5 ddToolsSequence
execute if score gamecount tourney_stats matches 5 run scoreboard players operation activeToolSeries ddToolsSequence = 6 ddToolsSequence
execute if score gamecount tourney_stats matches 6 run scoreboard players operation activeToolSeries ddToolsSequence = 7 ddToolsSequence
execute if score gamecount tourney_stats matches 7 run scoreboard players operation activeToolSeries ddToolsSequence = 8 ddToolsSequence

scoreboard players operation Tool1 ddToolsSequence = activeToolSeries ddToolsSequence
scoreboard players operation Tool1 ddToolsSequence /= 1000000 math

scoreboard players operation Tool2 ddToolsSequence = activeToolSeries ddToolsSequence
scoreboard players operation Tool2 ddToolsSequence /= 10000 math
scoreboard players operation Tool2 ddToolsSequence %= 100 math

scoreboard players operation Tool3 ddToolsSequence = activeToolSeries ddToolsSequence
scoreboard players operation Tool3 ddToolsSequence /= 100 math
scoreboard players operation Tool3 ddToolsSequence %= 100 math

scoreboard players operation Tool4 ddToolsSequence = activeToolSeries ddToolsSequence
scoreboard players operation Tool4 ddToolsSequence %= 100 math
# 开始投放道具
## 先投放最后一名的玩家的道具
scoreboard players operation activeTool ddToolsSequence = Tool1 ddToolsSequence
function decisiondome:tools/distribute/decide/lastplace
## 每2秒随机抽选一个队伍获得小道具
schedule function decisiondome:tools/distribute/decide/rand1 2s
schedule function decisiondome:tools/distribute/decide/rand2 4s
schedule function decisiondome:tools/distribute/decide/rand3 6s
schedule function decisiondome:tools/distribute/decide/cleanup 121t