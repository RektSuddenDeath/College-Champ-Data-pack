title @a times 0 40 10
title @a title [{"text":"竞逐即将开始","color":"aqua"}]
title @a subtitle [{"text":"⏵1⏴","color":"red"}]
execute as @a at @s run playsound minecraft:sound.countdown record @s ~ ~ ~ 1
execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~

# Teleport Players
schedule function railroadrush:init_transfer_nogm 18t