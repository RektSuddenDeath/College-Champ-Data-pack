 
tag @e[type=area_effect_cloud,tag=inactive,sort=nearest,limit=1] remove inactive

tellraw @a[team=green] ["",{"selector":"@p[team=green,gamemode=adventure]"},"§6开启了§9蓝色宝库§6！"]
tellraw @a[tag=!admin] ["",{"translate":"team.green"},"§e开启了一个宝库！"]
tellraw @a[tag=admin] ["",{"translate":"team.green"},"§e开启了§9蓝色宝库§e！"]

execute as @a[team=green] at @s run playsound sound.sands_of_time.vault_open_ally record @s
scoreboard players set green.B SotVault 0