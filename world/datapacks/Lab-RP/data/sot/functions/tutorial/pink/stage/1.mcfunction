
execute as @a[team=pink] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=pink] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=pink] " "
tellraw @a[team=pink] "  §e§l欢迎来到 Sands of Time!"
tellraw @a[team=pink] " "
tellraw @a[team=pink] " "
tellraw @a[team=pink] "   以下是游戏教程，你将学习此游戏的基本内容。"
tellraw @a[team=pink] " "
tellraw @a[team=pink] " "
tellraw @a[team=pink] " "
tellraw @a[team=pink] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set pink sot_tutorial_delay 80