
scoreboard players set §1 sba_sb -1
scoreboard players set §2 sba_sb -2

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
execute if score players sba_game matches 0 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"0"]
execute if score players sba_game matches 1 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"1"]
execute if score players sba_game matches 2 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"2"]
execute if score players sba_game matches 3 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"3"]
execute if score players sba_game matches 4 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"4"]
execute if score players sba_game matches 5 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"5"]
execute if score players sba_game matches 6 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"6"]
execute if score players sba_game matches 7 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"7"]
execute if score players sba_game matches 8 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"8"]
execute if score players sba_game matches 9 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"9"]

execute if score players sba_game matches 10 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"10"]
execute if score players sba_game matches 11 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"11"]
execute if score players sba_game matches 12 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"12"]
execute if score players sba_game matches 13 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"13"]
execute if score players sba_game matches 14 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"14"]
execute if score players sba_game matches 15 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"15"]
execute if score players sba_game matches 16 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"16"]
execute if score players sba_game matches 17 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"17"]
execute if score players sba_game matches 18 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"18"]
execute if score players sba_game matches 19 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"19"]

execute if score players sba_game matches 20 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"20"]
execute if score players sba_game matches 21 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"21"]
execute if score players sba_game matches 22 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"22"]
execute if score players sba_game matches 23 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"23"]
execute if score players sba_game matches 24 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"24"]
execute if score players sba_game matches 25 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"25"]
execute if score players sba_game matches 26 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"26"]
execute if score players sba_game matches 27 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"27"]
execute if score players sba_game matches 28 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"28"]
execute if score players sba_game matches 29 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"29"]

execute if score players sba_game matches 30 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"30"]
execute if score players sba_game matches 31 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"31"]
execute if score players sba_game matches 32 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"32"]
execute if score players sba_game matches 33 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"33"]
execute if score players sba_game matches 34 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"34"]
execute if score players sba_game matches 35 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"35"]
execute if score players sba_game matches 36 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"36"]
execute if score players sba_game matches 37 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"37"]
execute if score players sba_game matches 38 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"38"]
execute if score players sba_game matches 39 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"39"]

execute if score players sba_game matches 40 run team modify placeholder_2 prefix ["",{"text": "剩余玩家: ","color": "green"},"40"]

# Teams left
execute if score teams sba_game matches 0 run team modify placeholder_1 prefix ["",{"text": "剩余队伍: ","color": "green"},"0"]
execute if score teams sba_game matches 1 run team modify placeholder_1 prefix ["",{"text": "剩余队伍: ","color": "green"},"1"]
execute if score teams sba_game matches 2 run team modify placeholder_1 prefix ["",{"text": "剩余队伍: ","color": "green"},"2"]
execute if score teams sba_game matches 3 run team modify placeholder_1 prefix ["",{"text": "剩余队伍: ","color": "green"},"3"]
execute if score teams sba_game matches 4 run team modify placeholder_1 prefix ["",{"text": "剩余队伍: ","color": "green"},"4"]
execute if score teams sba_game matches 5 run team modify placeholder_1 prefix ["",{"text": "剩余队伍: ","color": "green"},"5"]
execute if score teams sba_game matches 6 run team modify placeholder_1 prefix ["",{"text": "剩余队伍: ","color": "green"},"6"]
execute if score teams sba_game matches 7 run team modify placeholder_1 prefix ["",{"text": "剩余队伍: ","color": "green"},"7"]
execute if score teams sba_game matches 8 run team modify placeholder_1 prefix ["",{"text": "剩余队伍: ","color": "green"},"8"]
execute if score teams sba_game matches 9 run team modify placeholder_1 prefix ["",{"text": "剩余队伍: ","color": "green"},"9"]
execute if score teams sba_game matches 10 run team modify placeholder_1 prefix ["",{"text": "剩余队伍: ","color": "green"},"10"]
