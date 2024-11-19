
tellraw @a ["","[","§e▶","] ",{"selector":"@p[tag=zhongli_o]"}," §d使得一个区域的小鸡§6固若金汤§d！"]

execute as @a at @s run playsound minecraft:sound.lapcomplete record @s ~ ~ ~

title @a title ""
title @a times 10 40 10
title @a subtitle ["",{"selector":"@p[tag=zhongli_o]"}," §e使用了§r玉璋护盾"]

# Select the nearest column which the AEC has landed as the section to apply the shield.
tag @e[type=area_effect_cloud,tag=ddcolumns,limit=1,sort=nearest] add shield
# Ignite the entire selected column
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=1,tag=shield] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=1] at @s run execute as @e[type=chicken,distance=0..0.5] run data merge entity @s {Invulnerable:1b}
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=2,tag=shield] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=2] at @s run execute as @e[type=chicken,distance=0..0.5] run data merge entity @s {Invulnerable:1b}
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=3,tag=shield] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=3] at @s run execute as @e[type=chicken,distance=0..0.5] run data merge entity @s {Invulnerable:1b}
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=4,tag=shield] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=4] at @s run execute as @e[type=chicken,distance=0..0.5] run data merge entity @s {Invulnerable:1b}
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=5,tag=shield] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=5] at @s run execute as @e[type=chicken,distance=0..0.5] run data merge entity @s {Invulnerable:1b}
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=6,tag=shield] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=6] at @s run execute as @e[type=chicken,distance=0..0.5] run data merge entity @s {Invulnerable:1b}
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=7,tag=shield] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=7] at @s run execute as @e[type=chicken,distance=0..0.5] run data merge entity @s {Invulnerable:1b}
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=8,tag=shield] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=8] at @s run execute as @e[type=chicken,distance=0..0.5] run data merge entity @s {Invulnerable:1b}

# Clean up
execute run tag @a remove zhongli_o
execute run tag @e[type=area_effect_cloud,tag=ddcolumns,tag=shield] remove shield
execute run kill @s

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," used §eINVINCIBLE_CHICKENS"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
