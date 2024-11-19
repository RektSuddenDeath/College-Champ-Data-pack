
execute as @e[type=creeper,tag=creeperstairs] at @s if entity @p[distance=0..2,team=!spec] run data merge entity @s {NoAI:0b,Invulnerable:0b}
execute as @e[type=creeper,tag=creeperstairs] at @s if entity @p[distance=0..2,team=!spec] run playsound minecraft:entity.creeper.hurt hostile @a[team=!spec] ~ ~ ~ 2
execute as @e[type=creeper,tag=creeperstairs] at @s if entity @p[distance=0..2,team=!spec] run tag @s remove creeperstairs