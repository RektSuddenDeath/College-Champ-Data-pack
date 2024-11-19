
execute if score minute master.timer matches 0 if score second master.timer matches 10 run execute as @a at @s if dimension sg:sjtu run execute in overworld run tp @s -10000 117.00 -10028 0 0
execute if score lobby tourney_stats matches 1 run schedule function decisiondome:elevatorjoke/6/loop 1t