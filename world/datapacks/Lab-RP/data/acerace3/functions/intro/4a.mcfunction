

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["",{"text": "  游戏提示","bold": true,"color": "yellow"}]
tellraw @a " "
tellraw @a "  - 一些方块能够提供不同的效果："
tellraw @a "  §c§l红色砖块：§r将你向前弹射  §a§l绿宝石块：§r获得短暂的速度效果"
tellraw @a "  §e§l金块：§r获得跳跃提升  §b§l水下弹射器：§r大幅加快游泳速度"
tellraw @a ""
tellraw @a "  - emm 如果你第一次玩这个， 那可能会玩的不太好……"
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]