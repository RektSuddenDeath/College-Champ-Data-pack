
execute as @e[type=area_effect_cloud,tag=ravagerpath] at @s if entity @p[team=!spec,distance=0..5] run summon area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["sotopener","opener_gate","west"]}
execute as @e[type=area_effect_cloud,tag=ravagerpath] at @s if entity @p[team=!spec,distance=0..5] run summon area_effect_cloud ~ ~ ~ {Duration:999999,Tags:["sotopener","opener_gate","north"]}

execute as @e[type=area_effect_cloud,tag=ravagerpath] at @s if entity @p[team=!spec,distance=0..5] run kill @s