
execute as @e[type=area_effect_cloud,tag=SotCore,tag=pink] at @s positioned ~-500 ~ ~-500 run tp @a[team=pink] ~495 -38 ~500 90 0

execute as @a[team=pink] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=pink] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=pink] " "
tellraw @a[team=pink] "  §b你已被传送回起始大厅。"
tellraw @a[team=pink] "  "
tellraw @a[team=pink] "  你需要在时间限制内完成挑战并从出生点逃出！"
tellraw @a[team=pink] "  如果你没能在沙漏流尽之前逃出，你将§c一无所获§f！"
tellraw @a[team=pink] "  现在从背后的§f传送门§r逃出，获取你的探索奖励吧！"
tellraw @a[team=pink] "  "
tellraw @a[team=pink] "  §c§l教程任务：§r逃出地牢"
tellraw @a[team=pink] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set pink sot_tutorial_delay -1