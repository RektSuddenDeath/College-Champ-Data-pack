
title @a times 20 40 20
title @a title ["",{"text": "TGTTOS","color":"yellow"}]

scoreboard players set intro_active tourney_stats 1

gamemode spectator @a
# MAP:GLIDE
execute if score map1 tgttos_game matches 6 run tp @a -6496 103 -6496
execute if score map1 tgttos_game matches 6 run summon armor_stand -6496 103.38 -6496 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["intro"],Rotation:[270f,-11f]}
# MAP:BOATS
execute if score map1 tgttos_game matches 2 run tp @a -7462 125 -6511
execute if score map1 tgttos_game matches 2 run summon armor_stand -7462 125 -6511 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["intro"],Rotation:[154.0f,6.2f]}
# MAP:CAVERN DRIVE
execute if score map1 tgttos_game matches 3 run tp @a 17986 290 18046
execute if score map1 tgttos_game matches 3 run summon armor_stand 17986 291 18046 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["intro"],Rotation:[180.0f,20f]}
execute as @a run spectate @e[type=armor_stand,tag=intro,limit=1] @s
