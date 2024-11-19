# Shrine / Bonus / Main 1
## The first two are stationary whatsoever
scoreboard players set 1 pkw2_cp_coords_x -15000
scoreboard players set 1 pkw2_cp_coords_y 105
scoreboard players set 1 pkw2_cp_coords_z -15011

scoreboard players operation 1 pkw2_tp_coords_x = 1 pkw2_cp_coords_x
scoreboard players operation 1 pkw2_tp_coords_y = 1 pkw2_cp_coords_y
scoreboard players operation 1 pkw2_tp_coords_z = 1 pkw2_cp_coords_z

scoreboard players remove 1 pkw2_tp_coords_x 8
scoreboard players add 1 pkw2_tp_coords_z 11

## Bonus1 
### B1-1
scoreboard players operation 2 pkw2_cp_coords_x = 1 pkw2_tp_coords_x
scoreboard players operation 2 pkw2_cp_coords_y = 1 pkw2_tp_coords_y
scoreboard players operation 2 pkw2_cp_coords_z = 1 pkw2_tp_coords_z

scoreboard players remove 2 pkw2_cp_coords_x 5

scoreboard players operation 2 pkw2_tp_coords_x = 2 pkw2_cp_coords_x
scoreboard players operation 2 pkw2_tp_coords_y = 2 pkw2_cp_coords_y
scoreboard players operation 2 pkw2_tp_coords_z = 2 pkw2_cp_coords_z

scoreboard players remove 2 pkw2_tp_coords_x 5

### B1-2
scoreboard players operation 3 pkw2_cp_coords_x = 2 pkw2_tp_coords_x
scoreboard players operation 3 pkw2_cp_coords_y = 2 pkw2_tp_coords_y
scoreboard players operation 3 pkw2_cp_coords_z = 2 pkw2_tp_coords_z

scoreboard players remove 3 pkw2_cp_coords_x 4

scoreboard players operation 3 pkw2_cp_coords_x -= 1 pkw2_length_b
scoreboard players operation 3 pkw2_cp_coords_z -= 1 pkw2_offset_b

scoreboard players operation 3 pkw2_tp_coords_x = 3 pkw2_cp_coords_x
scoreboard players operation 3 pkw2_tp_coords_y = 3 pkw2_cp_coords_y
scoreboard players operation 3 pkw2_tp_coords_z = 3 pkw2_cp_coords_z

scoreboard players remove 3 pkw2_tp_coords_x 5

### B1-3

scoreboard players operation 4 pkw2_cp_coords_x = 3 pkw2_tp_coords_x
scoreboard players operation 4 pkw2_cp_coords_y = 3 pkw2_tp_coords_y
scoreboard players operation 4 pkw2_cp_coords_z = 3 pkw2_tp_coords_z

scoreboard players remove 4 pkw2_cp_coords_x 4

scoreboard players operation 4 pkw2_cp_coords_x -= 2 pkw2_length_b
scoreboard players operation 4 pkw2_cp_coords_z -= 2 pkw2_offset_b

scoreboard players operation 4 pkw2_tp_coords_x = 4 pkw2_cp_coords_x
scoreboard players operation 4 pkw2_tp_coords_y = 4 pkw2_cp_coords_y
scoreboard players operation 4 pkw2_tp_coords_z = 4 pkw2_cp_coords_z

scoreboard players remove 4 pkw2_tp_coords_x 5

### PORTAL
scoreboard players operation P1 pkw2_cp_coords_x = 4 pkw2_tp_coords_x
scoreboard players operation P1 pkw2_cp_coords_y = 4 pkw2_tp_coords_y
scoreboard players operation P1 pkw2_cp_coords_z = 4 pkw2_tp_coords_z

scoreboard players remove P1 pkw2_cp_coords_x 17

scoreboard players operation P1 pkw2_cp_coords_x -= 3 pkw2_length_b
scoreboard players operation P1 pkw2_cp_coords_z -= 3 pkw2_offset_b

### M1-1
scoreboard players operation 5 pkw2_cp_coords_x = 1 pkw2_cp_coords_x
scoreboard players operation 5 pkw2_cp_coords_y = 1 pkw2_cp_coords_y
scoreboard players operation 5 pkw2_cp_coords_z = 1 pkw2_cp_coords_z

scoreboard players operation 5 pkw2_cp_coords_z += shrine_default pkw2_length_p
scoreboard players add 5 pkw2_cp_coords_z 1

scoreboard players operation 5 pkw2_tp_coords_x = 5 pkw2_cp_coords_x
scoreboard players operation 5 pkw2_tp_coords_y = 5 pkw2_cp_coords_y
scoreboard players operation 5 pkw2_tp_coords_z = 5 pkw2_cp_coords_z

scoreboard players add 5 pkw2_tp_coords_z 5

### M1-2
scoreboard players operation 6 pkw2_cp_coords_x = 5 pkw2_cp_coords_x
scoreboard players operation 6 pkw2_cp_coords_y = 5 pkw2_cp_coords_y
scoreboard players operation 6 pkw2_cp_coords_z = 5 pkw2_cp_coords_z

scoreboard players operation 6 pkw2_cp_coords_z += 1 pkw2_length_p
scoreboard players operation 6 pkw2_cp_coords_z += 1 pkw2_length_m
scoreboard players operation 6 pkw2_cp_coords_x -= 1 pkw2_offset_m

scoreboard players operation 6 pkw2_tp_coords_x = 6 pkw2_cp_coords_x
scoreboard players operation 6 pkw2_tp_coords_y = 6 pkw2_cp_coords_y
scoreboard players operation 6 pkw2_tp_coords_z = 6 pkw2_cp_coords_z

scoreboard players add 6 pkw2_tp_coords_z 5

### M1-3
scoreboard players operation 7 pkw2_cp_coords_x = 6 pkw2_cp_coords_x
scoreboard players operation 7 pkw2_cp_coords_y = 6 pkw2_cp_coords_y
scoreboard players operation 7 pkw2_cp_coords_z = 6 pkw2_cp_coords_z

scoreboard players operation 7 pkw2_cp_coords_z += 2 pkw2_length_p
scoreboard players operation 7 pkw2_cp_coords_z += 2 pkw2_length_m
scoreboard players operation 7 pkw2_cp_coords_x -= 2 pkw2_offset_m

scoreboard players operation 7 pkw2_tp_coords_x = 7 pkw2_cp_coords_x
scoreboard players operation 7 pkw2_tp_coords_y = 7 pkw2_cp_coords_y
scoreboard players operation 7 pkw2_tp_coords_z = 7 pkw2_cp_coords_z

scoreboard players add 7 pkw2_tp_coords_z 8