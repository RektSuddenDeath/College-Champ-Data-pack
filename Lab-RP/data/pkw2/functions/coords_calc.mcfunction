
# The following function will calculate the map's anchors, providing standardlized source for checkpoint detection.
## CP Coords are when a player is checkpointed
scoreboard objectives add pkw2_cp_coords_x dummy
scoreboard objectives add pkw2_cp_coords_y dummy
scoreboard objectives add pkw2_cp_coords_z dummy

## TP Coords are when a player has fallen/ use teleport scroll to recall
scoreboard objectives add pkw2_tp_coords_x dummy
scoreboard objectives add pkw2_tp_coords_y dummy
scoreboard objectives add pkw2_tp_coords_z dummy

# Start Coords
scoreboard players set 0 pkw2_cp_coords_x -15000
scoreboard players set 0 pkw2_cp_coords_y 99
scoreboard players set 0 pkw2_cp_coords_z -15040

scoreboard players operation 0 pkw2_tp_coords_x = 0 pkw2_cp_coords_x
scoreboard players operation 0 pkw2_tp_coords_y = 0 pkw2_cp_coords_y
scoreboard players operation 0 pkw2_tp_coords_z = 0 pkw2_cp_coords_z

# Calculate each section, see corresponding functions
function pkw2:coords_calc/section_1
function pkw2:coords_calc/section_2
function pkw2:coords_calc/section_3
function pkw2:coords_calc/section_4
function pkw2:coords_calc/section_5
function pkw2:coords_calc/section_ending

# Store the teleportation coords
function pkw2:coords_calc/data_store