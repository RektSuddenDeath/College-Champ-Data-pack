
execute as @a at @s run playsound sound.generalshrinkwarn record @s

tellraw @a [{"color":"red","text":"———————————————————————————————————"}]
tellraw @a ["§c[§r鼱§c] 倍率为负时的分数计算方式："]
tellraw @a ""
tellraw @a ["  §b队伍所得的分数将除以§6§l一定数值§b，并将这个值用于扣除"]
tellraw @a ["  §b除了本队以外所有队伍的分数。"]
tellraw @a ["  "]
tellraw @a ["  §6一定数值§b基于队伍§c未计算倍率§b时的排名："]
tellraw @a ["  §b1-8名：",{"text": "3 / 4 / 4 / 5 / 5 / 6 / 6 / 6","color": "#E3E3E3"}]
tellraw @a [{"color":"red","text":"———————————————————————————————————"}]