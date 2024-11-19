
scoreboard players remove next_wall_steps hitw_wall_ctrl 1
execute if score walls_left hitw_wave_info matches 0 unless entity @e[type=marker,scores={hitw_wall_ctrl=..18}] run function hitw:wall/wall_generation/next_wave
execute if score next_wall_steps hitw_wall_ctrl matches 0 if score walls_left hitw_wave_info matches 1.. run function hitw:wall/wall_generation/same_wave_next

function hitw:wall/east/move
function hitw:wall/west/move
function hitw:wall/south/move
function hitw:wall/north/move

# Randomness break sike deteremine
execute as @e[type=marker,tag=hitw_sike_randomness,tag=sike] run execute store result score @s hitw_sike_ctrl run random value -4..2
execute as @e[type=marker,tag=hitw_sike_randomness,tag=sike] run tag @s remove hitw_sike_randomness
#

execute store result storage hitw move_interval int 1 run scoreboard players get interval hitw_wall_ctrl
execute if score fakeout_steps hitw_wave_info matches 1.. run data modify storage hitw move_interval set value 4
execute if score fakeout_steps hitw_wave_info matches 1.. run scoreboard players remove fakeout_steps hitw_wave_info 1
function hitw:wall/move_queue with storage hitw