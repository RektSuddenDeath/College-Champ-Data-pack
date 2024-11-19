
execute store result storage rsr:map_ctrl island_no int 1 run scoreboard players add island_to_siren rsr_game 1

data modify storage rsr:map_ctrl type set value "stru"
function rocketspleefrush:map/classic_2/store_coords with storage rsr:map_ctrl
function rocketspleefrush:map/classic_2/macro_outline with storage rsr:component_data

data modify storage rsr:map_ctrl type set value "arrow"
function rocketspleefrush:map/classic_2/store_coords with storage rsr:map_ctrl
function rocketspleefrush:map/classic_2/macro_arrow with storage rsr:component_data


