 
 tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a "  在部分房间，你将会遇到多个入口，"
tellraw @a "  你需要按照入口所需的人数分别进入不同的入口。"
tellraw @a " "
tellraw @a ""
tellraw @a "  只有各个入口都已有刚好数量的玩家，房间"
tellraw @a "  才能开启。"
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10