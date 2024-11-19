title @a times 0 40 20
title @a title [{"text":"游戏即将开始","color":"aqua"}]
title @a subtitle [{"text":"⏵2⏴","color":"gold"}]
execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~
execute as @a at @s run playsound minecraft:sound.countdown record @s ~ ~ ~ 1