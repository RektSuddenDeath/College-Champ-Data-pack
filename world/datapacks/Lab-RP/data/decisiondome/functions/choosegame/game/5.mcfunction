
title @a times 0 80 20
title @a title "Hole in the Wall"
title @a subtitle "§6即将传送……"
tellraw @a ["","[§6§lDecision Dome§r]: ","Hole in the Wall!"]

schedule function master:hitw 8s

tellraw @a[tag=_transcript] ["  §bTranscript >> §6Game Selected: §fHOLE_IN_THE_WALL"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
