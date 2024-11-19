

execute if score difficulty hitw_wall_ctrl matches 1 store result storage hitw wall_no int 1 run random value 1..10
execute if score difficulty hitw_wall_ctrl matches 2 store result storage hitw wall_no int 1 run random value 1..13
execute if score difficulty hitw_wall_ctrl matches 3 store result storage hitw wall_no int 1 run random value 1..15

function hitw:wall/west/randgen with storage hitw
summon marker -5014 112 -4993 {Tags:["wall_mover","west","sike","hitw_sike_randomness"]}