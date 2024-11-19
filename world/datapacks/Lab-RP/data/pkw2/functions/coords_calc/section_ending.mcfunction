### Shrine Ending
scoreboard players operation 36 pkw2_cp_coords_x = 35 pkw2_cp_coords_x
scoreboard players operation 36 pkw2_cp_coords_y = 35 pkw2_cp_coords_y
scoreboard players operation 36 pkw2_cp_coords_z = 35 pkw2_cp_coords_z

scoreboard players operation 36 pkw2_cp_coords_z += 15 pkw2_length_p
scoreboard players operation 36 pkw2_cp_coords_z += 15 pkw2_length_m
scoreboard players operation 36 pkw2_cp_coords_x -= 15 pkw2_offset_m

scoreboard players operation 36 pkw2_tp_coords_x = 36 pkw2_cp_coords_x
scoreboard players operation 36 pkw2_tp_coords_y = 36 pkw2_cp_coords_y
scoreboard players operation 36 pkw2_tp_coords_z = 36 pkw2_cp_coords_z


scoreboard players add 36 pkw2_tp_coords_z 5

## Edge Bound
scoreboard players operation ending_left pkw2_cp_coords_x = 36 pkw2_cp_coords_x
scoreboard players add ending_left pkw2_cp_coords_x 13

scoreboard players operation ending_right pkw2_cp_coords_x = 36 pkw2_cp_coords_x
scoreboard players remove ending_right pkw2_cp_coords_x 13

## Easy Path 1
scoreboard players operation 37 pkw2_cp_coords_x = 36 pkw2_cp_coords_x
scoreboard players operation 37 pkw2_cp_coords_y = 36 pkw2_cp_coords_y
scoreboard players operation 37 pkw2_cp_coords_z = 36 pkw2_cp_coords_z

scoreboard players add 37 pkw2_cp_coords_x 40
scoreboard players add 37 pkw2_cp_coords_y 2
scoreboard players add 37 pkw2_cp_coords_z 22

scoreboard players operation 37 pkw2_tp_coords_x = 37 pkw2_cp_coords_x
scoreboard players operation 37 pkw2_tp_coords_y = 37 pkw2_cp_coords_y
scoreboard players operation 37 pkw2_tp_coords_z = 37 pkw2_cp_coords_z

scoreboard players add 37 pkw2_tp_coords_z 5

## Easy Complete
scoreboard players operation ee pkw2_cp_coords_x = 37 pkw2_cp_coords_x
scoreboard players operation ee pkw2_cp_coords_y = 37 pkw2_cp_coords_y
scoreboard players operation ee pkw2_cp_coords_z = 37 pkw2_cp_coords_z

scoreboard players add ee pkw2_cp_coords_z 9
scoreboard players operation ee pkw2_cp_coords_z += e1 pkw2_length_f
scoreboard players operation ee pkw2_cp_coords_x -= e1 pkw2_offset_f


# 定位在烟花的生成点
scoreboard players add ee pkw2_cp_coords_z 4
scoreboard players add ee pkw2_cp_coords_y 21

## Medium Path
## Medium Challenge 1
scoreboard players operation 38 pkw2_cp_coords_x = 36 pkw2_cp_coords_x
scoreboard players operation 38 pkw2_cp_coords_y = 36 pkw2_cp_coords_y
scoreboard players operation 38 pkw2_cp_coords_z = 36 pkw2_cp_coords_z

scoreboard players add 38 pkw2_cp_coords_y 1
scoreboard players add 38 pkw2_cp_coords_z 31

scoreboard players operation 38 pkw2_tp_coords_x = 38 pkw2_cp_coords_x
scoreboard players operation 38 pkw2_tp_coords_y = 38 pkw2_cp_coords_y
scoreboard players operation 38 pkw2_tp_coords_z = 38 pkw2_cp_coords_z

scoreboard players add 38 pkw2_tp_coords_z 5

## Medium Challenge 2
scoreboard players operation 39 pkw2_cp_coords_x = 38 pkw2_cp_coords_x
scoreboard players operation 39 pkw2_cp_coords_y = 38 pkw2_cp_coords_y
scoreboard players operation 39 pkw2_cp_coords_z = 38 pkw2_cp_coords_z

scoreboard players add 39 pkw2_cp_coords_z 9
scoreboard players operation 39 pkw2_cp_coords_z += m1 pkw2_length_f
scoreboard players operation 39 pkw2_cp_coords_x -= m1 pkw2_offset_f

scoreboard players operation 39 pkw2_tp_coords_x = 39 pkw2_cp_coords_x
scoreboard players operation 39 pkw2_tp_coords_y = 39 pkw2_cp_coords_y
scoreboard players operation 39 pkw2_tp_coords_z = 39 pkw2_cp_coords_z

scoreboard players add 39 pkw2_tp_coords_z 5

# Medium Complete

scoreboard players operation me pkw2_cp_coords_x = 39 pkw2_cp_coords_x
scoreboard players operation me pkw2_cp_coords_y = 39 pkw2_cp_coords_y
scoreboard players operation me pkw2_cp_coords_z = 39 pkw2_cp_coords_z

scoreboard players add me pkw2_cp_coords_z 9
scoreboard players operation me pkw2_cp_coords_z += m2 pkw2_length_f
scoreboard players operation me pkw2_cp_coords_x -= m2 pkw2_offset_f
# 定位在烟花的生成点
scoreboard players add me pkw2_cp_coords_z 4
scoreboard players add me pkw2_cp_coords_y 7

## Hard Path
## Hard Challenge 1
scoreboard players operation 40 pkw2_cp_coords_x = 36 pkw2_cp_coords_x
scoreboard players operation 40 pkw2_cp_coords_y = 36 pkw2_cp_coords_y
scoreboard players operation 40 pkw2_cp_coords_z = 36 pkw2_cp_coords_z

scoreboard players remove 40 pkw2_cp_coords_x 40
scoreboard players add 40 pkw2_cp_coords_y 2
scoreboard players add 40 pkw2_cp_coords_z 22

scoreboard players operation 40 pkw2_tp_coords_x = 40 pkw2_cp_coords_x
scoreboard players operation 40 pkw2_tp_coords_y = 40 pkw2_cp_coords_y
scoreboard players operation 40 pkw2_tp_coords_z = 40 pkw2_cp_coords_z

scoreboard players add 40 pkw2_tp_coords_z 5

## Hard Challenge 2
scoreboard players operation 41 pkw2_cp_coords_x = 40 pkw2_cp_coords_x
scoreboard players operation 41 pkw2_cp_coords_y = 40 pkw2_cp_coords_y
scoreboard players operation 41 pkw2_cp_coords_z = 40 pkw2_cp_coords_z

scoreboard players add 41 pkw2_cp_coords_z 9
scoreboard players operation 41 pkw2_cp_coords_z += h1 pkw2_length_f
scoreboard players operation 41 pkw2_cp_coords_z -= h1 pkw2_offset_f

scoreboard players operation 41 pkw2_tp_coords_x = 41 pkw2_cp_coords_x
scoreboard players operation 41 pkw2_tp_coords_y = 41 pkw2_cp_coords_y
scoreboard players operation 41 pkw2_tp_coords_z = 41 pkw2_cp_coords_z

scoreboard players add 41 pkw2_tp_coords_z 5

# hard ending

scoreboard players operation he pkw2_cp_coords_x = 41 pkw2_cp_coords_x
scoreboard players operation he pkw2_cp_coords_y = 41 pkw2_cp_coords_y
scoreboard players operation he pkw2_cp_coords_z = 41 pkw2_cp_coords_z

scoreboard players add he pkw2_cp_coords_z 9
scoreboard players operation he pkw2_cp_coords_z += h2 pkw2_length_f
scoreboard players operation he pkw2_cp_coords_x -= h2 pkw2_offset_f
# 定位在烟花的生成点
scoreboard players add he pkw2_cp_coords_z 4
scoreboard players add he pkw2_cp_coords_y 22