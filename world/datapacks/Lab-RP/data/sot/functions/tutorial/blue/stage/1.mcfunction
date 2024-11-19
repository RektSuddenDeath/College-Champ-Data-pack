
execute as @a[team=blue] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=blue] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=blue] " "
tellraw @a[team=blue] "  §e§l欢迎来到 Sands of Time!"
tellraw @a[team=blue] " "
tellraw @a[team=blue] " "
tellraw @a[team=blue] "   以下是游戏教程，你将学习此游戏的基本内容。"
tellraw @a[team=blue] " "
tellraw @a[team=blue] " "
tellraw @a[team=blue] " "
tellraw @a[team=blue] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set blue sot_tutorial_delay 80