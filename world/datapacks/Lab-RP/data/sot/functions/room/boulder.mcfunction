
execute as @e[type=area_effect_cloud,tag=boulder] at @s if block ~ ~ ~ red_concrete_powder if block ~2 ~2 ~7 iron_bars run summon area_effect_cloud ~2 ~2 ~7 {Duration:999999,Tags:["opener_gate","north","sotopener"]}
execute as @e[type=area_effect_cloud,tag=boulder] at @s if block ~ ~ ~ red_concrete_powder if block ~-2 ~2 ~-7 iron_bars run summon area_effect_cloud ~-2 ~2 ~-7 {Duration:999999,Tags:["opener_gate","east","sotopener"]}
execute as @e[type=area_effect_cloud,tag=boulder] at @s if block ~ ~ ~ red_concrete_powder if block ~7 ~2 ~-2 iron_bars run summon area_effect_cloud ~7 ~2 ~-2 {Duration:999999,Tags:["opener_gate","north","sotopener"]}
execute as @e[type=area_effect_cloud,tag=boulder] at @s if block ~ ~ ~ red_concrete_powder if block ~-7 ~2 ~2 iron_bars run summon area_effect_cloud ~-7 ~2 ~2 {Duration:999999,Tags:["opener_gate","east","sotopener"]}
 
execute as @e[type=area_effect_cloud,tag=boulder] at @s if block ~ ~ ~ red_concrete_powder run kill @s