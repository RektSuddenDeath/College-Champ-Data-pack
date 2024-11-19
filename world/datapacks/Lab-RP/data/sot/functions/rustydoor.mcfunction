
execute as @e[type=area_effect_cloud,tag=rustydoor,tag=south] at @s if block ~ ~ ~ dark_oak_planks run summon area_effect_cloud ~ ~-1 ~-1 {Duration:9999999,Tags:["sotopener","opener_rusty","north"]}
execute as @e[type=area_effect_cloud,tag=rustydoor,tag=north] at @s if block ~ ~ ~ dark_oak_planks run summon area_effect_cloud ~ ~-1 ~ {Duration:9999999,Tags:["sotopener","opener_rusty","north"]}
execute as @e[type=area_effect_cloud,tag=rustydoor,tag=east] at @s if block ~ ~ ~ dark_oak_planks run summon area_effect_cloud ~-1 ~-1 ~ {Duration:9999999,Tags:["sotopener","opener_rusty","west"]}
execute as @e[type=area_effect_cloud,tag=rustydoor,tag=west] at @s if block ~ ~ ~ dark_oak_planks run summon area_effect_cloud ~ ~-1 ~ {Duration:9999999,Tags:["sotopener","opener_rusty","west"]}

execute as @e[type=area_effect_cloud,tag=rustydoor] at @s if block ~ ~ ~ dark_oak_planks run kill @s
execute if score gameflag SotGame matches 1 run schedule function sot:rustydoor 2t