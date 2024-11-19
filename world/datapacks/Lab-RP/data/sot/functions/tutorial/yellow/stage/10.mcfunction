execute as @a[team=yellow] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=yellow] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=yellow] " "
tellraw @a[team=yellow] "  §e§l教程完成！"
tellraw @a[team=yellow] "  "
tellraw @a[team=yellow] "  "
tellraw @a[team=yellow] "  §c请等待游戏开始。"
tellraw @a[team=yellow] "  "
tellraw @a[team=yellow] "  "
tellraw @a[team=yellow] "  "
tellraw @a[team=yellow] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set yellow sot_tutorial_delay -1