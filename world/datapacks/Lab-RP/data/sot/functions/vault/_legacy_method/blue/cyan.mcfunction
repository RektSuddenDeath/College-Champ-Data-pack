
execute as @e[type=area_effect_cloud,tag=SotCore,tag=cyan] at @s if block ~168 87 ~-10 blue_concrete if score cyan.B SotVault matches 1 run summon area_effect_cloud ~168 85 ~-11 {Duration:999999,Tags:["opener_vault_small","north","sotopener"]}
execute as @e[type=area_effect_cloud,tag=SotCore,tag=cyan] at @s if block ~168 87 ~-10 blue_concrete if score cyan.B SotVault matches 1 run execute positioned ~168 87 ~-10 run tellraw @a[team=cyan] ["",{"selector":"@p[team=cyan,gamemode=adventure]"},"§6开启了§9蓝色宝库§6！"]
execute as @e[type=area_effect_cloud,tag=SotCore,tag=cyan] at @s if block ~168 87 ~-10 blue_concrete if score cyan.B SotVault matches 1 run tellraw @a ["","§3青队","§6开启了§9蓝色宝库§6！"]
execute as @e[type=area_effect_cloud,tag=SotCore,tag=cyan] at @s if block ~168 87 ~-10 blue_concrete if score cyan.B SotVault matches 1 run execute as @a[team=cyan] at @s run playsound sound.sands_of_time.vault_open_ally record @s
scoreboard players set blue.B SotVault 0