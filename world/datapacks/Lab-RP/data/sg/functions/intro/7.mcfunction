
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["  ","§e§l游戏提示："]
tellraw @a " "
tellraw @a "  - 使用任何近战武器均可以破坏玻璃！"
tellraw @a " "
tellraw @a "  - 越早获得的击杀和争夺目标价值越高！"
tellraw @a "  "
tellraw @a "  - §l所有建筑均只能上到第2层。2层以上没有物品。"

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
