
execute if entity @e[type=chicken,tag=validchicken] run tp @e[type=chicken,tag=validchicken,sort=random,limit=1] @s
execute unless entity @e[type=chicken,tag=validchicken] run summon chicken ~ ~ ~ {EggLayTime:2147483647,PersistenceRequired:true,Tags:["validchicken"]}
tag @s add dd_swappedPlayer

tp @s -10000 103 -10000
clear @s
attribute @s generic.attack_damage base set 0.01
# Chat

tellraw @a ["","[","§e▶","] ",{"selector":"@s"}," §d使用了§r小鸡互换§d！"]
execute as @a at @s run playsound minecraft:sound.lapcomplete record @s ~ ~ ~

title @a title ""
title @a times 10 40 10
title @a subtitle ["",{"selector":"@s"}," §e使用了§r小鸡互换"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," used §eCHICKEN_SWAP"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
