
execute if score second master.timer matches 10 if score minute master.timer matches 0 run function gr:timeannounce/10
execute if score second master.timer matches 10 if score minute master.timer matches 0 run schedule function gr:timeannounce/9 1s
execute if score second master.timer matches 10 if score minute master.timer matches 0 run schedule function gr:timeannounce/8 2s
execute if score second master.timer matches 10 if score minute master.timer matches 0 run schedule function gr:timeannounce/7 3s
execute if score second master.timer matches 10 if score minute master.timer matches 0 run schedule function gr:timeannounce/6 4s
execute if score second master.timer matches 10 if score minute master.timer matches 0 run schedule function gr:timeannounce/5 5s
execute if score second master.timer matches 10 if score minute master.timer matches 0 run schedule function gr:timeannounce/4 6s
execute if score second master.timer matches 10 if score minute master.timer matches 0 run schedule function gr:timeannounce/3 7s
execute if score second master.timer matches 10 if score minute master.timer matches 0 run schedule function gr:timeannounce/2 8s
execute if score second master.timer matches 10 if score minute master.timer matches 0 run schedule function gr:timeannounce/1 9s
execute if score second master.timer matches 10 if score minute master.timer matches 0 run schedule function gr:start 10s

schedule function gr:time/pregame 1t
execute if score second master.timer matches 10 if score minute master.timer matches 0 run schedule clear gr:time/pregame