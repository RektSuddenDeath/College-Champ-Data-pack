
execute store result storage rsr:map_ctrl island_no int 1 run scoreboard players add island_to_generate rsr_game 1
data modify storage rsr:map_ctrl name set value "classic_2"

data modify storage rsr:map_ctrl type set value "stru"
function rocketspleefrush:map/classic_2/store_coords with storage rsr:map_ctrl
function rocketspleefrush:map/classic_2/macro_island with storage rsr:component_data

data modify storage rsr:map_ctrl type set value "center"
function rocketspleefrush:map/classic_2/store_coords with storage rsr:map_ctrl
function rocketspleefrush:map/classic_2/macro_center with storage rsr:component_data