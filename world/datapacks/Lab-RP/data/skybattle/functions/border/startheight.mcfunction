
title @a times 10 40 10
title @a title ""
title @a subtitle "§c边界开始下降"

tellraw @a ["§c(§r鼱§c) ","§c边界开始下降！"]

execute as @a at @s run playsound minecraft:sound.generalshrinkbegin record @s
scoreboard players set heightactive sba_game 1