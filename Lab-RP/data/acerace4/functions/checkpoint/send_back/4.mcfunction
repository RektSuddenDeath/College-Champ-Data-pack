
execute in minecraft:overworld run tp @s -50387.49 73.00 -50000.67 3060.74 4.38

title @s title "§c错过记录点！"
title @s times 10 20 10

tellraw @s "§a你已被传送回上一个成功记录的记录点。"


scoreboard players set @s ar_sectime 0