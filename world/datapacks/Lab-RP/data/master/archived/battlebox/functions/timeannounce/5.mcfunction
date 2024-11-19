
title @a times 0 40 10
title @a title [{"text":"对战即将开始","color":"aqua"}]
title @a subtitle [{"text":"⏵5⏴","color":"white"}]
execute as @a at @s run playsound minecraft:blocknote_block.guitar ambient @s ~ ~ ~ 100 1

function battlebox:kitdistribution

kill @e[type=item]

#these stops players from selecting kits.

