
execute as @a[team=purple] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=purple] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=purple] " "
tellraw @a[team=purple] "  在隧道的尽头，你将能使用刚刚获取的钥匙打开宝库。"
tellraw @a[team=purple] "  "
tellraw @a[team=purple] "  宝库中有大量的§6金币§r等奖励！"
tellraw @a[team=purple] "  "
tellraw @a[team=purple] " "
tellraw @a[team=purple] "  §c§l教程任务：§r开启§c红色宝库"
tellraw @a[team=purple] " "
tellraw @a[team=purple] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set purple sot_tutorial_delay -1