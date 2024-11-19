
execute store result storage rsr:map_ctrl island_no int 1 run scoreboard players add island_to_siren rsr_game 1
data modify storage rsr:map_ctrl type set value "arrow"
function rocketspleefrush:map/skyblock/store_coords with storage rsr:map_ctrl
function rocketspleefrush:map/skyblock/macro_arrow with storage rsr:component_data
