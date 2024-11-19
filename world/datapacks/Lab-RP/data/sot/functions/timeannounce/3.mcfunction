title @a times 0 40 10
title @a title [{"text":"游戏即将开始","color":"aqua"}]
title @a subtitle [{"text":"⏵3⏴","color":"green"}]
execute as @a at @s run playsound sound.timer_tick_normal record @s ~ ~ ~

execute as @a at @s run playsound minecraft:sound.countdown record @s ~ ~ ~ 1

# Start near vaults modifier
execute unless score modifiers_start_near_vaults SotGame matches 1 run return 0

effect give @a[team=!spec] blindness 3 0 true