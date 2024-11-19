
execute in minecraft:overworld run tp @s -50280.20 97.00 -50033.53 3121.95 9.69
title @s title "§c错过记录点！"
title @s times 10 20 10

tellraw @s "§a你已被传送回上一个成功记录的记录点。"

item replace entity @s armor.chest with elytra{Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1}]}
item replace entity @s armor.feet with air

title @s actionbar ["",{"text": "+","color": "green"}," 䅄",{"text": " 鞘翅","color": "green"},"  ",{"text": "-","color": "red"}]
scoreboard players set @s ar_sectime 0