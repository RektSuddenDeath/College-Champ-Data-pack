execute if score second master.timer matches 3 run title @a title [{"text":"游戏即将开始","color":"aqua"}]
execute if score second master.timer matches 3 run title @a subtitle [{"text":"⏵2⏴","color":"gold"}]
execute if score second master.timer matches 3 run execute as @a at @s run playsound minecraft:sound.countdown record @s ~ ~ ~ 1

execute unless score second master.timer matches 3 run schedule function acerace2:intro/10a 1s
