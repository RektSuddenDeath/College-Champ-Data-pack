
tellraw @a[team=] [{"text": "由于有游戏正在进行，你已被分配为旁观者，如有需要参与游戏OP将会安排。","color": "red","bold": true}]
tp @a[team=] @r
gamemode spectator @a[team=]
team join spec @a[team=]

# 将非admin_immune的旁观者调整为旁观模式（部分游戏）
# execute if score ActiveGame tourney_stats matches 1..4 run gamemode spectator @a[team=spec,tag=!admin_immune]
# execute if score ActiveGame tourney_stats matches 6..9 run gamemode spectator @a[team=spec,tag=!admin_immune]
# execute if score ActiveGame tourney_stats matches 11 run gamemode spectator @a[team=spec,tag=!admin_immune]
schedule function master:latejoinspec 1s