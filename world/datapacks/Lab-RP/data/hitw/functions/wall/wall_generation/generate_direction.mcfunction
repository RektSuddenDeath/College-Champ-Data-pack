
execute store result score direction hitw_wave_info run random value 1..4
execute if score direction hitw_wave_info = prev_direction hitw_wall_ctrl run function hitw:wall/wall_generation/generate_direction