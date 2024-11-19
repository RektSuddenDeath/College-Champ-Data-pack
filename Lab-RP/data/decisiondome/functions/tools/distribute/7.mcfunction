
give @s snowball{CustomModelData:11000007,toolNo:7,toolItem:1,display:{Name:'[{"text":"送你一程","italic":false}]',Lore:['[{"text":"随机使2名玩家失去投票权（可能包括你自己！）","italic":false,"color":"gold"}]']}} 1
tellraw @s ["","§6你获得了","送你一程","§6。"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," received §eHUTAO"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
