
# Generate Wall wave info
function hitw:wall/wall_generation/generate_direction

scoreboard players set do_sike_walls hitw_wave_info 0 
scoreboard players set sike_amount hitw_wave_info 0
# Minute 1 (3:00-2:00)
execute if score minute master.timer matches 2.. run execute store result score walls_left hitw_wave_info run random value 1..3
execute if score minute master.timer matches 2.. run execute store result score sike_value hitw_wave_info run random value 1..100
execute if score minute master.timer matches 2.. if score sike_value hitw_wave_info matches 1..30 run scoreboard players set do_sike_walls hitw_wave_info 1 
execute if score minute master.timer matches 2.. if score do_sike_walls hitw_wave_info matches 1 run scoreboard players set sike_amount hitw_wave_info 1
# Minute 2 (1:59-1:00)
execute if score minute master.timer matches 1 run execute store result score walls_left hitw_wave_info run random value 1..4
execute if score minute master.timer matches 1 run execute store result score sike_value hitw_wave_info run random value 1..100
execute if score minute master.timer matches 1 if score sike_value hitw_wave_info matches 1..50 run scoreboard players set do_sike_walls hitw_wave_info 1 
execute if score minute master.timer matches 1 if score do_sike_walls hitw_wave_info matches 1 run execute store result score sike_amount hitw_wave_info run random value 1..2
# Minute 3 (0:59-0:00)
execute if score minute master.timer matches ..0 run execute store result score walls_left hitw_wave_info run random value 2..4
execute if score minute master.timer matches ..0 run execute store result score sike_value hitw_wave_info run random value 1..100
execute if score minute master.timer matches ..0 if score sike_value hitw_wave_info matches 1..75 run scoreboard players set do_sike_walls hitw_wave_info 1 
execute if score minute master.timer matches ..0 if score do_sike_walls hitw_wave_info matches 1 run execute store result score sike_amount hitw_wave_info run random value 2..3

# Fakeout?
execute if score minute master.timer matches 1..2 run execute store result score fakeout_value hitw_wave_info run random value 1..100
execute if score fakeout_value hitw_wave_info matches 1..30 run scoreboard players set fakeout_steps hitw_wave_info 6

# Debug
tellraw @a[tag=hitw_debug] ["\n§aWave Info:\n","Wave Walls: ",{"score":{"name": "walls_left","objective": "hitw_wave_info"},"color": "green"}," ","Sike Value: ",{"score":{"name": "sike_value","objective": "hitw_wave_info"},"color": "gold"}," ","Sike Walls: ",{"score":{"name": "sike_amount","objective": "hitw_wave_info"},"color": "red"}]

# Generate the walls
execute store result score sike_type hitw_wave_info run random value 1..3

function hitw:wall/wall_generation/generate_decide