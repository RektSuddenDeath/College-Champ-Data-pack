execute if score second master.timer matches 4 run title @a title [{"text":"游戏即将开始","color":"aqua"}]
execute if score second master.timer matches 4 run title @a subtitle [{"text":"⏵3⏴","color":"green"}]
execute if score second master.timer matches 4 run execute as @a at @s run playsound minecraft:sound.countdown record @s ~ ~ ~ 1

execute unless score second master.timer matches 4 run schedule function acerace2:intro/9a 1s