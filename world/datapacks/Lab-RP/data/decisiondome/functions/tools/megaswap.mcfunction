
# Clear all existing chickens
tp @e[type=chicken,tag=validchicken] -10000 -255 -10000
kill @e[type=area_effect_cloud,tag=voteaec]
kill @e[type=egg,tag=voteegg]
clear @a

# Summons a chicken on the position of all players
execute as @a[team=!spec] at @s run summon chicken ~ ~ ~ {Tags:["validchicken"]}
tp @a[team=!spec] -10000 103 -10000
tag @a[team=!spec] add dd_swappedPlayer

# Chat

tellraw @a ["","[","§e▶","] ",{"selector":"@p[scores={dd_toolused=1..,dd_toolheld=4}]"}," §d使用了超级小鸡互换，§6§l你现在是小鸡了！！！"]
execute as @a at @s run playsound minecraft:sound.lapcomplete record @s ~ ~ ~

title @a title ""
title @a times 10 40 10
title @a subtitle ["",{"selector":"@p[scores={dd_toolused=1..,dd_toolheld=4}]"}," §e使用了§r超级小鸡互换"]

# Extends seconds to 20
scoreboard players set second master.timer 20

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," used §eMEGA_CHICKEN_SWAP"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
