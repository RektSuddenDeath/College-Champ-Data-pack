
execute if score map sba_game matches 1 if score minute master.timer matches 3 if score second master.timer matches 30 run function skybattle:border/startwidth
execute if score map sba_game matches 1 if score minute master.timer matches 3 if score second master.timer matches 0 run function skybattle:border/startheight

execute if score map sba_game matches 2 if score minute master.timer matches 3 if score second master.timer matches 30 run function skybattle:border/startwidth
execute if score map sba_game matches 2 if score minute master.timer matches 2 if score second master.timer matches 45 run function skybattle:border/startheight

execute if score map sba_game matches 3..4 if score minute master.timer matches 3 if score second master.timer matches 30 run function skybattle:border/startwidth
execute if score map sba_game matches 3..4 if score minute master.timer matches 2 if score second master.timer matches 45 run function skybattle:border/startheight

execute if score map sba_game matches 3..4 if score minute master.timer matches 2 if score second master.timer matches 30 run scoreboard players set widththreshold sba_game 4
execute if score map sba_game matches 3..4 if score minute master.timer matches 1 if score second master.timer matches 45 run scoreboard players set widththreshold sba_game 3
execute if score map sba_game matches 3..4 if score minute master.timer matches 1 if score second master.timer matches 10 run scoreboard players set widththreshold sba_game 4
execute if score map sba_game matches 3..4 if score minute master.timer matches 0 if score second master.timer matches 35 run scoreboard players set widththreshold sba_game 3

execute if score gameflag sba_game matches 1 if score minute master.timer matches 0.. run schedule function skybattle:round/roundtime 1s