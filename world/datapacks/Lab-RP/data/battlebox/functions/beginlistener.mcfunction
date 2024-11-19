
schedule function battlebox:beginlistener 1s
execute if score minute master.timer matches 0 if score second master.timer matches 0 run function battlebox:game_new/first_round
