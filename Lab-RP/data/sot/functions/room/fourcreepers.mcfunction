
execute as @e[type=area_effect_cloud,tag=fourcreepers] at @s if block ~ ~ ~ lever[powered=true] if block ~-3 ~-1 ~ iron_bars run summon area_effect_cloud ~-3 ~-1 ~ {Duration:999999,Tags:["opener_gate","west","sotopener"]}
execute as @e[type=area_effect_cloud,tag=fourcreepers] at @s if block ~ ~ ~ lever[powered=true] if block ~ ~-1 ~-3 iron_bars run summon area_effect_cloud ~ ~-1 ~-3 {Duration:999999,Tags:["opener_gate","north","sotopener"]}
execute as @e[type=area_effect_cloud,tag=fourcreepers] at @s if block ~ ~ ~ lever[powered=true] if block ~3 ~-1 ~ iron_bars run summon area_effect_cloud ~3 ~-1 ~ {Duration:999999,Tags:["opener_gate","west","sotopener"]}
execute as @e[type=area_effect_cloud,tag=fourcreepers] at @s if block ~ ~ ~ lever[powered=true] if block ~ ~-1 ~3 iron_bars run summon area_effect_cloud ~ ~-1 ~3 {Duration:999999,Tags:["opener_gate","north","sotopener"]}

execute as @e[type=area_effect_cloud,tag=fourcreepers] at @s if block ~ ~ ~ lever[powered=true] run execute as @e[tag=fourcreepers,type=creeper,distance=0..10] run data merge entity @s {NoAI:0b,Invulnerable:0b} 
execute as @e[type=area_effect_cloud,tag=fourcreepers] at @s if block ~ ~ ~ lever[powered=true] run kill @s