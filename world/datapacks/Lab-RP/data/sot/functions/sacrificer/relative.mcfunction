
execute as @e[type=area_effect_cloud,tag=SotCore] at @s if block ~14 ~-23 ~23 sand if block ~12 ~-23 ~23 sand run summon area_effect_cloud ~13 ~-23 ~24 {Duration:999999,Tags:["opener_gate","north","sotopener"]}
execute as @e[type=area_effect_cloud,tag=SotCore] at @s if block ~-14 ~-23 ~23 sand if block ~-12 ~-23 ~23 sand run summon area_effect_cloud ~-13 ~-23 ~24 {Duration:999999,Tags:["opener_gate","north","sotopener"]}

execute as @e[type=area_effect_cloud,tag=SotCore] at @s if block ~14 ~-23 ~23 sand if block ~12 ~-23 ~23 sand run fill ~14 ~-23 ~23 ~12 ~-23 ~23 air
execute as @e[type=area_effect_cloud,tag=SotCore] at @s if block ~-14 ~-23 ~23 sand if block ~-12 ~-23 ~23 sand run fill ~-14 ~-23 ~23 ~-12 ~-23 ~23 air

execute if score gameflag SotGame matches 1 run schedule function sot:sacrificer/relative 4t