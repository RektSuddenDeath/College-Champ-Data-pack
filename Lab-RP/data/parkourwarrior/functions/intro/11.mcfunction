
title @a title [{"text":"游戏即将开始","color":"aqua"}]
title @a subtitle [{"text":"⏵3⏴","color":"green"}]
execute as @a at @s run playsound minecraft:blocknote_block.guitar ambient @s ~ ~ ~ 100 1
execute as @a at @s run playsound minecraft:sound.countdown record @s ~ ~ ~ 1

effect give @a invisibility 1000000 0 true

team modify red seeFriendlyInvisibles true
team modify blue seeFriendlyInvisibles true
team modify green seeFriendlyInvisibles true
team modify yellow seeFriendlyInvisibles true