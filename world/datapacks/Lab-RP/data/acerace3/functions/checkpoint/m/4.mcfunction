
execute if score @s ar_laps matches 1 run function acerace3:checkpoint/disp_nt/4
execute if score @s ar_laps matches 2..4 run function acerace3:checkpoint/disp/4
scoreboard players set @s ar_cp 4

scoreboard players set @s ar_actionbarcd 30
effect clear @s dolphins_grace
item replace entity @s armor.chest with elytra{Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1}]}
item replace entity @s armor.feet with air

title @s actionbar ["",{"text": "+","color": "green"}," 䅄",{"text": " 鞘翅","color": "green"},"  ",{"text": "-","color": "red"}," 䅂",{"text": " 海豚的恩惠","color": "red"}]
