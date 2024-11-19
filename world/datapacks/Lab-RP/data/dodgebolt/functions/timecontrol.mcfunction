
execute if score second master.timer matches 2 run schedule function dodgebolt:initiategame 1s
execute unless score second master.timer matches 2 run schedule function dodgebolt:timecontrol 1s