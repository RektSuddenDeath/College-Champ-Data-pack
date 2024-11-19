 
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a "  §e§l游戏提示"
tellraw @a "  - 对于目标建筑中难以识别的方块，可以用准心对准，"
tellraw @a "  状态栏将显示方块的中文名称。"
tellraw @a " "
tellraw @a "  - 基地的熔炉需要燃料才能使用！"
tellraw @a " "
tellraw @a "  - 地图内的资源会隔一段时间进行刷新。"
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

execute as @a run execute at @s run playsound minecraft:entity.item.pickup record @s ~ ~ ~ 1.5