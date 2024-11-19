
execute as @a[team=yellow] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=yellow] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=yellow] " "
tellraw @a[team=yellow] "  §e类似的，宝库也需要§l特殊的钥匙§r§e打开。"
tellraw @a[team=yellow] "  宝库钥匙所在之处各具有不同的性质。"
tellraw @a[team=yellow] " "
tellraw @a[team=yellow] "  如：§c红色钥匙§r总是在一个解密后方。"
tellraw @a[team=yellow] " "
tellraw @a[team=yellow] "  §c§l教程任务：§r获取§c红色钥匙"
tellraw @a[team=yellow] " "
tellraw @a[team=yellow] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set yellow sot_tutorial_delay -1