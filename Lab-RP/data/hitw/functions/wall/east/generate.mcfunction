

scoreboard players set prev_direction hitw_wall_ctrl 1
# Wave Control
scoreboard players remove walls_left hitw_wave_info 1

execute if score walls_left hitw_wave_info matches 1.. if score minute master.timer matches 2.. run execute store result score next_wall_steps hitw_wall_ctrl run random value 9..10 
execute if score walls_left hitw_wave_info matches 1.. if score minute master.timer matches 1 run execute store result score next_wall_steps hitw_wall_ctrl run random value 8..11
execute if score walls_left hitw_wave_info matches 1.. if score minute master.timer matches ..0 run execute store result score next_wall_steps hitw_wall_ctrl run random value 7..12
#kill @e[type=marker,tag=wall_mover,tag=east]
execute if score difficulty hitw_wall_ctrl matches 1 store result storage hitw wall_no int 1 run random value 1..10
execute if score difficulty hitw_wall_ctrl matches 2 store result storage hitw wall_no int 1 run random value 1..13
execute if score difficulty hitw_wall_ctrl matches 3 store result storage hitw wall_no int 1 run random value 1..15

function hitw:wall/east/randgen with storage hitw
summon marker -4985 112 -5006 {Tags:["wall_mover","east"]}