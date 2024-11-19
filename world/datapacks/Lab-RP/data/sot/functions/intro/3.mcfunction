
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"text":"  §l你的游戏时间由你前方，出生点大厅中心的沙漏限定，"}]
tellraw @a "  观察沙漏是你得知剩余时间的§c唯一途径§r。"
tellraw @a " "
tellraw @a " "
tellraw @a "  游戏开始30秒后，每§c10§r秒沙漏将下降一次"
tellraw @a "  §e沙漏的刻度即为你剩余的游戏时间。"
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]