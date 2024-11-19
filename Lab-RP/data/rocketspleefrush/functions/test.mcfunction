# summon minecraft:area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["killed"],CustomNameVisible:1b,CustomName:'[{"text": "\\ue001", "font": "font:font"}]'}
scoreboard players add @e[type=area_effect_cloud,tag=killed] ArrowAec 1
scoreboard players operation @e[type=area_effect_cloud,tag=killed] ArrowAec %= 8 math

execute if score @e[type=area_effect_cloud,tag=killed,limit=1,sort=random] ArrowAec matches 0 as @e[type=area_effect_cloud,tag=killed] run data merge entity @s {CustomName:'[{"text": "\\ue001", "font": "font:font"}]'}
execute if score @e[type=area_effect_cloud,tag=killed,limit=1,sort=random] ArrowAec matches 1 as @e[type=area_effect_cloud,tag=killed] run data merge entity @s {CustomName:'[{"text": "\\ue002", "font": "font:font"}]'}
execute if score @e[type=area_effect_cloud,tag=killed,limit=1,sort=random] ArrowAec matches 2 as @e[type=area_effect_cloud,tag=killed] run data merge entity @s {CustomName:'[{"text": "\\ue003", "font": "font:font"}]'}
execute if score @e[type=area_effect_cloud,tag=killed,limit=1,sort=random] ArrowAec matches 3 as @e[type=area_effect_cloud,tag=killed] run data merge entity @s {CustomName:'[{"text": "\\ue004", "font": "font:font"}]'}
execute if score @e[type=area_effect_cloud,tag=killed,limit=1,sort=random] ArrowAec matches 4 as @e[type=area_effect_cloud,tag=killed] run data merge entity @s {CustomName:'[{"text": "\\ue005", "font": "font:font"}]'}
execute if score @e[type=area_effect_cloud,tag=killed,limit=1,sort=random] ArrowAec matches 5 as @e[type=area_effect_cloud,tag=killed] run data merge entity @s {CustomName:'[{"text": "\\ue004", "font": "font:font"}]'}
execute if score @e[type=area_effect_cloud,tag=killed,limit=1,sort=random] ArrowAec matches 6 as @e[type=area_effect_cloud,tag=killed] run data merge entity @s {CustomName:'[{"text": "\\ue003", "font": "font:font"}]'}
execute if score @e[type=area_effect_cloud,tag=killed,limit=1,sort=random] ArrowAec matches 7 as @e[type=area_effect_cloud,tag=killed] run data merge entity @s {CustomName:'[{"text": "\\ue002", "font": "font:font"}]'}


execute as @e[type=area_effect_cloud,tag=killed] at @s run particle minecraft:dust 1 0.667 0 2 ~ ~-4 ~ 0 0 0 0 4 force
execute as @e[type=area_effect_cloud,tag=killed] at @s run particle minecraft:dust 1 0.667 0 2 ~ ~-4 ~-1 0 0 0 0 4 force
execute as @e[type=area_effect_cloud,tag=killed] at @s run particle minecraft:dust 1 0.667 0 2 ~ ~-4 ~1 0 0 0 0 4 force
execute as @e[type=area_effect_cloud,tag=killed] at @s run particle minecraft:dust 1 0.667 0 2 ~1 ~-4 ~ 0 0 0 0 4 force
execute as @e[type=area_effect_cloud,tag=killed] at @s run particle minecraft:dust 1 0.667 0 2 ~-1 ~-4 ~ 0 0 0 0 4 force

schedule function rocketspleefrush:test 2t