
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["",{"text": "  游戏提示","color":"yellow","bold":true}]
tellraw @a "  - 尝试使用不同的跳跃方法来穿过不同的障碍"
tellraw @a " "
tellraw @a "  - 善用第三人称(F5)以确定墙的方向。"
tellraw @a ""
tellraw @a "  - 时刻保持警惕！游戏节奏会越来越快！"
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10