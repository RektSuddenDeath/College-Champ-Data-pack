
execute as @e[type=area_effect_cloud,tag=bordercenter] at @s run summon magma_cube ~ 13 ~ {Size:1,NoAI:1b,Invulnerable:1b,Silent:1b,Tags:["bellbarrier"]}
effect give @e[type=magma_cube] invisibility 10000 0 true