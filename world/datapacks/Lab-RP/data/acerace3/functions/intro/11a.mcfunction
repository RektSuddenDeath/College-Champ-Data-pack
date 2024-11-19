execute if score second master.timer matches 2 run title @a title [{"text":"游戏即将开始","color":"aqua"}]
execute if score second master.timer matches 2 run title @a subtitle [{"text":"⏵1⏴","color":"red"}]
execute if score second master.timer matches 2 run execute as @a at @s run playsound minecraft:sound.countdown record @s ~ ~ ~ 1

execute if score second master.timer matches 2 run schedule function acerace3:start 1s

execute unless score second master.timer matches 1 run schedule function acerace3:intro/11a 1s