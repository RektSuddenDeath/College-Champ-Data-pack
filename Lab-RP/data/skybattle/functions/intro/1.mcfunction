
title @a times 10 40 20
title @a title ["",{"text": "Sky Battle","color":"yellow"}]

execute if score map sba_game matches 1 run tp @a 12000 100 12000
execute if score map sba_game matches 2 run tp @a 22000 100 22000
execute if score map sba_game matches 3 run tp @a 32000 100 32000
execute if score map sba_game matches 4 run tp @a 42000 100 42000

gamemode spectator @a
kill @e[type=armor_stand,tag=Intro]
forceload add 11935 11935
forceload add 21935 21935
forceload add 31935 31935
forceload add 41935 41935
execute if score map sba_game matches 1 run summon minecraft:armor_stand 11935 29 11935 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,Tags:["Intro"],Rotation:[315f,20f]}
execute if score map sba_game matches 2 run summon minecraft:armor_stand 21935 29 21935 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,Tags:["Intro"],Rotation:[315f,20f]}
execute if score map sba_game matches 3 run summon minecraft:armor_stand 31935 34 31935 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,Tags:["Intro"],Rotation:[315f,10f]}
execute if score map sba_game matches 4 run summon minecraft:armor_stand 41935 34 41935 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,Tags:["Intro"],Rotation:[315f,10f]}

scoreboard players set intro_active tourney_stats 1

team modify placeholder_6 prefix ["",{"text": "地图: ","color": "aqua"}]
execute if score map sba_game matches 1 run team modify placeholder_6 suffix ["",{"text": "Classic"}]
execute if score map sba_game matches 2 run team modify placeholder_6 suffix ["",{"text": "Sand Castle"}]
execute if score map sba_game matches 3 run team modify placeholder_6 suffix ["",{"text": "Wasteland"}]
execute if score map sba_game matches 4 run team modify placeholder_6 suffix ["",{"text": "Cakesland"}]