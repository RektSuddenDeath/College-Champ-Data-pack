
execute as @e[type=chicken] at @s run tp @s ~ ~-127 ~
clear @a egg
give @a[team=!spec,x=-10050,z=-10050,y=104,dx=100,dz=100,dy=4] egg{vote:1}

# Extends timer to 10 seconds if there isn't
execute if score second master.timer matches 0..10 run scoreboard players set second master.timer 11
# Chat

tellraw @a ["","[","§e▶","] ",{"selector":"@s"}," §d使用了§r“鸡”起蛋归§d！ 所有小鸡变回了鸡蛋！"]
execute as @a at @s run playsound minecraft:sound.lapcomplete record @s ~ ~ ~

title @a title ""
title @a times 10 40 10
title @a subtitle ["",{"selector":"@s"}," §e使用了§r鸡起蛋归"]

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," used §eDOME_RESET"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
