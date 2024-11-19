
scoreboard players remove tick hitw_time 1

execute if score tick hitw_time matches 0 run function hitw:wall/clear
execute if score tick hitw_time matches 0 run function hitw:wall/move



execute if score tick hitw_time matches 0 run scoreboard players operation tick hitw_time = maxtick hitw_time
execute if score gameflag hitw_game matches 1 run schedule function hitw:wall/timer 1t
