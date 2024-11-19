
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10


tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a ""
tellraw @a "  §e§l游戏计分方式"
tellraw @a "  "
tellraw @a ["  - 每向前行进1格：","§a1.7"]
tellraw @a "  - 每达到一个记录点：§a80"
tellraw @a "  - 挖掘地图中暗门后的绿宝石：§a25"
tellraw @a "  - 按矿车竞逐的队伍排名得分"
tellraw @a "  - 按每一次采集阶段的队伍排名得分"
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
