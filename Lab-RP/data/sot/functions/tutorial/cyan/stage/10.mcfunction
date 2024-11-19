execute as @a[team=cyan] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=cyan] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] "  §e§l教程完成！"
tellraw @a[team=cyan] "  "
tellraw @a[team=cyan] "  "
tellraw @a[team=cyan] "  §c请等待游戏开始。"
tellraw @a[team=cyan] "  "
tellraw @a[team=cyan] "  "
tellraw @a[team=cyan] "  "
tellraw @a[team=cyan] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set cyan sot_tutorial_delay -1