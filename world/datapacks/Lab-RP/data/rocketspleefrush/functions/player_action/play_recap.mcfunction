
scoreboard players set @s rsr_recap_played 1
execute store result storage temp:recap placement_r1 int 1 run scoreboard players get @s rsr_recap_r1
execute store result storage temp:recap placement_r2 int 1 run scoreboard players get @s rsr_recap_r2
execute store result storage temp:recap placement_r3 int 1 run scoreboard players get @s rsr_recap_r3

scoreboard objectives add rsr_temp_ts_m dummy
scoreboard objectives add rsr_temp_ts_s dummy

scoreboard players operation @s rsr_temp_ts_s = @s rsr_recap_total_survived 
scoreboard players operation @s rsr_temp_ts_m = @s rsr_recap_total_survived 

scoreboard players operation @s rsr_temp_ts_s %= 60 math
scoreboard players operation @s rsr_temp_ts_m /= 60 math

scoreboard objectives add rsr_temp_ks dummy
scoreboard players operation @s rsr_temp_ks += @s rsr_roundkills
scoreboard players operation @s rsr_temp_ks += @s rsr_gamekills

function rocketspleefrush:player_action/play_recap_macro with storage temp:recap

scoreboard objectives remove rsr_temp_ts_m
scoreboard objectives remove rsr_temp_ts_s
scoreboard objectives remove rsr_temp_ks