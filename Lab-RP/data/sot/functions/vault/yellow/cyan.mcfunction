 
tag @e[type=area_effect_cloud,tag=inactive,sort=nearest,limit=1] remove inactive
execute as @e[tag=yellowvaultmob,distance=0..25] run data merge entity @s {NoAI:0b,Invulnerable:0b} 
tellraw @a[team=cyan] ["",{"selector":"@p[team=cyan,gamemode=adventure]"},"§6开启了§e黄色宝库§6！"]
tellraw @a[tag=!admin] ["",{"translate":"team.cyan"},"§e开启了一个宝库！"]
tellraw @a[tag=admin] ["",{"translate":"team.cyan"},"§e开启了§e黄色宝库§e！"]

execute as @a[team=cyan] at @s run playsound sound.sands_of_time.vault_open_ally record @s
scoreboard players set cyan.Y SotVault 0