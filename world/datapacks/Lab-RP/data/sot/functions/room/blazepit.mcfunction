
execute as @e[type=area_effect_cloud,tag=blazepit] at @s if entity @p[distance=0..10,team=!spec] run execute as @e[type=blaze,tag=blazepit,distance=0..10] run data merge entity @s {Invulnerable:0b,NoAI:0b}
execute as @e[type=area_effect_cloud,tag=blazepit] at @s if entity @p[distance=0..10,team=!spec] run kill @s