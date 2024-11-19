title @a[tag=in_gold_rush] times 0 40 10
title @a[tag=in_gold_rush] title [{"text":"采集挑战即将开始","color":"aqua"}]
title @a[tag=in_gold_rush] subtitle [{"text":"⏵10⏴","color":"white"}]

execute as @a[tag=in_gold_rush] at @s run playsound sound.timer_tick_normal record @s ~ ~ ~

#execute as @a[tag=!mutemusic] at @s run playsound minecraft:music.gameintro voice @s