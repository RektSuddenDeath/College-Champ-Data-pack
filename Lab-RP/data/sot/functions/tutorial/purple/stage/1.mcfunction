
execute as @a[team=purple] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=purple] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=purple] " "
tellraw @a[team=purple] "  §e§l欢迎来到 Sands of Time!"
tellraw @a[team=purple] " "
tellraw @a[team=purple] " "
tellraw @a[team=purple] "   以下是游戏教程，你将学习此游戏的基本内容。"
tellraw @a[team=purple] " "
tellraw @a[team=purple] " "
tellraw @a[team=purple] " "
tellraw @a[team=purple] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set purple sot_tutorial_delay 80