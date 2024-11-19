
give @s snowball{CustomModelData:11000004,toolNo:4,toolItem:1,display:{Name:'[{"text":"超级小鸡互换","italic":false}]',Lore:['[{"text":"使得全部人变成小鸡，参与投票","italic":false,"color":"gold"}]']}} 1
tellraw @s ["","§6你获得了","超级小鸡互换","§6。"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," received §eMEGA_CHICKEN_SWAP"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
