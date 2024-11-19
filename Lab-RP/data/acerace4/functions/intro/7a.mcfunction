execute if score second master.timer matches 6 run title @a times 0 40 10
execute if score second master.timer matches 6 run title @a title [{"text":"游戏即将开始","color":"aqua"}]
execute if score second master.timer matches 6 run title @a subtitle [{"text":"⏵5⏴","color":"white"}]
# execute if score second master.timer matches 6 run execute as @a at @s run playsound minecraft:blocknote_block.guitar ambient @s ~ ~ ~ 100 1

execute unless score second master.timer matches 6 run schedule function acerace4:intro/7a 1s