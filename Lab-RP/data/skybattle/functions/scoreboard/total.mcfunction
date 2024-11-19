
scoreboard players set §1 sba_sb -2
scoreboard players set §2 sba_sb -1

scoreboard players set players sba_game 0
scoreboard players set teams sba_game 0

execute as @a[team=!spec,gamemode=!spectator] run scoreboard players add players sba_game 1

execute as @p[team=red,gamemode=!spectator] run scoreboard players add teams sba_game 1
execute as @p[team=blue,gamemode=!spectator] run scoreboard players add teams sba_game 1
execute as @p[team=green,gamemode=!spectator] run scoreboard players add teams sba_game 1
execute as @p[team=yellow,gamemode=!spectator] run scoreboard players add teams sba_game 1
execute as @p[team=orange,gamemode=!spectator] run scoreboard players add teams sba_game 1
execute as @p[team=purple,gamemode=!spectator] run scoreboard players add teams sba_game 1
execute as @p[team=pink,gamemode=!spectator] run scoreboard players add teams sba_game 1
execute as @p[team=cyan,gamemode=!spectator] run scoreboard players add teams sba_game 1

# Players Left
execute if score players sba_game matches 0 run team modify placeholder_2 suffix ["","/0"]
execute if score players sba_game matches 1 run team modify placeholder_2 suffix ["","/1"]
execute if score players sba_game matches 2 run team modify placeholder_2 suffix ["","/2"]
execute if score players sba_game matches 3 run team modify placeholder_2 suffix ["","/3"]
execute if score players sba_game matches 4 run team modify placeholder_2 suffix ["","/4"]
execute if score players sba_game matches 5 run team modify placeholder_2 suffix ["","/5"]
execute if score players sba_game matches 6 run team modify placeholder_2 suffix ["","/6"]
execute if score players sba_game matches 7 run team modify placeholder_2 suffix ["","/7"]
execute if score players sba_game matches 8 run team modify placeholder_2 suffix ["","/8"]
execute if score players sba_game matches 9 run team modify placeholder_2 suffix ["","/9"]

execute if score players sba_game matches 10 run team modify placeholder_2 suffix ["","/10"]
execute if score players sba_game matches 11 run team modify placeholder_2 suffix ["","/11"]
execute if score players sba_game matches 12 run team modify placeholder_2 suffix ["","/12"]
execute if score players sba_game matches 13 run team modify placeholder_2 suffix ["","/13"]
execute if score players sba_game matches 14 run team modify placeholder_2 suffix ["","/14"]
execute if score players sba_game matches 15 run team modify placeholder_2 suffix ["","/15"]
execute if score players sba_game matches 16 run team modify placeholder_2 suffix ["","/16"]
execute if score players sba_game matches 17 run team modify placeholder_2 suffix ["","/17"]
execute if score players sba_game matches 18 run team modify placeholder_2 suffix ["","/18"]
execute if score players sba_game matches 19 run team modify placeholder_2 suffix ["","/19"]

execute if score players sba_game matches 20 run team modify placeholder_2 suffix ["","/20"]
execute if score players sba_game matches 21 run team modify placeholder_2 suffix ["","/21"]
execute if score players sba_game matches 22 run team modify placeholder_2 suffix ["","/22"]
execute if score players sba_game matches 23 run team modify placeholder_2 suffix ["","/23"]
execute if score players sba_game matches 24 run team modify placeholder_2 suffix ["","/24"]
execute if score players sba_game matches 25 run team modify placeholder_2 suffix ["","/25"]
execute if score players sba_game matches 26 run team modify placeholder_2 suffix ["","/26"]
execute if score players sba_game matches 27 run team modify placeholder_2 suffix ["","/27"]
execute if score players sba_game matches 28 run team modify placeholder_2 suffix ["","/28"]
execute if score players sba_game matches 29 run team modify placeholder_2 suffix ["","/29"]

execute if score players sba_game matches 30 run team modify placeholder_2 suffix ["","/30"]
execute if score players sba_game matches 31 run team modify placeholder_2 suffix ["","/31"]
execute if score players sba_game matches 32 run team modify placeholder_2 suffix ["","/32"]
execute if score players sba_game matches 33 run team modify placeholder_2 suffix ["","/33"]
execute if score players sba_game matches 34 run team modify placeholder_2 suffix ["","/34"]
execute if score players sba_game matches 35 run team modify placeholder_2 suffix ["","/35"]
execute if score players sba_game matches 36 run team modify placeholder_2 suffix ["","/36"]
execute if score players sba_game matches 37 run team modify placeholder_2 suffix ["","/37"]
execute if score players sba_game matches 38 run team modify placeholder_2 suffix ["","/38"]
execute if score players sba_game matches 39 run team modify placeholder_2 suffix ["","/39"]

execute if score players sba_game matches 40 run team modify placeholder_2 suffix ["","/40"]

# Teams left
execute if score teams sba_game matches 0 run team modify placeholder_1 suffix ["","/0"]
execute if score teams sba_game matches 1 run team modify placeholder_1 suffix ["","/1"]
execute if score teams sba_game matches 2 run team modify placeholder_1 suffix ["","/2"]
execute if score teams sba_game matches 3 run team modify placeholder_1 suffix ["","/3"]
execute if score teams sba_game matches 4 run team modify placeholder_1 suffix ["","/4"]
execute if score teams sba_game matches 5 run team modify placeholder_1 suffix ["","/5"]
execute if score teams sba_game matches 6 run team modify placeholder_1 suffix ["","/6"]
execute if score teams sba_game matches 7 run team modify placeholder_1 suffix ["","/7"]
execute if score teams sba_game matches 8 run team modify placeholder_1 suffix ["","/8"]
execute if score teams sba_game matches 9 run team modify placeholder_1 suffix ["","/9"]
execute if score teams sba_game matches 10 run team modify placeholder_1 suffix ["","/10"]
