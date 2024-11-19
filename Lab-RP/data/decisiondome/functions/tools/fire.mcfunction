
tellraw @a ["","[","§e▶","] ",{"selector":"@p[tag=firebomb_o]"}," §d将一片地面点燃了！"]
scoreboard players set firebomb dd_tooltime 120

execute as @a at @s run playsound minecraft:sound.lapcomplete record @s ~ ~ ~

title @a title ""
title @a times 10 40 10
title @a subtitle ["",{"selector":"@p[tag=firebomb_o]"}," §e使用了§r燃烧弹"]

# Select the nearest column which the AEC has landed as the section to be ignited.
tag @e[type=area_effect_cloud,tag=ddcolumns,limit=1,sort=nearest] add ignited

# Ignite the entire selected column
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=1,tag=ignited] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=1] at @s run setblock ~ ~ ~ fire
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=2,tag=ignited] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=2] at @s run setblock ~ ~ ~ fire
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=3,tag=ignited] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=3] at @s run setblock ~ ~ ~ fire
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=4,tag=ignited] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=4] at @s run setblock ~ ~ ~ fire
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=5,tag=ignited] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=5] at @s run setblock ~ ~ ~ fire
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=6,tag=ignited] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=6] at @s run setblock ~ ~ ~ fire
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=7,tag=ignited] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=7] at @s run setblock ~ ~ ~ fire
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=8,tag=ignited] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=8] at @s run setblock ~ ~ ~ fire

# Clean up
execute run tag @a remove firebomb_o
execute run tag @e[type=area_effect_cloud,tag=ddcolumns,tag=ignited] remove ignited
execute run kill @s

tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," used §eFIRE_BOMB"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
