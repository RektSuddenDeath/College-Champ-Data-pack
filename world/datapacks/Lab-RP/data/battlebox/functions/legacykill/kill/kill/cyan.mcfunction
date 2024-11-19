# execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1
tellraw @a[team=cyan] ["",{"selector":"@a[scores={killedByCyan=1}]"},{"text": "被"},{"selector":"@s"},{"text":"击杀"}]
tellraw @s ["[§6+",{"score":{"name": "Kill","objective": "bb_stats"},"color":"gold"},"§6分§r]",{"text": "你击杀了"},{"selector":"@a[scores={killedByCyan=1}]"},{"text": "!"}]
tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@a[scores={killedByCyan=1}]"},{"text": "被"},{"selector":"@s"},{"text":"击杀"}]
tellraw @a[tag=!_transcript,tag=admin] ["",{"selector":"@a[scores={killedByCyan=1}]"},{"text": "被"},{"selector":"@s"},{"text":"击杀"}]

execute at @s run playsound minecraft:sound.acquire record @s ~ ~ ~
title @s times 0 60 10
title @s title ""
title @s subtitle ["",{"text": "[","color": "white"},{"text": "⚔","color": "green"},{"text": "] "},{"selector": "@a[scores={killedByCyan=1}]"}]

execute as @a[scores={killedByCyan=1}] run scoreboard players operation @a[team=cyan,scores={bb_kills=1..}] bb_indvscore += Kill bb_stats