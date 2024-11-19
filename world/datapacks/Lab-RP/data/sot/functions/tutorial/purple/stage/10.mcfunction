execute as @a[team=purple] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=purple] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=purple] " "
tellraw @a[team=purple] "  §e§l教程完成！"
tellraw @a[team=purple] "  "
tellraw @a[team=purple] "  "
tellraw @a[team=purple] "  §c请等待游戏开始。"
tellraw @a[team=purple] "  "
tellraw @a[team=purple] "  "
tellraw @a[team=purple] "  "
tellraw @a[team=purple] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set purple sot_tutorial_delay -1