execute if score purple SotTeamTime matches 1.. run fill ~10 ~4 ~10 ~-10 ~-14 ~-10 air
execute if score purple SotTeamTime matches 1.. run tellraw @a[team=purple] ["",{"selector":"@a[team=purple,tag=sotChallenger]"},"§c挑战限时挑战失败。其将（或者已经）付出了生命的代价。"]
execute if score purple SotTeamTime matches ..0 run tellraw @a[team=purple] ["","§c在限时挑战结束前，时之沙已耗尽，挑战视为失败。"]
tag @a[team=purple] remove sotChallenger
kill @s