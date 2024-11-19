execute as @a[team=blue] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=blue] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=blue] " "
tellraw @a[team=blue] "  §e§l教程完成！"
tellraw @a[team=blue] "  "
tellraw @a[team=blue] "  "
tellraw @a[team=blue] "  §c请等待游戏开始。"
tellraw @a[team=blue] "  "
tellraw @a[team=blue] "  "
tellraw @a[team=blue] "  "
tellraw @a[team=blue] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set blue sot_tutorial_delay -1