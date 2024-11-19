execute as @a[team=orange] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=orange] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=orange] " "
tellraw @a[team=orange] "  §e§l教程完成！"
tellraw @a[team=orange] "  "
tellraw @a[team=orange] "  "
tellraw @a[team=orange] "  §c请等待游戏开始。"
tellraw @a[team=orange] "  "
tellraw @a[team=orange] "  "
tellraw @a[team=orange] "  "
tellraw @a[team=orange] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set orange sot_tutorial_delay -1