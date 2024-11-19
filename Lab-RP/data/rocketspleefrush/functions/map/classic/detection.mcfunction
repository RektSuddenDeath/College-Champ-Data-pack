
function rocketspleefrush:death
execute if score minute master.timer matches 0 if score second master.timer matches 0 unless score devMode rsr_game matches 1 run function rocketspleefrush:end
execute if score gameflag rsr_game matches 1 run schedule function rocketspleefrush:map/classic/detection 1t