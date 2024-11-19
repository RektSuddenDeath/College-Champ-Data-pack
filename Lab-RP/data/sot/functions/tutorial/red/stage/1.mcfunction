
execute as @a[team=red] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=red] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=red] " "
tellraw @a[team=red] "  §e§l欢迎来到 Sands of Time!"
tellraw @a[team=red] " "
tellraw @a[team=red] " "
tellraw @a[team=red] "   以下是游戏教程，你将学习此游戏的基本内容。"
tellraw @a[team=red] " "
tellraw @a[team=red] " "
tellraw @a[team=red] " "
tellraw @a[team=red] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set red sot_tutorial_delay 80