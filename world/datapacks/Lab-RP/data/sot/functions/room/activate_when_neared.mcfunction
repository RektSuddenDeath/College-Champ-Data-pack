
execute as @e[type=#sot:mobs,tag=activate_when_neared] at @s if entity @p[distance=0..2.5,team=!spec] run data merge entity @s {NoAI:0b,Invulnerable:0b}
execute as @e[type=#sot:mobs,tag=activate_when_neared] at @s if entity @p[distance=0..2.5,team=!spec] run tag @s remove activate_when_neared