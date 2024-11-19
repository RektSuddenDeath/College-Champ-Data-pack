
schedule function dodgebolt:beginlistener 1s

execute if score minute master.timer matches 0 if score second master.timer matches 10 if score pause master.timer matches 0 unless score round db_game matches 5 run function dodgebolt:timeannounce/10
execute if score minute master.timer matches 0 if score second master.timer matches 9 if score pause master.timer matches 0 unless score round db_game matches 5 run function dodgebolt:timeannounce/9
execute if score minute master.timer matches 0 if score second master.timer matches 8 if score pause master.timer matches 0 unless score round db_game matches 5 run function dodgebolt:timeannounce/8
execute if score minute master.timer matches 0 if score second master.timer matches 7 if score pause master.timer matches 0 unless score round db_game matches 5 run function dodgebolt:timeannounce/7
execute if score minute master.timer matches 0 if score second master.timer matches 6 if score pause master.timer matches 0 unless score round db_game matches 5 run function dodgebolt:timeannounce/6
execute if score minute master.timer matches 0 if score second master.timer matches 5 if score pause master.timer matches 0 unless score round db_game matches 5 run function dodgebolt:timeannounce/5
execute if score minute master.timer matches 0 if score second master.timer matches 4 if score pause master.timer matches 0 unless score round db_game matches 5 run function dodgebolt:timeannounce/4
execute if score minute master.timer matches 0 if score second master.timer matches 3 if score pause master.timer matches 0 unless score round db_game matches 5 run function dodgebolt:timeannounce/3
execute if score minute master.timer matches 0 if score second master.timer matches 2 if score pause master.timer matches 0 unless score round db_game matches 5 run function dodgebolt:timeannounce/2
execute if score minute master.timer matches 0 if score second master.timer matches 1 if score pause master.timer matches 0 unless score round db_game matches 5 run function dodgebolt:timeannounce/1

execute if score minute master.timer matches 0 if score second master.timer matches 10 if score pause master.timer matches 0 if score round db_game matches 5 run function dodgebolt:timeannounce/r/assemble
execute if score minute master.timer matches 0 if score second master.timer matches 5 if score pause master.timer matches 0 if score round db_game matches 5 run function dodgebolt:timeannounce/r/5
execute if score minute master.timer matches 0 if score second master.timer matches 4 if score pause master.timer matches 0 if score round db_game matches 5 run function dodgebolt:timeannounce/r/4
execute if score minute master.timer matches 0 if score second master.timer matches 3 if score pause master.timer matches 0 if score round db_game matches 5 run function dodgebolt:timeannounce/r/3
execute if score minute master.timer matches 0 if score second master.timer matches 2 if score pause master.timer matches 0 if score round db_game matches 5 run function dodgebolt:timeannounce/r/2
execute if score minute master.timer matches 0 if score second master.timer matches 1 if score pause master.timer matches 0 if score round db_game matches 5 run function dodgebolt:timeannounce/r/1


execute if score minute master.timer matches 0 if score second master.timer matches 0 run function dodgebolt:start

