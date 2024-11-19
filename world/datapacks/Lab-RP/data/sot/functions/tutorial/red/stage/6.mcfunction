
execute as @a[team=red] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=red] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=red] " "
tellraw @a[team=red] "  §e§l隧道中有时会遇到前方的§7§l木门障碍§e§l。"
tellraw @a[team=red] " "
tellraw @a[team=red] "  这些木门需要一枚§7生锈的钥匙§f开启。"
tellraw @a[team=red] "  "
tellraw @a[team=red] "  §c§l教程任务：§r找到一枚生锈的钥匙，开启通路。"
tellraw @a[team=red] " "
tellraw @a[team=red] " "
tellraw @a[team=red] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set red sot_tutorial_delay -1