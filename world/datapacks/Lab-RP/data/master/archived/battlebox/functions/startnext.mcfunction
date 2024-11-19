
execute if score unless master.timer matches 1 run schedule function battlebox:startnext 1s
execute if score second master.timer matches 1 run function battlebox:initiategame
