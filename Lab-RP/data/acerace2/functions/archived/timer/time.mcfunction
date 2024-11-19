#General Timer
scoreboard players add second ar_time 1
scoreboard players remove endtime ar_time 1

execute if score second ar_time matches 60 run scoreboard players add minute ar_time 1
execute if score second ar_time matches 60 run scoreboard players set second ar_time 0

#Lap Timer for every player

scoreboard players add @a ar_indvtime 1

#Actionbar Text

execute as @a[team=!spec] if score finishwarn ar_game matches 0 if score second ar_time matches 10..60 if score @s ar_laps matches 1..3 run title @s actionbar [{"text":"第","color":"yellow"},{"score":{"objective":"ar_laps","name":"@s"},"color":"white"},{"text":"圈           ","color":"yellow"},{"text":"已用时间: ","color":"yellow"},{"score":{"objective":"ar_time","name":"minute"},"color":"white"},{"text":":","color":"white"},{"score":{"objective":"ar_time","name":"second"},"color":"white"}]
execute as @a[team=spec] if score finishwarn ar_game matches 0 if score second ar_time matches 10..60 run title @s actionbar [{"text":"SPECTATOR           ","color":"gray","bold":true},{"text":"已用时间: ","color":"yellow","bold":false},{"score":{"objective":"ar_time","name":"minute"},"color":"white"},{"text":":","color":"white"},{"score":{"objective":"ar_time","name":"second"},"color":"white"}]
execute as @a[team=!spec] if score finishwarn ar_game matches 0 if score second ar_time matches 10..60 if score @s ar_laps matches 0 run title @s actionbar [{"text":"你已完成挑战，恭喜！    ","color":"aqua","bold":true},{"text":"已用时间: ","color":"yellow"},{"score":{"objective":"ar_time","name":"minute"},"color":"white"},{"text":":","color":"white"},{"score":{"objective":"ar_time","name":"second"},"color":"white"}]

execute as @a[team=!spec] if score finishwarn ar_game matches 0 if score second ar_time matches 0..9 if score @s ar_laps matches 1..3 run title @s actionbar [{"text":"第","color":"yellow"},{"score":{"objective":"ar_laps","name":"@s"},"color":"white"},{"text":"圈           ","color":"yellow"},{"text":"已用时间: ","color":"yellow"},{"score":{"objective":"ar_time","name":"minute"},"color":"white"},{"text":":0","color":"white"},{"score":{"objective":"ar_time","name":"second"},"color":"white"}]
execute as @a[team=spec] if score finishwarn ar_game matches 0 if score second ar_time matches 0..9 run title @s actionbar [{"text":"SPECTATOR           ","color":"gray","bold":true},{"text":"已用时间: ","color":"yellow","bold":false},{"score":{"objective":"ar_time","name":"minute"},"color":"white"},{"text":":0","color":"white"},{"score":{"objective":"ar_time","name":"second"},"color":"white"}]
execute as @a[team=!spec] if score finishwarn ar_game matches 0 if score second ar_time matches 0..9 if score @s ar_laps matches 0 run title @s actionbar [{"text":"你已完成挑战，恭喜！    ","color":"aqua","bold":true},{"text":"已用时间: ","color":"yellow"},{"score":{"objective":"ar_time","name":"minute"},"color":"white"},{"text":":0","color":"white"},{"score":{"objective":"ar_time","name":"second"},"color":"white"}]

execute as @a[team=!spec] if score finishwarn ar_game matches 1 if score second ar_time matches 10..60 if score @s ar_laps matches 1..3 run title @s actionbar [{"text":"第","color":"yellow"},{"score":{"objective":"ar_laps","name":"@s"},"color":"white"},{"text":"圈           ","color":"yellow"},{"text":"已用时间: ","color":"yellow"},{"score":{"objective":"ar_time","name":"minute"},"color":"white"},{"text":":","color":"white"},{"score":{"objective":"ar_time","name":"second"},"color":"white"}]
execute as @a[team=!spec] if score finishwarn ar_game matches 1 if score second ar_time matches 10..60 if score @s ar_laps matches 0 run title @s actionbar [{"text":"你已完成挑战，恭喜！    ","color":"aqua","bold":true},{"text":"已用时间: ","color":"yellow","bold":false},{"score":{"objective":"ar_time","name":"minute"},"color":"white"},{"text":":","color":"white"},{"score":{"objective":"ar_time","name":"second"},"color":"white"}]
execute as @a[team=spec] if score finishwarn ar_game matches 1 if score second ar_time matches 10..60 run title @s actionbar [{"text":"SPECTATOR   ","color":"gray","bold":true},{"text":"OVERTIME","color":"red","bold":true},{"text":"已用时间: ","color":"yellow","bold":false},{"score":{"objective":"ar_time","name":"minute"},"color":"white"},{"text":":","color":"white"},{"score":{"objective":"ar_time","name":"second"},"color":"white"}]

execute as @a[team=!spec] if score finishwarn ar_game matches 1 if score second ar_time matches 0..9 if score @s ar_laps matches 1..3 run title @s actionbar [{"text":"第","color":"yellow"},{"score":{"objective":"ar_laps","name":"@s"},"color":"white"},{"text":"圈           ","color":"yellow"},{"text":"已用时间: ","color":"yellow"},{"score":{"objective":"ar_time","name":"minute"},"color":"white"},{"text":":0","color":"white"},{"score":{"objective":"ar_time","name":"second"},"color":"white"}]
execute as @a[team=!spec] if score finishwarn ar_game matches 1 if score second ar_time matches 0..9 if score @s ar_laps matches 0 run title @s actionbar [{"text":"你已完成挑战，恭喜！    ","color":"aqua","bold":true},{"text":"已用时间: ","color":"yellow","bold":false},{"score":{"objective":"ar_time","name":"minute"},"color":"white"},{"text":":0","color":"white"},{"score":{"objective":"ar_time","name":"second"},"color":"white"}]
execute as @a[team=spec] if score finishwarn ar_game matches 1 if score second ar_time matches 0..9 run title @s actionbar [{"text":"SPECTATOR   ","color":"gray","bold":true},{"text":"OVERTIME","color":"red","bold":true},{"text":"已用时间: ","color":"yellow","bold":false},{"score":{"objective":"ar_time","name":"minute"},"color":"white"},{"text":":0","color":"white"},{"score":{"objective":"ar_time","name":"second"},"color":"white"}]

execute if score endtime ar_time matches 0 run function acerace2:end
execute if score minute master.timer matches 0 if score second master.timer matches 0 run function acerace2:end
execute if score gameflag ar_game matches 1 run schedule function acerace2:timer/time 1s
