
give @s snowball{CustomModelData:11000010,toolNo:10,toolItem:1,display:{Name:'[{"text":"小鸡风场","italic":false}]',Lore:['[{"text":"给予当前场上小鸡风一般的速度，持续8秒。","italic":false,"color":"gold"}]']}} 1
tellraw @s ["","§6你获得了","小鸡风场","§6。"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," received §eCHICKEN_WINDFIELD"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
