
give @s snowball{CustomModelData:11000009,toolNo:9,toolItem:1,display:{Name:'[{"text":"玉璋护盾","italic":false}]',Lore:['[{"text":"使一个区域的小鸡免疫攻击伤害。","italic":false,"color":"gold"}]']}} 1
tellraw @s ["","§6你获得了","玉璋护盾","§6。"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," received §eINVINCIBLE_CHICKENS"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
