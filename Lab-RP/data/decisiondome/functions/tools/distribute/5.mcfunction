
give @s snowball{CustomModelData:11000005,toolNo:5,toolItem:1,display:{Name:'[{"text":"黏性弹","italic":false}]',Lore:['[{"text":"使得一片区域变得粘性十足。持续8秒","italic":false,"color":"gold"}]']}} 1
tellraw @s ["","§6你获得了","黏性弹","§6。"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," received §eSTICKY_SECTOR"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
