

schedule clear master:timer/starting/sec
execute if score timed pkw_game matches 1 run function master:timer/timeleft/10min
execute if score timed pkw_game matches 2 run scoreboard players reset : pkw_sb
execute if score timed pkw_game matches 2 run scoreboard players set §1 pkw_sb 1
execute if score timed pkw_game matches 2 run team modify placeholder_1 suffix [{"text": "不限时模式","color":"red","bold": true}]
execute if score timed pkw_game matches 2 run tellraw @a ["",{"text": "此次游戏不限时，管理员可通过指令来随时结束游戏。","bold": true,"color": "red"}]