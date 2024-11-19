tag @a[gamemode=adventure,team=!spec,limit=2,sort=random] add hutaoed

clear @a[tag=hutaoed]
execute as @a[tag=hutaoed] at @s run summon lightning_bolt ~ 0 ~
tp @a[tag=hutaoed] -9999.72 117.00 -10027.96 360 0

# Chat

execute unless entity @s[tag=hutaoed] run tellraw @a ["","[","§e▶","] ",{"selector":"@s"}," §d使用了§r送你一程§d！ 送走了",{"selector":"@a[tag=hutaoed]"},"§d！"]
execute if entity @s[tag=hutaoed] run tellraw @a ["","[","§e▶","] ",{"selector":"@s"}," §d使用了§r送你一程§d！ 送走了","§6§l自己","§d！"]
execute as @a at @s run playsound minecraft:sound.lapcomplete record @s ~ ~ ~

title @a title ""
title @a times 10 40 10
title @a subtitle ["",{"selector":"@s"}," §e使用了§r送你一程"]

# Cleanup
tag @a remove hutaoed

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," used §eHUTAO"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
