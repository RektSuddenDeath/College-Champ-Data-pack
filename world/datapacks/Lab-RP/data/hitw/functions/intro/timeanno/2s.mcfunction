title @a times 0 40 20
title @a title [{"text":"游戏即将开始","color":"aqua"}]
title @a subtitle [{"text":"⏵2⏴","color":"gold"}]
execute as @a at @s run playsound minecraft:blocknote_block.guitar ambient @s ~ ~ ~ 100 1
execute as @a at @s run playsound minecraft:sound.countdown record @s ~ ~ ~ 1