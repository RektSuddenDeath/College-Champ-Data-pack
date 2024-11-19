
execute if score @s ar_laps matches 1 run function acerace3:checkpoint/disp_nt/3
execute if score @s ar_laps matches 2..4 run function acerace3:checkpoint/disp/3

scoreboard players set @s ar_actionbarcd 30
clear @s trident
effect give @s dolphins_grace infinite 0 true

item replace entity @s armor.feet with iron_boots{Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:2}]}
title @s actionbar ["",{"text": "+","color": "green"}," 䅂",{"text": " 海豚的恩惠","color": "green"},"  ",{"text": "-","color": "red"}," 䅃",{"text": " 三叉戟","color": "red"}]
scoreboard players set @s ar_cp 3