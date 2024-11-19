
execute as @a[team=red] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=red] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=red] " "
tellraw @a[team=red] "  在隧道的尽头，你将能使用刚刚获取的钥匙打开宝库。"
tellraw @a[team=red] "  "
tellraw @a[team=red] "  宝库中有大量的§6金币§r等奖励！"
tellraw @a[team=red] "  "
tellraw @a[team=red] " "
tellraw @a[team=red] "  §c§l教程任务：§r开启§c红色宝库"
tellraw @a[team=red] " "
tellraw @a[team=red] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set red sot_tutorial_delay -1