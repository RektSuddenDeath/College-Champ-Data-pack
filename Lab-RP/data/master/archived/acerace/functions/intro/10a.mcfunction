execute if score second master.timer matches 3 run title @a title [{"text":"游戏即将开始","color":"aqua"}]
execute if score second master.timer matches 3 run title @a subtitle [{"text":"▶ ","color":"white"},{"text":"2","color":"gold"},{"text":" ◀","color":"white"}]
execute if score second master.timer matches 3 run execute as @a at @s run playsound minecraft:blocknote_block.guitar ambient @s ~ ~ ~ 100 1

execute unless score second master.timer matches 3 run schedule function acerace:intro/10a 1s