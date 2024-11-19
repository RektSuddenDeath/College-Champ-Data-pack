
tellraw @s ["§l以下是当前比赛个人积分排名: "]
tellraw @s ""
execute if entity @p[scores={personalRank=1}] run tellraw @s ["1. ",{"selector":"@a[scores={personalRank=1}]"},": ",{"score":{"objective": "tourney_indv","name": "@p[scores={personalRank=1}]"}}]
execute if entity @p[scores={personalRank=2}] run tellraw @s ["2. ",{"selector":"@a[scores={personalRank=2}]"},": ",{"score":{"objective": "tourney_indv","name": "@p[scores={personalRank=2}]"}}]
execute if entity @p[scores={personalRank=3}] run tellraw @s ["3. ",{"selector":"@a[scores={personalRank=3}]"},": ",{"score":{"objective": "tourney_indv","name": "@p[scores={personalRank=3}]"}}]
execute if entity @p[scores={personalRank=4}] run tellraw @s ["4. ",{"selector":"@a[scores={personalRank=4}]"},": ",{"score":{"objective": "tourney_indv","name": "@p[scores={personalRank=4}]"}}]
execute if entity @p[scores={personalRank=5}] run tellraw @s ["5. ",{"selector":"@a[scores={personalRank=5}]"},": ",{"score":{"objective": "tourney_indv","name": "@p[scores={personalRank=5}]"}}]
tellraw @s " "
execute if entity @s[team=!spec] if score @s personalRank <= $displayRankMin personalRank run tellraw @s ["",{"score":{"objective": "personalRank","name":"@s"}},". ",{"selector":"@s","bold": true},": ",{"score":{"objective": "tourney_indv","name": "@s"}}]
execute if entity @s[team=!spec] if score @s personalRank <= $displayRankMin personalRank run tellraw @s "§7个人积分在每个游戏结束时更新。"

execute if entity @s[team=!spec] if score @s personalRank > $displayRankMin personalRank run tellraw @s ["",{"text":"99","obfuscated":true},". ",{"selector":"@s","bold": true},": ",{"score":{"objective": "tourney_indv","name": "@s"}}]
execute if entity @s[team=!spec] if score @s personalRank > $displayRankMin personalRank run tellraw @s "§7个人积分在每个游戏结束时更新。达到前50%以查看个人排名。"