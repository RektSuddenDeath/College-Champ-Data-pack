
execute as @a[team=cyan] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=cyan] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] "  §e§l欢迎来到 Sands of Time!"
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] "   以下是游戏教程，你将学习此游戏的基本内容。"
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set cyan sot_tutorial_delay 80