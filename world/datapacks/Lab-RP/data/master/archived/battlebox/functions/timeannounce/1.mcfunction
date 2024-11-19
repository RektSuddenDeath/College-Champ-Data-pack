
title @a title [{"text":"对战即将开始","color":"aqua"}]
title @a subtitle [{"text":"⏵1⏴","color":"red"}]
execute as @a at @s run playsound minecraft:blocknote_block.guitar ambient @s ~ ~ ~ 100 1
schedule function battlebox:start 1s
