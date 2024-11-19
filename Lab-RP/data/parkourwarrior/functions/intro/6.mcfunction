
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"color":"yellow","text":"  游戏提示","bold":true}]
tellraw @a " "
tellraw @a "  - 你的积分与其他玩家是否完成关卡无关，因此求稳"
tellraw @a "  或许是更好的选择，心急吃不了热豆腐！"
tellraw @a ""
tellraw @a "  - 如果你的队友遇到困难，可以尝试告诉他应对方法！"
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10