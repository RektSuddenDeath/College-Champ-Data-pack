
execute as @a[team=blue] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=blue] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=blue] " "
tellraw @a[team=blue] "  在隧道的尽头，你将能使用刚刚获取的钥匙打开宝库。"
tellraw @a[team=blue] "  "
tellraw @a[team=blue] "  宝库中有大量的§6金币§r等奖励！"
tellraw @a[team=blue] "  "
tellraw @a[team=blue] " "
tellraw @a[team=blue] "  §c§l教程任务：§r开启§c红色宝库"
tellraw @a[team=blue] " "
tellraw @a[team=blue] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set blue sot_tutorial_delay -1