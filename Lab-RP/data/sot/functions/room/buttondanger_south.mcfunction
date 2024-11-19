# WEST指的是门看向按钮是南方向。

execute as @e[type=area_effect_cloud,tag=buttondanger_south] at @s if block ~ ~ ~ stone_button[powered=true] run summon area_effect_cloud ~ ~-1 ~-3 {Duration:999999,Tags:["sotopener","opener_gate","north"]}
execute as @e[type=area_effect_cloud,tag=buttondanger_south] at @s if block ~ ~ ~ stone_button[powered=true] run kill @s