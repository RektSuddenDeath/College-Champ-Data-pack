

execute if score minute master.timer matches 0 if score second master.timer matches 1 if score gameflag meltdown_game matches 0 run schedule function meltdown:next_round 1s
execute if score minute master.timer matches 0 if score second master.timer matches 1 if score gameflag meltdown_game matches 0 run return 0
schedule function meltdown:next_round_listener 1s
