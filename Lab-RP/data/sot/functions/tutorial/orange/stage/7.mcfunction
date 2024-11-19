
execute as @a[team=orange] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=orange] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=orange] " "
tellraw @a[team=orange] "  §e类似的，宝库也需要§l特殊的钥匙§r§e打开。"
tellraw @a[team=orange] "  宝库钥匙所在之处各具有不同的性质。"
tellraw @a[team=orange] " "
tellraw @a[team=orange] "  如：§c红色钥匙§r总是在一个解密后方。"
tellraw @a[team=orange] " "
tellraw @a[team=orange] "  §c§l教程任务：§r获取§c红色钥匙"
tellraw @a[team=orange] " "
tellraw @a[team=orange] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set orange sot_tutorial_delay -1