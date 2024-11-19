execute as @a[team=red] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=red] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=red] " "
tellraw @a[team=red] "  §e§l教程完成！"
tellraw @a[team=red] "  "
tellraw @a[team=red] "  "
tellraw @a[team=red] "  §c请等待游戏开始。"
tellraw @a[team=red] "  "
tellraw @a[team=red] "  "
tellraw @a[team=red] "  "
tellraw @a[team=red] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set red sot_tutorial_delay -1