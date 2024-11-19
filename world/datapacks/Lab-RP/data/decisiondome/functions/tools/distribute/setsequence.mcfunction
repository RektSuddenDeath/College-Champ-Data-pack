
# 加载除数
scoreboard players set 100 math 100
scoreboard players set 1000 math 1000
scoreboard players set 10000 math 10000
scoreboard players set 100000 math 100000
scoreboard players set 1000000 math 1000000
scoreboard players set 10000000 math 10000000
# 这个函数将决定游戏2-8给玩家提供的小道具。千万/百万位为提供给末位玩家的，十万位至个位为提供给随机玩家的。每2位代表一个小道具的ID
# 从01-99分别为:  01. 火焰弹 02.小鸡互换 03.UNO反转卡 04.超级小鸡互换 
# 05.黏性弹 06.狐狸召唤 07.送你一程 08.鸡起蛋归 09.玉璋护盾
# 10.小鸡风场 11. 护法之誓
scoreboard objectives add ddToolsSequence dummy
scoreboard players set 2 ddToolsSequence 01050710
scoreboard players set 3 ddToolsSequence 04070110
scoreboard players set 4 ddToolsSequence 09070502
scoreboard players set 5 ddToolsSequence 06110102
scoreboard players set 6 ddToolsSequence 05070901
scoreboard players set 7 ddToolsSequence 10010509
scoreboard players set 8 ddToolsSequence 02060507