

$execute store result storage rsr:component_data x int 1 run scoreboard players get $(island_no) rsr_pos_$(type)_x_skyblock
$execute store result storage rsr:component_data y int 1 run scoreboard players get $(island_no) rsr_pos_$(type)_y_skyblock
$execute store result storage rsr:component_data z int 1 run scoreboard players get $(island_no) rsr_pos_$(type)_z_skyblock
$data modify storage rsr:component_data island_no set value "$(island_no)"