
give @s snowball{CustomModelData:11000003,toolNo:3,toolItem:1,display:{Name:'[{"text":"UNO翻转卡","italic":false}]',Lore:['[{"text":"使得场上现存的小鸡记为-1票","italic":false,"color":"gold"}]']}} 1
tellraw @s ["","§6你获得了","UNO翻转卡","§6。"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," received §eUNO_REVERSE_CARD"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
