
execute as @a[team=purple] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=purple] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=purple] " "
tellraw @a[team=purple] "  §e类似的，宝库也需要§l特殊的钥匙§r§e打开。"
tellraw @a[team=purple] "  宝库钥匙所在之处各具有不同的性质。"
tellraw @a[team=purple] " "
tellraw @a[team=purple] "  如：§c红色钥匙§r总是在一个解密后方。"
tellraw @a[team=purple] " "
tellraw @a[team=purple] "  §c§l教程任务：§r获取§c红色钥匙"
tellraw @a[team=purple] " "
tellraw @a[team=purple] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set purple sot_tutorial_delay -1