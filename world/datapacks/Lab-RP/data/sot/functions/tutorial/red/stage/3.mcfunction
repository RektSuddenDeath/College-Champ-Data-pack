
execute as @a[team=red] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=red] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=red] " "
tellraw @a[team=red] "  §e§l你的时间由前方的沙漏限定。"
tellraw @a[team=red] "  每个沙子能为你的队伍恢复§b10§f秒的挑战时间。"
tellraw @a[team=red] " "
tellraw @a[team=red] "  沙子可以被放在§b天蓝色羊毛§r上。你最多可以存储§c§l120§r秒。"
tellraw @a[team=red] " "
tellraw @a[team=red] "  §c§l教程任务：§r将一枚沙子填入沙漏"
tellraw @a[team=red] " "
tellraw @a[team=red] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set red sot_tutorial_delay -1