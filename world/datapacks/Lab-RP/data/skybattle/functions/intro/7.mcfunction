execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10


tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a ""
tellraw @a ["  ",{"text": "游戏积分方式","bold": true,"color": "yellow"}]
tellraw @a ""
tellraw @a ["  ",{"text": "- 存活时间超过一名其他玩家: "},{"text": "2","color": "green"}]
tellraw @a ["  ",{"text": "- 击杀一名玩家: "},{"text": "55","color": "green"}]
tellraw @a ["  ",{"text": "- 获胜: "},{"text": "60","color": "green"}]
tellraw @a ["  "]
tellraw @a ["  "]
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
