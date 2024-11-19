
give @s snowball{CustomModelData:11000008,toolNo:8,toolItem:1,display:{Name:'[{"text":"“鸡”起蛋归","italic":false}]',Lore:['[{"text":"消除场上所有小鸡，全部人重置到1个鸡蛋。","italic":false,"color":"gold"}]']}} 1
tellraw @s ["","§6你获得了","“鸡”起蛋归","§6。"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," received §eDOME_RESET"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
