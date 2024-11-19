# WEST指的是门看向拉杆是西方向。

execute as @e[type=area_effect_cloud,tag=buttondanger_west] at @s if block ~ ~ ~ stone_button[powered=true] run summon area_effect_cloud ~3 ~-1 ~ {Duration:999999,Tags:["sotopener","opener_gate","west"]}
execute as @e[type=area_effect_cloud,tag=buttondanger_west] at @s if block ~ ~ ~ stone_button[powered=true] run kill @s