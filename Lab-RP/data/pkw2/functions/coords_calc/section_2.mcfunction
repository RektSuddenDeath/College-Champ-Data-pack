# Shrine / Bonus / Main 2
### Shrine 2
scoreboard players operation 8 pkw2_cp_coords_x = 7 pkw2_cp_coords_x
scoreboard players operation 8 pkw2_cp_coords_y = 7 pkw2_cp_coords_y
scoreboard players operation 8 pkw2_cp_coords_z = 7 pkw2_cp_coords_z

scoreboard players operation 8 pkw2_cp_coords_z += 3 pkw2_length_p
scoreboard players operation 8 pkw2_cp_coords_z += 3 pkw2_length_m
scoreboard players operation 8 pkw2_cp_coords_x -= 3 pkw2_offset_m

scoreboard players operation 8 pkw2_tp_coords_x = 8 pkw2_cp_coords_x
scoreboard players operation 8 pkw2_tp_coords_y = 8 pkw2_cp_coords_y
scoreboard players operation 8 pkw2_tp_coords_z = 8 pkw2_cp_coords_z

scoreboard players remove 8 pkw2_tp_coords_x 8
scoreboard players add 8 pkw2_tp_coords_z 11

## Bonus 2
### B2-1
scoreboard players operation 9 pkw2_cp_coords_x = 8 pkw2_tp_coords_x
scoreboard players operation 9 pkw2_cp_coords_y = 8 pkw2_tp_coords_y
scoreboard players operation 9 pkw2_cp_coords_z = 8 pkw2_tp_coords_z

scoreboard players remove 9 pkw2_cp_coords_x 5

scoreboard players operation 9 pkw2_tp_coords_x = 9 pkw2_cp_coords_x
scoreboard players operation 9 pkw2_tp_coords_y = 9 pkw2_cp_coords_y
scoreboard players operation 9 pkw2_tp_coords_z = 9 pkw2_cp_coords_z

scoreboard players remove 9 pkw2_tp_coords_x 5

### B2-2
scoreboard players operation 10 pkw2_cp_coords_x = 9 pkw2_tp_coords_x
scoreboard players operation 10 pkw2_cp_coords_y = 9 pkw2_tp_coords_y
scoreboard players operation 10 pkw2_cp_coords_z = 9 pkw2_tp_coords_z

scoreboard players remove 10 pkw2_cp_coords_x 4

scoreboard players operation 10 pkw2_cp_coords_x -= 4 pkw2_length_b
scoreboard players operation 10 pkw2_cp_coords_z -= 4 pkw2_offset_b

scoreboard players operation 10 pkw2_tp_coords_x = 10 pkw2_cp_coords_x
scoreboard players operation 10 pkw2_tp_coords_y = 10 pkw2_cp_coords_y
scoreboard players operation 10 pkw2_tp_coords_z = 10 pkw2_cp_coords_z

scoreboard players remove 10 pkw2_tp_coords_x 5

### B2-3

scoreboard players operation 11 pkw2_cp_coords_x = 10 pkw2_tp_coords_x
scoreboard players operation 11 pkw2_cp_coords_y = 10 pkw2_tp_coords_y
scoreboard players operation 11 pkw2_cp_coords_z = 10 pkw2_tp_coords_z

scoreboard players remove 11 pkw2_cp_coords_x 4

scoreboard players operation 11 pkw2_cp_coords_x -= 5 pkw2_length_b
scoreboard players operation 11 pkw2_cp_coords_z -= 5 pkw2_offset_b

scoreboard players operation 11 pkw2_tp_coords_x = 11 pkw2_cp_coords_x
scoreboard players operation 11 pkw2_tp_coords_y = 11 pkw2_cp_coords_y
scoreboard players operation 11 pkw2_tp_coords_z = 11 pkw2_cp_coords_z

scoreboard players remove 11 pkw2_tp_coords_x 5

### PORTAL
scoreboard players operation P2 pkw2_cp_coords_x = 11 pkw2_tp_coords_x
scoreboard players operation P2 pkw2_cp_coords_y = 11 pkw2_tp_coords_y
scoreboard players operation P2 pkw2_cp_coords_z = 11 pkw2_tp_coords_z

scoreboard players remove P2 pkw2_cp_coords_x 17

scoreboard players operation P2 pkw2_cp_coords_x -= 6 pkw2_length_b
scoreboard players operation P2 pkw2_cp_coords_z -= 6 pkw2_offset_b

### M2-1
scoreboard players operation 12 pkw2_cp_coords_x = 8 pkw2_cp_coords_x
scoreboard players operation 12 pkw2_cp_coords_y = 8 pkw2_cp_coords_y
scoreboard players operation 12 pkw2_cp_coords_z = 8 pkw2_cp_coords_z

scoreboard players operation 12 pkw2_cp_coords_z += shrine_default pkw2_length_p
scoreboard players add 12 pkw2_cp_coords_z 1

scoreboard players operation 12 pkw2_tp_coords_x = 12 pkw2_cp_coords_x
scoreboard players operation 12 pkw2_tp_coords_y = 12 pkw2_cp_coords_y
scoreboard players operation 12 pkw2_tp_coords_z = 12 pkw2_cp_coords_z

scoreboard players add 12 pkw2_tp_coords_z 5

### M2-2
scoreboard players operation 13 pkw2_cp_coords_x = 12 pkw2_cp_coords_x
scoreboard players operation 13 pkw2_cp_coords_y = 12 pkw2_cp_coords_y
scoreboard players operation 13 pkw2_cp_coords_z = 12 pkw2_cp_coords_z

scoreboard players operation 13 pkw2_cp_coords_z += 4 pkw2_length_p
scoreboard players operation 13 pkw2_cp_coords_z += 4 pkw2_length_m
scoreboard players operation 13 pkw2_cp_coords_x -= 4 pkw2_offset_m

scoreboard players operation 13 pkw2_tp_coords_x = 13 pkw2_cp_coords_x
scoreboard players operation 13 pkw2_tp_coords_y = 13 pkw2_cp_coords_y
scoreboard players operation 13 pkw2_tp_coords_z = 13 pkw2_cp_coords_z

scoreboard players add 13 pkw2_tp_coords_z 5

### M2-3
scoreboard players operation 14 pkw2_cp_coords_x = 13 pkw2_cp_coords_x
scoreboard players operation 14 pkw2_cp_coords_y = 13 pkw2_cp_coords_y
scoreboard players operation 14 pkw2_cp_coords_z = 13 pkw2_cp_coords_z

scoreboard players operation 14 pkw2_cp_coords_z += 5 pkw2_length_p
scoreboard players operation 14 pkw2_cp_coords_z += 5 pkw2_length_m
scoreboard players operation 14 pkw2_cp_coords_x -= 5 pkw2_offset_m

scoreboard players operation 14 pkw2_tp_coords_x = 14 pkw2_cp_coords_x
scoreboard players operation 14 pkw2_tp_coords_y = 14 pkw2_cp_coords_y
scoreboard players operation 14 pkw2_tp_coords_z = 14 pkw2_cp_coords_z

scoreboard players add 14 pkw2_tp_coords_z 8