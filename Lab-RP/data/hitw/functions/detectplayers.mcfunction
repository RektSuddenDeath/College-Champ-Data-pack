
# This will SHRINK the arena if there are not enough players.

execute if score TotalPlayers hitw_game <= ShrinkPlayers1 hitw_game if score shrink hitw_game matches 0 run function hitw:shrink/master
execute if score TotalPlayers hitw_game <= ShrinkPlayers2 hitw_game if score shrink2 hitw_game matches 0 run function hitw:shrink/master2

# Displays remaining Players
execute if score TotalPlayers hitw_game matches 0 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"0"]
execute if score TotalPlayers hitw_game matches 1 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"1"]
execute if score TotalPlayers hitw_game matches 2 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"2"]
execute if score TotalPlayers hitw_game matches 3 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"3"]
execute if score TotalPlayers hitw_game matches 4 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"4"]
execute if score TotalPlayers hitw_game matches 5 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"5"]
execute if score TotalPlayers hitw_game matches 6 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"6"]
execute if score TotalPlayers hitw_game matches 7 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"7"]
execute if score TotalPlayers hitw_game matches 8 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"8"]
execute if score TotalPlayers hitw_game matches 9 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"9"]
execute if score TotalPlayers hitw_game matches 10 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"10"]
execute if score TotalPlayers hitw_game matches 11 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"11"]
execute if score TotalPlayers hitw_game matches 12 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"12"]
execute if score TotalPlayers hitw_game matches 13 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"13"]
execute if score TotalPlayers hitw_game matches 14 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"14"]
execute if score TotalPlayers hitw_game matches 15 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"15"]
execute if score TotalPlayers hitw_game matches 16 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"16"]
execute if score TotalPlayers hitw_game matches 17 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"17"]
execute if score TotalPlayers hitw_game matches 18 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"18"]
execute if score TotalPlayers hitw_game matches 19 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"19"]
execute if score TotalPlayers hitw_game matches 20 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"20"]
execute if score TotalPlayers hitw_game matches 21 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"21"]
execute if score TotalPlayers hitw_game matches 22 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"22"]
execute if score TotalPlayers hitw_game matches 23 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"23"]
execute if score TotalPlayers hitw_game matches 24 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"24"]
execute if score TotalPlayers hitw_game matches 25 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"25"]
execute if score TotalPlayers hitw_game matches 26 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"26"]
execute if score TotalPlayers hitw_game matches 27 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"27"]
execute if score TotalPlayers hitw_game matches 28 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"28"]
execute if score TotalPlayers hitw_game matches 29 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"29"]
execute if score TotalPlayers hitw_game matches 30 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"30"]
execute if score TotalPlayers hitw_game matches 31 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"31"]
execute if score TotalPlayers hitw_game matches 32 run team modify placeholder_0 prefix ["",{"text": "剩余玩家: ","color":"green"},"32"]

# This will end the game.

execute if score TotalPlayers hitw_game matches 1 unless score devMode hitw_game matches 1 run function hitw:survivor/1

execute if score minute master.timer matches 0 if score second master.timer matches 0 unless score devMode hitw_game matches 1 run function hitw:survivor/timeout

# This loops the function
execute if score gameflag hitw_game matches 1 run schedule function hitw:detectplayers 1t