
execute as @e[type=area_effect_cloud,tag=SotCore,tag=orange] at @s if block ~64 88 ~-15 green_concrete if score orange.G SotVault matches 1 run summon area_effect_cloud ~64 86 ~-15 {Duration:999999,Tags:["opener_vault_small","west","sotopener"]}
execute as @e[type=area_effect_cloud,tag=SotCore,tag=orange] at @s if block ~64 88 ~-15 green_concrete if score orange.G SotVault matches 1 run execute positioned ~64 88 ~-15 run tellraw @a[team=orange] ["",{"selector":"@p[team=orange,gamemode=adventure]"},"§6开启了§2绿色宝库§6！"]
execute as @e[type=area_effect_cloud,tag=SotCore,tag=orange] at @s if block ~64 88 ~-15 green_concrete if score orange.G SotVault matches 1 run tellraw @a ["","§6橙队","§6开启了§2绿色宝库§6！"]
execute as @e[type=area_effect_cloud,tag=SotCore,tag=orange] at @s if block ~64 88 ~-15 green_concrete if score orange.G SotVault matches 1 run execute as @a[team=orange] at @s run playsound sound.sands_of_time.vault_open_ally record @s
scoreboard players set blue.G SotVault 0