 
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a "  §l建筑区域共有3块，其中左边和中间是普通建筑"
tellraw @a "  §l而右边是§e§l黄金建筑"
tellraw @a " "
tellraw @a "  - 黄金建筑具有更高的价值，但是完成起来也更复杂！"
tellraw @a "  - 普通建筑和黄金建筑分别具有独立的序列，分别计算先后。"
tellraw @a "  - 你可以完成至多14个普通建筑和7个黄金建筑。"
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

execute as @a run execute at @s run playsound minecraft:entity.item.pickup record @s ~ ~ ~ 1.5