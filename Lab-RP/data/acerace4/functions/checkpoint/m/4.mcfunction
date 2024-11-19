
execute if score @s ar_laps matches 1 run function acerace4:checkpoint/disp_nt/4
execute if score @s ar_laps matches 2..4 run function acerace4:checkpoint/disp/4
scoreboard players set @s ar_cp 4

clear @s trident
effect give @s dolphins_grace infinite 0 true

item replace entity @s armor.feet with iron_boots{Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:1}]}
title @s actionbar ["",{"text": "+","color": "green"}," 䅂",{"text": " 海豚的恩惠","color": "green"}]