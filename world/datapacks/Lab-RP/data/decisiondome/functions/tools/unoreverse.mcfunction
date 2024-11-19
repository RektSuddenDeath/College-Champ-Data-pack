
execute as @e[type=chicken,tag=validchicken] run data merge entity @s {CustomName:'{"text":"Dinnerbone"}'}
execute as @e[type=chicken,tag=validchicken] run tag @s add negative_vote

tellraw @a ["","[","§e▶","] ",{"selector":"@p[scores={dd_toolused=1..,dd_toolheld=3}]"}," §d使用了UNO翻转卡，全部场上小鸡现在计为负1票！"]
execute as @a at @s run playsound minecraft:sound.lapcomplete record @s ~ ~ ~

title @a title ""
title @a times 10 40 10
title @a subtitle ["",{"selector":"@p[scores={dd_toolused=1..,dd_toolheld=3}]"}," §e使用了§rUNO翻转卡"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," used §eUNO_REVERSE_CARD"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
