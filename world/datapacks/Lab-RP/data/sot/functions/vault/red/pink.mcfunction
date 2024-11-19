 
tag @e[type=area_effect_cloud,tag=inactive,sort=nearest,limit=1] remove inactive
execute as @e[tag=redvaultblaze,distance=0..25] run data merge entity @s {NoAI:0b,Invulnerable:0b} 

tellraw @a[team=pink] ["",{"selector":"@p[team=pink,gamemode=adventure]"},"§6开启了§c红色宝库§6！"]
tellraw @a[tag=!admin] ["",{"translate":"team.pink"},"§e开启了一个宝库！"]
tellraw @a[tag=admin] ["",{"translate":"team.pink"},"§e开启了§c红色宝库§e！"]

execute as @a[team=pink] at @s run playsound sound.sands_of_time.vault_open_ally record @s
scoreboard players set pink.R SotVault 0