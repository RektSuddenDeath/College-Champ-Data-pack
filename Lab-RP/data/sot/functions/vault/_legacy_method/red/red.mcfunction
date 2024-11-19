
execute as @e[type=area_effect_cloud,tag=SotCore,tag=red] at @s if block ~-7 74 ~-171 red_concrete if score red.R SotVault matches 1 run summon area_effect_cloud ~-7 72 ~-171 {Duration:999999,Tags:["opener_vault_small","west","sotopener"]}
execute as @e[type=area_effect_cloud,tag=SotCore,tag=red] at @s if block ~-7 74 ~-171 red_concrete if score red.R SotVault matches 1 run execute positioned ~-7 74 ~-171 run tellraw @a[team=red] ["",{"selector":"@p[team=red,gamemode=adventure]"},"§6开启了§c红色宝库§6！"]
execute as @e[type=area_effect_cloud,tag=SotCore,tag=red] at @s if block ~-7 74 ~-171 red_concrete if score red.R SotVault matches 1 run tellraw @a ["","§c红队","§6开启了§c红色宝库§6！"]
execute as @e[type=area_effect_cloud,tag=SotCore,tag=red] at @s if block ~-7 74 ~-171 red_concrete if score red.R SotVault matches 1 run execute positioned ~-7 74 ~-171 as @e[tag=redvaultblaze,distance=0..25] run data merge entity @s {NoAI:0b,Invulnerable:0b} 
execute as @e[type=area_effect_cloud,tag=SotCore,tag=red] at @s if block ~-7 74 ~-171 red_concrete if score red.R SotVault matches 1 run execute as @a[team=red] at @s run playsound sound.sands_of_time.vault_open_ally record @s
scoreboard players set blue.R SotVault 0
