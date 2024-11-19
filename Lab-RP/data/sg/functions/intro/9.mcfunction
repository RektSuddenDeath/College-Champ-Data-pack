
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ""
tellraw @a " "
tellraw @a " "
tellraw @a "§c  请等待游戏开始……"
tellraw @a ""
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
kill @e[type=armor_stand,tag=intro]
kill @e[type=item]
schedule clear sg:intro/hold
