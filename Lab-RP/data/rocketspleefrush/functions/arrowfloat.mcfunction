# summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["nextplatform"],CustomNameVisible:1b,CustomName:'[{"text": "\\ue001", "font": "font:font"}]'}
scoreboard players add @e[type=item_display,tag=nextplatform] ArrowAec 1
scoreboard players operation @e[type=item_display,tag=nextplatform] ArrowAec %= 25 math

team join rsrarrows @e[type=item_display,tag=nextplatform]
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 0 run data modify entity @s item.tag.CustomModelData set value 10000011
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 1 run data modify entity @s item.tag.CustomModelData set value 10000012
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 2 run data modify entity @s item.tag.CustomModelData set value 10000013
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 3 run data modify entity @s item.tag.CustomModelData set value 10000014
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 4 run data modify entity @s item.tag.CustomModelData set value 10000015
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 5 run data modify entity @s item.tag.CustomModelData set value 10000016
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 6 run data modify entity @s item.tag.CustomModelData set value 10000017
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 7 run data modify entity @s item.tag.CustomModelData set value 10000018
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 8 run data modify entity @s item.tag.CustomModelData set value 10000019
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 9 run data modify entity @s item.tag.CustomModelData set value 10000020
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 10 run data modify entity @s item.tag.CustomModelData set value 10000021
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 11 run data modify entity @s item.tag.CustomModelData set value 10000022
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 12 run data modify entity @s item.tag.CustomModelData set value 10000023
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 13 run data modify entity @s item.tag.CustomModelData set value 10000022
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 14 run data modify entity @s item.tag.CustomModelData set value 10000021
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 15 run data modify entity @s item.tag.CustomModelData set value 10000020
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 16 run data modify entity @s item.tag.CustomModelData set value 10000019
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 17 run data modify entity @s item.tag.CustomModelData set value 10000018
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 18 run data modify entity @s item.tag.CustomModelData set value 10000017
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 19 run data modify entity @s item.tag.CustomModelData set value 10000016
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 20 run data modify entity @s item.tag.CustomModelData set value 10000015
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 21 run data modify entity @s item.tag.CustomModelData set value 10000014
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 22 run data modify entity @s item.tag.CustomModelData set value 10000013
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 23 run data modify entity @s item.tag.CustomModelData set value 10000012
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 24 run data modify entity @s item.tag.CustomModelData set value 10000011

execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 1 run data modify entity @s Rotation[0] set value 0f
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 2 run data modify entity @s Rotation[0] set value 45f
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 3 run data modify entity @s Rotation[0] set value 90f
execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 4 run data modify entity @s Rotation[0] set value 135f

execute as @e[type=item_display,tag=nextplatform] if score @s ArrowAec matches 5 run data merge entity @s {billboard:"vertical"}

execute as @e[type=item_display,tag=nextplatform] at @s positioned ~ ~-2 ~ run particle minecraft:dust 1 0.667 0 1 ~ ~1.5 ~ 0.8 1.2 0.8 0.05 12 force

execute if score gameflag rsr_game matches 1 run schedule function rocketspleefrush:arrowfloat 1t