
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a "  每个沙子可以提供§b10§r秒的游戏时间"
tellraw @a "  沙子可以在地图各处获得，可用§e锹§r采集"
tellraw @a " "
tellraw @a ["",{"text": "  沙子可以在沙漏底部的"},{"text": "天蓝色羊毛","color":"aqua"},{"text": "放置"}]
tellraw @a "  沙漏最多同时可装填12块沙子§e（120秒）"
tellraw @a ""
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]