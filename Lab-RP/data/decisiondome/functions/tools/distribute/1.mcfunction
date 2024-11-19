
give @s snowball{CustomModelData:11000001,toolNo:1,toolItem:1,display:{Name:'[{"text":"燃烧弹","italic":false}]',Lore:['[{"text":"点燃一片区域。持续6秒。","italic":false,"color":"gold"}]']}} 1
tellraw @s ["","§6你获得了","燃烧弹","§6。"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," received §eFIRE_BOMB"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
