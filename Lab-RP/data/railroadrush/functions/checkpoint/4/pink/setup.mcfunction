

execute as @e[type=marker,tag=rrr_main_anchor,tag=team_pink] at @s run spawnpoint @a[team=pink] ~340 117 ~4 0
execute as @e[type=marker,tag=rrr_main_anchor,tag=team_pink] at @s run summon villager ~340 116 ~28 {Rotation:[180f,0f],NoAI:1b,Invulnerable:1b,VillagerData:{level:1,profession:"minecraft:armorer"},Tags:["rrr_shop","normal"]}
