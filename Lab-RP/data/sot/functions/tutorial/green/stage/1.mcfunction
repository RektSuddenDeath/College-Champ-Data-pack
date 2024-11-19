
execute as @a[team=green] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=green] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=green] " "
tellraw @a[team=green] "  §e§l欢迎来到 Sands of Time!"
tellraw @a[team=green] " "
tellraw @a[team=green] " "
tellraw @a[team=green] "   以下是游戏教程，你将学习此游戏的基本内容。"
tellraw @a[team=green] " "
tellraw @a[team=green] " "
tellraw @a[team=green] " "
tellraw @a[team=green] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set green sot_tutorial_delay 80