
execute if score @s ar_laps matches 1 run function acerace4:checkpoint/disp_nt/7
execute if score @s ar_laps matches 2..4 run function acerace4:checkpoint/disp/7
scoreboard players set @s ar_cp 7

give @s trident{Enchantments:[{id:"riptide",lvl:2}],Unbreakable:1b}
title @s actionbar ["",{"text": "+","color": "green"}," 䅃",{"text": " 三叉戟","color": "green"}]
scoreboard players set @s ar_actionbarcd 30

