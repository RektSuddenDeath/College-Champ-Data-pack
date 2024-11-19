
schedule clear decisiondome:first/sfx

# execute as @a at @s run playsound sound.game_revealed record @s
function decisiondome:column/8/white

function decisiondome:block_display/8
title @a times 0 40 10
title @a title ""
title @a subtitle ["",{"selector":"@e[type=marker,tag=domeanchor,tag=8,limit=1]"}]

tellraw @a ["","[",{"text": "Decision Dome","bold": true,"color": "gold"},"]: ",{"selector":"@e[type=marker,tag=domeanchor,tag=8,limit=1]"},"!"]

tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event State: §7FIRST_DOME §f-> PREPARING_VOTE"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
