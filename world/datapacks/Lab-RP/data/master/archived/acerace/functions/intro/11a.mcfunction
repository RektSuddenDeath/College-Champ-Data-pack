execute if score second master.timer matches 2 run title @a title [{"text":"游戏即将开始","color":"aqua"}]
execute if score second master.timer matches 2 run title @a subtitle [{"text":"▶ ","color":"white"},{"text":"1","color":"red"},{"text":" ◀","color":"white"}]
execute if score second master.timer matches 2 run execute as @a at @s run playsound minecraft:blocknote_block.guitar ambient @s ~ ~ ~ 100 1

execute if score second master.timer matches 2 run schedule function acerace:start 1s

execute unless score second master.timer matches 1 run schedule function acerace:intro/11a 1s