
give @s snowball{CustomModelData:11000006,toolNo:6,toolItem:1,display:{Name:'[{"text":"狐狸召唤","italic":false}]',Lore:['[{"text":"召唤一只会吃小鸡的狐狸。狐狸存在10秒。","italic":false,"color":"gold"}]']}} 1
tellraw @s ["","§6你获得了","狐狸召唤","§6。"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," received §eSUMMON_FOX"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
