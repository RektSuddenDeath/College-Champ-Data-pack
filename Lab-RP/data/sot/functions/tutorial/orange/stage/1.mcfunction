
execute as @a[team=orange] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=orange] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=orange] " "
tellraw @a[team=orange] "  §e§l欢迎来到 Sands of Time!"
tellraw @a[team=orange] " "
tellraw @a[team=orange] " "
tellraw @a[team=orange] "   以下是游戏教程，你将学习此游戏的基本内容。"
tellraw @a[team=orange] " "
tellraw @a[team=orange] " "
tellraw @a[team=orange] " "
tellraw @a[team=orange] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set orange sot_tutorial_delay 80