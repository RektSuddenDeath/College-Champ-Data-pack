title @a title [{"text":"对战即将开始","color":"aqua"}]
title @a subtitle [{"text":"⏵2⏴","color":"yellow"}]
execute as @a at @s run playsound minecraft:sound.countdown record @s ~ ~ ~ 1
execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~