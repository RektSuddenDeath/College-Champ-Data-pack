
clear @a[team=!spec]
kill @e[type=item,nbt={Item:{id:"minecraft:egg"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:snowball"}}]

scoreboard players set phase tourney_stats 4
function master:timer/decisiondome/15s

team modify placeholder_5 suffix ""
team modify placeholder_5 prefix ["",{"text": "游戏决定: ","bold": true,"color":"red"}]

tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event State: §7VOTING §f-> VOTE_CLOSED"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
