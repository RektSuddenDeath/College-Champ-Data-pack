
scoreboard players add ms gr_totaltime 5

scoreboard players operation min gr_totaltime = ms gr_totaltime
scoreboard players operation sec gr_totaltime = ms gr_totaltime

scoreboard players operation min gr_totaltime /= 6000 math
scoreboard players operation sec gr_totaltime /= 100 math
scoreboard players operation sec gr_totaltime %= 60 math

execute if score minute master.timer matches 0 if score second master.timer matches 0 if score total gr_game <= 7 math run function gr:end
execute if score minute master.timer matches 0 if score second master.timer matches 0 if score total gr_game >= 8 math if score completed gr_game >= 3 math run function gr:end
execute if score minute master.timer matches 0 if score second master.timer matches 0 if score total gr_game >= 8 math if score completed gr_game < 3 math run function gr:overtime/init


execute if score gameflag gr_game matches 1 run schedule function gr:time/igt 1t