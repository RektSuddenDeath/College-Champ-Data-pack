
execute as @e[type=area_effect_cloud,tag=SotCore,tag=orange] at @s if block ~127 69 ~35 yellow_concrete if score orange.Y SotVault matches 1 run summon area_effect_cloud ~127 67 ~35 {Duration:999999,Tags:["opener_vault_large","west","sotopener"]}
execute as @e[type=area_effect_cloud,tag=SotCore,tag=orange] at @s if block ~127 69 ~35 yellow_concrete if score orange.Y SotVault matches 1 run execute positioned ~127 69 ~35 run tellraw @a[team=orange] ["",{"selector":"@p[team=orange,gamemode=adventure]"},"§6开启了§e黄色宝库§6！"]
execute as @e[type=area_effect_cloud,tag=SotCore,tag=orange] at @s if block ~127 69 ~35 yellow_concrete if score orange.Y SotVault matches 1 run tellraw @a ["","§6橙队","§6开启了§e黄色宝库§6！"]
execute as @e[type=area_effect_cloud,tag=SotCore,tag=orange] at @s if block ~127 69 ~35 yellow_concrete if score orange.Y SotVault matches 1 run execute positioned ~127 69 ~35 as @e[tag=yellowvaultmob,distance=0..25] run data merge entity @s {NoAI:0b,Invulnerable:0b}
execute as @e[type=area_effect_cloud,tag=SotCore,tag=orange] at @s if block ~127 69 ~35 yellow_concrete if score orange.Y SotVault matches 1 run execute as @a[team=orange] at @s run playsound sound.sands_of_time.vault_open_ally record @s
scoreboard players set blue.Y SotVault 0
