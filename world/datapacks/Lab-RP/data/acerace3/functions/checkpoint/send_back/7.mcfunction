
execute in minecraft:overworld run tp @s -30012.65 112.00 -29956.62 1661 0
title @s title "§c错过记录点！"
title @s times 10 20 10

tellraw @s "§a你已被传送回上一个成功记录的记录点。"

scoreboard players set @s ar_sectime 0