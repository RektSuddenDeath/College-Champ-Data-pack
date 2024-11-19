
execute if score minute master.timer matches 0 if score second master.timer matches 11 if score pause master.timer matches 0 if score round sba_game matches 1 run function skybattle:timeannounce/10
execute if score minute master.timer matches 0 if score second master.timer matches 10 if score pause master.timer matches 0 if score round sba_game matches 1 run function skybattle:timeannounce/9
execute if score minute master.timer matches 0 if score second master.timer matches 9 if score pause master.timer matches 0 if score round sba_game matches 1 run function skybattle:timeannounce/8
execute if score minute master.timer matches 0 if score second master.timer matches 8 if score pause master.timer matches 0 if score round sba_game matches 1 run function skybattle:timeannounce/7
execute if score minute master.timer matches 0 if score second master.timer matches 7 if score pause master.timer matches 0 if score round sba_game matches 1 run function skybattle:timeannounce/6
execute if score minute master.timer matches 0 if score second master.timer matches 6 if score pause master.timer matches 0 if score round sba_game matches 1 run function skybattle:timeannounce/5
execute if score minute master.timer matches 0 if score second master.timer matches 5 if score pause master.timer matches 0 if score round sba_game matches 1 run function skybattle:timeannounce/4
execute if score minute master.timer matches 0 if score second master.timer matches 4 if score pause master.timer matches 0 if score round sba_game matches 1 run function skybattle:timeannounce/3
execute if score minute master.timer matches 0 if score second master.timer matches 3 if score pause master.timer matches 0 if score round sba_game matches 1 run function skybattle:timeannounce/2
execute if score minute master.timer matches 0 if score second master.timer matches 2 if score pause master.timer matches 0 if score round sba_game matches 1 run function skybattle:timeannounce/1

execute if score minute master.timer matches 0 if score second master.timer matches 10 if score pause master.timer matches 0 if score round sba_game matches 2..3 run function skybattle:timeannounce/10
execute if score minute master.timer matches 0 if score second master.timer matches 9 if score pause master.timer matches 0 if score round sba_game matches 2..3 run function skybattle:timeannounce/9
execute if score minute master.timer matches 0 if score second master.timer matches 8 if score pause master.timer matches 0 if score round sba_game matches 2..3 run function skybattle:timeannounce/8
execute if score minute master.timer matches 0 if score second master.timer matches 7 if score pause master.timer matches 0 if score round sba_game matches 2..3 run function skybattle:timeannounce/7
execute if score minute master.timer matches 0 if score second master.timer matches 6 if score pause master.timer matches 0 if score round sba_game matches 2..3 run function skybattle:timeannounce/6
execute if score minute master.timer matches 0 if score second master.timer matches 5 if score pause master.timer matches 0 if score round sba_game matches 2..3 run function skybattle:timeannounce/5
execute if score minute master.timer matches 0 if score second master.timer matches 4 if score pause master.timer matches 0 if score round sba_game matches 2..3 run function skybattle:timeannounce/4
execute if score minute master.timer matches 0 if score second master.timer matches 3 if score pause master.timer matches 0 if score round sba_game matches 2..3 run function skybattle:timeannounce/3
execute if score minute master.timer matches 0 if score second master.timer matches 2 if score pause master.timer matches 0 if score round sba_game matches 2..3 run function skybattle:timeannounce/2
execute if score minute master.timer matches 0 if score second master.timer matches 1 if score pause master.timer matches 0 if score round sba_game matches 2..3 run function skybattle:timeannounce/1

execute if score minute master.timer matches 0 if score second master.timer matches 1 if score round sba_game matches 1 run function skybattle:round/1/start
execute if score minute master.timer matches 0 if score second master.timer matches 1 if score round sba_game matches 2 run schedule function skybattle:round/2/start 1s
execute if score minute master.timer matches 0 if score second master.timer matches 1 if score round sba_game matches 3 run schedule function skybattle:round/3/start 1s

execute if score minute master.timer matches 0 if score second master.timer matches 1 if score round sba_game matches 2..3 run scoreboard players set pregame sba_game 0
# Loop
execute if score pregame sba_game matches 1 run schedule function skybattle:round/inittime 1s