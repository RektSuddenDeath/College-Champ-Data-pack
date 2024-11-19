
execute as @a[team=yellow] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=yellow] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=yellow] " "
tellraw @a[team=yellow] "  §e§l欢迎来到 Sands of Time!"
tellraw @a[team=yellow] " "
tellraw @a[team=yellow] " "
tellraw @a[team=yellow] "   以下是游戏教程，你将学习此游戏的基本内容。"
tellraw @a[team=yellow] " "
tellraw @a[team=yellow] " "
tellraw @a[team=yellow] " "
tellraw @a[team=yellow] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set yellow sot_tutorial_delay 80