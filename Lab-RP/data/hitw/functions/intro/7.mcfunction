
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["",{"text": "  游戏积分方法","color":"yellow","bold":true}]
tellraw @a ""
tellraw @a ["",{"text": "  每有一名玩家在你之前掉出场地: "},{"text": "5","color":"green"}]
tellraw @a ""
tellraw @a ["",{"text": "  第1名: "},{"text": "100","color":"green"},"    ",{"text": "第2名: "},{"text": "75","color":"green"}]
tellraw @a ["",{"text": "  第3名: "},{"text": "50","color":"green"},"    ",{"text": "第4名: "},{"text": "25","color":"green"}]
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10