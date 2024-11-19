
execute as @a[team=cyan] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=cyan] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] "  §e类似的，宝库也需要§l特殊的钥匙§r§e打开。"
tellraw @a[team=cyan] "  宝库钥匙所在之处各具有不同的性质。"
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] "  如：§c红色钥匙§r总是在一个解密后方。"
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] "  §c§l教程任务：§r获取§c红色钥匙"
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set cyan sot_tutorial_delay -1