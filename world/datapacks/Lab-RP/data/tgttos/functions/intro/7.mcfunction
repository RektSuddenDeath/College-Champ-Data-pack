execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["  ",{"text": "游戏积分标准","color":"yellow","bold":true}]
tellraw @a " "
tellraw @a ["  ",{"text": "第一个到达终点: "},{"text": "32","color":"green"}]
tellraw @a ["  ",{"text": "每有一名其他玩家到达终点，完成分降低: "},{"text": "1","color":"red"}]
tellraw @a ["  ",{"text": "第1/2/3个全队完成的队伍: "},{"text": "120/80/60","color":"green"},{"text": "  （队内平分）","color":"gray"}]
tellraw @a " "
tellraw @a ["",{"text": "前8名加分: "},{"text": "120/100/80/65/50/40/30/20","color": "green"}]
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]