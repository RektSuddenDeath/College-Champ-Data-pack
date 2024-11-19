


execute if entity @s[team=red] run scoreboard players add red univ_modifier_multi_uses_5 1
execute if entity @s[team=blue] run scoreboard players add blue univ_modifier_multi_uses_5 1
execute if entity @s[team=green] run scoreboard players add green univ_modifier_multi_uses_5 1
execute if entity @s[team=yellow] run scoreboard players add yellow univ_modifier_multi_uses_5 1
execute if entity @s[team=cyan] run scoreboard players add cyan univ_modifier_multi_uses_5 1
execute if entity @s[team=pink] run scoreboard players add pink univ_modifier_multi_uses_5 1
execute if entity @s[team=orange] run scoreboard players add orange univ_modifier_multi_uses_5 1
execute if entity @s[team=purple] run scoreboard players add purple univ_modifier_multi_uses_5 1


execute if entity @s[team=red] run tellraw @a[team=red] ["§b[§r坕§b] ",{"selector":"@s"}, "§b找到了一个","§a绿色糖果","§b，为本队提供了一次更改",{"text": "0.05x","color": "#E3E3E3"},"§b倍率的机会。"," §6(",{"score":{"name": "red","objective": "univ_modifier_multi_uses_5"},"color": "gold"},"§6)"]
execute if entity @s[team=blue] run tellraw @a[team=blue] ["§b[§r坕§b] ",{"selector":"@s"}, "§b找到了一个","§a绿色糖果","§b，为本队提供了一次更改",{"text": "0.05x","color": "#E3E3E3"},"§b倍率的机会。"," §6(",{"score":{"name": "blue","objective": "univ_modifier_multi_uses_5"},"color": "gold"},"§6)"]
execute if entity @s[team=green] run tellraw @a[team=green] ["§b[§r坕§b] ",{"selector":"@s"}, "§b找到了一个","§a绿色糖果","§b，为本队提供了一次更改",{"text": "0.05x","color": "#E3E3E3"},"§b倍率的机会。"," §6(",{"score":{"name": "green","objective": "univ_modifier_multi_uses_5"},"color": "gold"},"§6)"]
execute if entity @s[team=yellow] run tellraw @a[team=yellow] ["§b[§r坕§b] ",{"selector":"@s"}, "§b找到了一个","§a绿色糖果","§b，为本队提供了一次更改",{"text": "0.05x","color": "#E3E3E3"},"§b倍率的机会。"," §6(",{"score":{"name": "yellow","objective": "univ_modifier_multi_uses_5"},"color": "gold"},"§6)"]
execute if entity @s[team=cyan] run tellraw @a[team=cyan] ["§b[§r坕§b] ",{"selector":"@s"}, "§b找到了一个","§a绿色糖果","§b，为本队提供了一次更改",{"text": "0.05x","color": "#E3E3E3"},"§b倍率的机会。"," §6(",{"score":{"name": "cyan","objective": "univ_modifier_multi_uses_5"},"color": "gold"},"§6)"]
execute if entity @s[team=pink] run tellraw @a[team=pink] ["§b[§r坕§b] ",{"selector":"@s"}, "§b找到了一个","§a绿色糖果","§b，为本队提供了一次更改",{"text": "0.05x","color": "#E3E3E3"},"§b倍率的机会。"," §6(",{"score":{"name": "pink","objective": "univ_modifier_multi_uses_5"},"color": "gold"},"§6)"]
execute if entity @s[team=orange] run tellraw @a[team=orange] ["§b[§r坕§b] ",{"selector":"@s"}, "§b找到了一个","§a绿色糖果","§b，为本队提供了一次更改",{"text": "0.05x","color": "#E3E3E3"},"§b倍率的机会。"," §6(",{"score":{"name": "orange","objective": "univ_modifier_multi_uses_5"},"color": "gold"},"§6)"]
execute if entity @s[team=purple] run tellraw @a[team=purple] ["§b[§r坕§b] ",{"selector":"@s"}, "§b找到了一个","§a绿色糖果","§b，为本队提供了一次更改",{"text": "0.05x","color": "#E3E3E3"},"§b倍率的机会。"," §6(",{"score":{"name": "purple","objective": "univ_modifier_multi_uses_5"},"color": "gold"},"§6)"]
