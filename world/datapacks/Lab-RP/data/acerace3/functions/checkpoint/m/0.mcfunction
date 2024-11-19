
execute if score @s ar_laps matches 1 run function acerace3:checkpoint/disp_nt/0
execute if score @s ar_laps matches 2..4 run function acerace3:checkpoint/disp/0

give @s trident{Enchantments:[{id:"riptide",lvl:2}],Unbreakable:1b}
title @s actionbar ["",{"text": "+","color": "green"}," 䅃",{"text": " 三叉戟","color": "green"}]
scoreboard players set @s ar_actionbarcd 30