
execute if score @s ar_laps matches 1 run function acerace4:checkpoint/disp_nt/8
execute if score @s ar_laps matches 2..4 run function acerace4:checkpoint/disp/8
scoreboard players set @s ar_cp 8

clear @s trident 
title @s actionbar ["",{"text": "-","color": "red"}," 䅃",{"text": " 三叉戟","color": "red"}]
scoreboard players set @s ar_actionbarcd 30