 
tag @e[type=area_effect_cloud,tag=inactive,sort=nearest,limit=1] remove inactive

tellraw @a[team=red] ["",{"selector":"@p[team=red,gamemode=adventure]"},"§6开启了§2绿色宝库§6！"]
tellraw @a[tag=!admin] ["",{"translate":"team.red"},"§e开启了一个宝库！"]
tellraw @a[tag=admin] ["",{"translate":"team.red"},"§e开启了§2绿色宝库§e！"]

execute as @a[team=red] at @s run playsound sound.sands_of_time.vault_open_ally record @s
scoreboard players set red.G SotVault 0