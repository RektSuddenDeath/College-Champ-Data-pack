

effect give @e[type=chicken,tag=validchicken] speed 8 24 true
# Chat

tellraw @a ["","[","§e▶","] ",{"selector":"@s"}," §d使用了§r小鸡风场§d！ 所有小鸡的移动速度大幅提升！"]
execute as @a at @s run playsound minecraft:sound.lapcomplete record @s ~ ~ ~

title @a title ""
title @a times 10 40 10
title @a subtitle ["",{"selector":"@s"}," §e使用了§r小鸡风场"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," used §eCHICKEN_WINDFIELD"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
