title @a times 0 40 10
title @a title [{"text":"游戏即将开始","color":"aqua"}]
title @a subtitle [{"text":"⏵10⏴","color":"white"}]
execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~

execute as @a[tag=!mutemusic] at @s run playsound minecraft:music.gameintro voice @s