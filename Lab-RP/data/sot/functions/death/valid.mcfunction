
execute as @a[scores={SotDeath=1},team=!spec] at @s unless block ~ ~ ~ lava run tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"},"§c死亡了！ 其身上",{"score":{"name": "@s","objective": "SotPersonal"},"color": "gold"},"§c金币的80%已掉落在地。"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
execute as @a[scores={SotDeath=1},team=!spec] at @s if block ~ ~ ~ lava run tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"},"§c死亡了！ 其身上",{"score":{"name": "@s","objective": "SotPersonal"},"color": "gold"},"§c金币的80%已掉落在地。"," §c(In Lava)"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

execute as @a[scores={SotDeath=1},team=blue,tag=!sumo_warden] at @s run function sot:death/blue
execute as @a[scores={SotDeath=1},team=red,tag=!sumo_warden] at @s run function sot:death/red
execute as @a[scores={SotDeath=1},team=green,tag=!sumo_warden] at @s run function sot:death/green
execute as @a[scores={SotDeath=1},team=yellow,tag=!sumo_warden] at @s run function sot:death/yellow
execute as @a[scores={SotDeath=1},team=cyan,tag=!sumo_warden] at @s run function sot:death/cyan
execute as @a[scores={SotDeath=1},team=orange,tag=!sumo_warden] at @s run function sot:death/orange
execute as @a[scores={SotDeath=1},team=purple,tag=!sumo_warden] at @s run function sot:death/purple
execute as @a[scores={SotDeath=1},team=pink,tag=!sumo_warden] at @s run function sot:death/pink


scoreboard players set @a SotDeath 0
execute if score gameflag SotGame matches 1 run schedule function sot:death/valid 1t