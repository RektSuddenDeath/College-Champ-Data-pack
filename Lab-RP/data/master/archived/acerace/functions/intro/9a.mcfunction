execute if score second master.timer matches 4 run title @a title [{"text":"游戏即将开始","color":"aqua"}]
execute if score second master.timer matches 4 run title @a subtitle [{"text":"▶ ","color":"white"},{"text":"3","color":"green"},{"text":" ◀","color":"white"}]
execute if score second master.timer matches 4 run execute as @a at @s run playsound minecraft:blocknote_block.guitar ambient @s ~ ~ ~ 100 1

execute unless score second master.timer matches 4 run schedule function acerace:intro/9a 1s