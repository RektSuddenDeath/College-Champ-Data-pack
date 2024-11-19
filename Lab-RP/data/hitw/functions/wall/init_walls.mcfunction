
scoreboard objectives add hitw_wall_ctrl dummy
scoreboard players set interval hitw_wall_ctrl 9
scoreboard players set total_steps hitw_wall_ctrl 23
scoreboard players set sike_steps hitw_wall_ctrl 6

scoreboard players set fakeout_steps hitw_wave_info 0

scoreboard players set next_wave_steps hitw_wall_ctrl 20

scoreboard objectives add hitw_sike_ctrl dummy
scoreboard players set sike_wait hitw_wall_ctrl 8

scoreboard players set difficulty hitw_wall_ctrl 1

scoreboard objectives add hitw_wave_info dummy

scoreboard players set walls_left hitw_wave_info 0

execute store result storage hitw wall_set int 1 run scoreboard players get wall_set hitw_wall_ctrl
data modify storage hitw wall_difficulty_rich set value "easy"