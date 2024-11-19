
execute as @e[type=marker,tag=rrr_main_anchor,tag=team_yellow] at @s run spawnpoint @a[team=yellow] ~11 116 ~11 -45
execute as @e[type=marker,tag=rrr_main_anchor,tag=team_yellow] at @s run summon villager ~24 116 ~27 {NoAI:1b,Invulnerable:1b,VillagerData:{level:1,profession:"minecraft:leatherworker"},Tags:["rrr_shop","starter"],Rotation:[135f,0f]}