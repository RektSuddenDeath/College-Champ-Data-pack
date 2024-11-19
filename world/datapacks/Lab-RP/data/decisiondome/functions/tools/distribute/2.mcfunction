
give @s snowball{CustomModelData:11000002,toolNo:2,toolItem:1,display:{Name:'[{"text":"小鸡互换","italic":false}]',Lore:['[{"text":"将你与一只小鸡互换。你记为3票。","italic":false,"color":"gold"}]']}} 1
tellraw @s ["","§6你获得了","小鸡互换","§6。"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," received §eCHICKEN_SWAP"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
