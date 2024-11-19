
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["  ","§l游戏开始时，将有30秒的保护时间。"]
tellraw @a " "
tellraw @a "  保护时间内所有玩家均不会受到任何伤害。"
tellraw @a "  "
tellraw @a "  保护时间过后PVP开启，可以攻击其他队伍的玩家。"
tellraw @a "  "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
