
title @a times 0 80 20
title @a title "Grid Runners"
title @a subtitle "§6即将传送……"
tellraw @a ["","[§6§lDecision Dome§r]: ","Grid Runners!"]

schedule function master:gridrunners 8s
tellraw @a[tag=_transcript] ["  §bTranscript >> §6Game Selected: §fGRID_RUNNERS"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
