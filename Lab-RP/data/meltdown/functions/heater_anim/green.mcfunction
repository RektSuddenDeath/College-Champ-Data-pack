
particle dust 0 0.729 0.086 1 ~3 ~ ~


particle dust 0 0.729 0.086 1 ~-3 ~ ~
particle dust 0 0.729 0.086 1 ~ ~ ~3
particle dust 0 0.729 0.086 1 ~ ~ ~-3

particle dust 0 0.729 0.086 1 ~1.5 ~ ~2.598
particle dust 0 0.729 0.086 1 ~2.598 ~ ~1.5
particle dust 0 0.729 0.086 1 ~-1.5 ~ ~-2.598
particle dust 0 0.729 0.086 1 ~-2.598 ~ ~-1.5
particle dust 0 0.729 0.086 1 ~-1.5 ~ ~2.598
particle dust 0 0.729 0.086 1 ~2.598 ~ ~-1.5
particle dust 0 0.729 0.086 1 ~1.5 ~ ~-2.598
particle dust 0 0.729 0.086 1 ~-2.598 ~ ~1.5

execute if score @s meltdown_heater_duration matches 200..203 run data modify entity @e[type=item_display,tag=heater_display,sort=nearest,limit=1] item.tag.CustomModelData set value 3014
execute if score @s meltdown_heater_duration matches 400..403 run data modify entity @e[type=item_display,tag=heater_display,sort=nearest,limit=1] item.tag.CustomModelData set value 3024