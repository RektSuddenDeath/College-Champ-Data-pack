
schedule clear master:timer/eventover/sec

title @a times 10 60 10
title @a title "§a活动结束"
title @a subtitle "感谢游玩！"

scoreboard players reset : tourney_sb
scoreboard players set §4 tourney_sb 4

team modify placeholder_5 prefix ["",{"text": "活动结束！","bold": true,"color": "green"}]
team modify placeholder_4 prefix ["",{"text": "感谢游玩！"}]