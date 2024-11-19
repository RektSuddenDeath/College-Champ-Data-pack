title @a times 0 40 10
title @a title [{"text":"对战即将开始","color":"red"}]
title @a subtitle [{"text":"⏵2⏴","color":"gold"}]
execute as @a at @s run playsound minecraft:sound.countdown record @s ~ ~ ~ 1
execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~