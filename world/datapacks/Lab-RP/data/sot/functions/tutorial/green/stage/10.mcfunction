execute as @a[team=green] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=green] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=green] " "
tellraw @a[team=green] "  §e§l教程完成！"
tellraw @a[team=green] "  "
tellraw @a[team=green] "  "
tellraw @a[team=green] "  §c请等待游戏开始。"
tellraw @a[team=green] "  "
tellraw @a[team=green] "  "
tellraw @a[team=green] "  "
tellraw @a[team=green] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set green sot_tutorial_delay -1