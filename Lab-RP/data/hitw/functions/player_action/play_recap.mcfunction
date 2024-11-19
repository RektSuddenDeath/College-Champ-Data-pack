
scoreboard players set @s hitw_recap_played 1
execute store result storage temp:recap placement_r1 int 1 run scoreboard players get @s hitw_recap_r1
execute store result storage temp:recap placement_r2 int 1 run scoreboard players get @s hitw_recap_r2
execute store result storage temp:recap placement_r3 int 1 run scoreboard players get @s hitw_recap_r3

scoreboard objectives add hitw_temp_ts_m dummy
scoreboard objectives add hitw_temp_ts_s dummy

scoreboard players operation @s hitw_temp_ts_s = @s hitw_recap_total_survived 
scoreboard players operation @s hitw_temp_ts_m = @s hitw_recap_total_survived 

scoreboard players operation @s hitw_temp_ts_s %= 60 math
scoreboard players operation @s hitw_temp_ts_m /= 60 math

function hitw:player_action/play_recap_macro with storage temp:recap

scoreboard objectives remove hitw_temp_ts_m
scoreboard objectives remove hitw_temp_ts_s