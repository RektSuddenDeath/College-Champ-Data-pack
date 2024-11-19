execute at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
execute at @s run playsound minecraft:sound.bigcoins record @s ~ ~ ~ 0.5 1
execute at @s run playsound minecraft:sound.elimination_pop record @s ~ ~ ~ 0.5 1
tellraw @a[team=purple] ["",{"selector":"@a[scores={killedByPurple=1}]"},{"text": "被"},{"selector":"@s"},{"text":"抓捕"}]
tellraw @s ["[§6+",{"score":{"name": "hunt","objective": "pkt_stats"},"color":"gold"},"§6分§r]",{"text": "你抓捕了"},{"selector":"@a[scores={killedByPurple=1}]"},{"text": "!"}]
tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@a[scores={killedByPurple=1}]"},{"text": "被"},{"selector":"@s"},{"text":"抓捕"}]
tellraw @a[tag=admin,tag=!_transcript] ["",{"selector":"@a[scores={killedByPurple=1}]"},{"text": "被"},{"selector":"@s"},{"text":"抓捕"}]

title @s times 0 60 10
title @s title ""
title @s subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={killedByPurple=1}]"}]

execute as @a[scores={killedByPurple=1}] run scoreboard players operation @a[team=purple,scores={pkt_kills=1..}] pkt_indvscore += hunt pkt_stats