
tellraw @a ["","[","§e▶","] ",{"selector":"@p[tag=sticky_o]"}," §d使得一片地面充满了黏性！"]
scoreboard players set sticky dd_tooltime 160

execute as @a at @s run playsound minecraft:sound.lapcomplete record @s ~ ~ ~

title @a title ""
title @a times 10 40 10
title @a subtitle ["",{"selector":"@p[tag=sticky_o]"}," §e使用了§r黏性弹"]
tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@p[tag=sticky_o]"}," used §eSTICKY_SECTOR"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

# Select the nearest column which the AEC has landed as the section to be sticky.
tag @e[type=area_effect_cloud,tag=ddcolumns,limit=1,sort=nearest] add sticky

# Ignite the entire selected column
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=1,tag=sticky] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=1] at @s run tag @s add stickySegment
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=2,tag=sticky] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=2] at @s run tag @s add stickySegment
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=3,tag=sticky] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=3] at @s run tag @s add stickySegment
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=4,tag=sticky] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=4] at @s run tag @s add stickySegment
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=5,tag=sticky] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=5] at @s run tag @s add stickySegment
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=6,tag=sticky] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=6] at @s run tag @s add stickySegment
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=7,tag=sticky] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=7] at @s run tag @s add stickySegment
execute if entity @e[type=area_effect_cloud,tag=ddcolumns,tag=8,tag=sticky] run execute as @e[type=area_effect_cloud,tag=ddcolumns,tag=8] at @s run tag @s add stickySegment

# Clean up
execute run tag @a remove sticky_o
execute run tag @e[type=area_effect_cloud,tag=ddcolumns,tag=sticky] remove sticky
execute run kill @s

