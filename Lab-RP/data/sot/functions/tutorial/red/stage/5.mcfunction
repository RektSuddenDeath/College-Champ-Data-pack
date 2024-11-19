
execute as @a[team=red] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=red] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=red] " "
tellraw @a[team=red] "  §e§l部分隧道的深处存在高价值的宝库。"
tellraw @a[team=red] " "
tellraw @a[team=red] "  通向宝库的通道由隧道墙上的§a彩色方块§f标识。"
tellraw @a[team=red] "  "
tellraw @a[team=red] "  §c§l教程任务：§r全队进入§c红色通道§r"
tellraw @a[team=red] " "
tellraw @a[team=red] " "
tellraw @a[team=red] [{"color":"green","text":"———————————————————————————————————"}]

execute as @e[type=area_effect_cloud,tag=SotCore,tag=red] at @s positioned ~-500 ~ ~-500 run fill ~514 -35 ~503 ~515 -38 ~505 air
scoreboard players set red sot_tutorial_delay -1