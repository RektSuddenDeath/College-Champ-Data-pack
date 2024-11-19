
summon fox ~ ~ ~ {Tags:["eatchicken"]}

tellraw @a ["","[","§e▶","] ",{"selector":"@p[tag=fox_o]"}," §d放出了一只狐狸！"]
scoreboard players set foxlifespan dd_tooltime 200

execute as @a at @s run playsound minecraft:sound.lapcomplete record @s ~ ~ ~

title @a title ""
title @a times 10 40 10
title @a subtitle ["",{"selector":"@p[tag=fox_o]"}," §e使用了§r狐狸召唤"]

kill @s
tag @a remove fox_o

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," used §eSUMMON_FOX"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
