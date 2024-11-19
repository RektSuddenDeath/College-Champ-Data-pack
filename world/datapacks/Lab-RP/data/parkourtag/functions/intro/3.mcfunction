tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["",{"text": "  你将与其他所有队伍各进行"},{"text": "一次","color":"red"},{"text": "跑酷追逐战。"}]
tellraw @a "  每个队伍将有一人担任抓捕者，其他人为逃脱者。"
tellraw @a " "
tellraw @a "  抓捕者的目标是在最短时间内抓获对方的逃脱者，反之亦然。"
tellraw @a " "
tellraw @a ["  ",{"text": "每人仅限担任三次抓捕者。","color":"yellow"}]
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10