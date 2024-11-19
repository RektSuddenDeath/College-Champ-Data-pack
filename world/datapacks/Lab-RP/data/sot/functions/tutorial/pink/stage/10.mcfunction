execute as @a[team=pink] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=pink] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=pink] " "
tellraw @a[team=pink] "  §e§l教程完成！"
tellraw @a[team=pink] "  "
tellraw @a[team=pink] "  "
tellraw @a[team=pink] "  §c请等待游戏开始。"
tellraw @a[team=pink] "  "
tellraw @a[team=pink] "  "
tellraw @a[team=pink] "  "
tellraw @a[team=pink] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set pink sot_tutorial_delay -1