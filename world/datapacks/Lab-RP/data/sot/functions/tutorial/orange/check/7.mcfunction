
title @a[team=orange] actionbar ["[§e!§f] ","解开谜题并获取§c红色钥匙§f。"]
execute as @e[type=area_effect_cloud,tag=SotCore,tag=orange] at @s positioned ~-500 ~ ~-500 if block ~559 -37 ~518 hopper{Items:[{id:"minecraft:paper",tag:{display:{Name:'"2"'}}}]} run fill ~556 -38 ~526 ~554 -35 ~526 air
execute if entity @a[team=orange,nbt={Inventory:[{id:"minecraft:red_concrete"}]}] run return 1
return 0
