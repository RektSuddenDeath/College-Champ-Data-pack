title @a[tag=in_gold_rush] times 0 40 10
title @a[tag=in_gold_rush] title [{"text":"采集挑战即将开始","color":"aqua"}]
title @a[tag=in_gold_rush] subtitle [{"text":"⏵1⏴","color":"red"}]
execute as @a[tag=in_gold_rush] at @s run playsound minecraft:sound.countdown record @s ~ ~ ~ 1
execute as @a[tag=in_gold_rush] at @s run playsound sound.timer_tick_normal record @s ~ ~ ~