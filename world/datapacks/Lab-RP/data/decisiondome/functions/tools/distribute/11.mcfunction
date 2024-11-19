
give @s snowball{CustomModelData:11000011,toolNo:11,toolItem:1,display:{Name:'[{"text":"护法之誓","italic":false}]',Lore:['["",{"text":"消灭场内所有玩家，使得所有人不能再投票！","italic":false,"color":"gold"},"§r§c只能在投票剩余10秒或更少时使用"]']}} 1
tellraw @s ["","§6你获得了","护法之誓","§6。"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," received §eGUARDIANS_OATH"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
