
execute as @a[team=cyan] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=cyan] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] "  在隧道的尽头，你将能使用刚刚获取的钥匙打开宝库。"
tellraw @a[team=cyan] "  "
tellraw @a[team=cyan] "  宝库中有大量的§6金币§r等奖励！"
tellraw @a[team=cyan] "  "
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] "  §c§l教程任务：§r开启§c红色宝库"
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set cyan sot_tutorial_delay -1