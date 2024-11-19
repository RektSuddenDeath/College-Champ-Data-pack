execute if score blue SotTeamTime matches 1.. run fill ~10 ~4 ~10 ~-10 ~-14 ~-10 air
execute if score blue SotTeamTime matches 1.. run tellraw @a[team=blue] ["",{"selector":"@a[team=blue,tag=sotChallenger]"},"§c挑战限时挑战失败。其将（或者已经）付出了生命的代价。"]
execute if score blue SotTeamTime matches ..0 run tellraw @a[team=blue] ["","§c在限时挑战结束前，时之沙已耗尽，挑战视为失败。"]
tag @a[team=blue] remove sotChallenger
kill @s