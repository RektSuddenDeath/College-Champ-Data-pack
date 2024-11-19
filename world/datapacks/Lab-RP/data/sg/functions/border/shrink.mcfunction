tellraw @a ["","§c[§r鼱§c] ","§c边界开始收缩！"]
execute as @a at @s run playsound minecraft:sound.longshrinkbegin record @s
execute in sg:sjtu run worldborder add -75 30
title @a times 5 40 5
title @a title ""
title @a subtitle "§c边界开始收缩"