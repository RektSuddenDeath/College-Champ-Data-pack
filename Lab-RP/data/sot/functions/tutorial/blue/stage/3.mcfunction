
execute as @a[team=blue] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=blue] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=blue] " "
tellraw @a[team=blue] "  §e§l你的时间由前方的沙漏限定。"
tellraw @a[team=blue] "  每个沙子能为你的队伍恢复§b10§f秒的挑战时间。"
tellraw @a[team=blue] " "
tellraw @a[team=blue] "  沙子可以被放在§b天蓝色羊毛§r上。你最多可以存储§c§l120§r秒。"
tellraw @a[team=blue] " "
tellraw @a[team=blue] "  §c§l教程任务：§r将一枚沙子填入沙漏"
tellraw @a[team=blue] " "
tellraw @a[team=blue] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set blue sot_tutorial_delay -1