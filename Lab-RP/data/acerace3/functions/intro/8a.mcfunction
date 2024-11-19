execute if score second master.timer matches 5 run title @a title [{"text":"游戏即将开始","color":"aqua"}]
execute if score second master.timer matches 5 run title @a subtitle [{"text":"⏵4⏴","color":"white"}]
# execute if score second master.timer matches 5 run execute as @a at @s run playsound minecraft:blocknote_block.guitar ambient @s ~ ~ ~ 100 1

execute unless score second master.timer matches 5 run schedule function acerace3:intro/8a 1s