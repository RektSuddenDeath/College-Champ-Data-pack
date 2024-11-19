 
tag @e[type=area_effect_cloud,tag=inactive,sort=nearest,limit=1] remove inactive
execute as @e[tag=redvaultblaze,distance=0..25] run data merge entity @s {NoAI:0b,Invulnerable:0b} 

tellraw @a[team=orange] ["",{"selector":"@p[team=orange,gamemode=adventure]"},"§6开启了§c红色宝库§6！"]
tellraw @a[tag=!admin] ["",{"translate":"team.orange"},"§e开启了一个宝库！"]
tellraw @a[tag=admin] ["",{"translate":"team.orange"},"§e开启了§c红色宝库§e！"]

execute as @a[team=orange] at @s run playsound sound.sands_of_time.vault_open_ally record @s
scoreboard players set orange.R SotVault 0