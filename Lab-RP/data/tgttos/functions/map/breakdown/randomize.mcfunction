
# Randomize the thickness of each wall, LEFT TO RIGHT
scoreboard objectives remove tmp_tgttos_bd_rand
scoreboard objectives add tmp_tgttos_bd_rand dummy
## PHASE 1
execute store result score thick_a1 tmp_tgttos_bd_rand run random value 1..3
execute store result score thick_a2 tmp_tgttos_bd_rand run random value 1..3
execute store result score thick_a3 tmp_tgttos_bd_rand run random value 1..3
execute store result score thick_a4 tmp_tgttos_bd_rand run random value 1..3
execute store result score thick_a5 tmp_tgttos_bd_rand run random value 1..3

execute if score thick_a1 tmp_tgttos_bd_rand matches 1 run place template tgttos:breakdown/wall_1/1 -12486 103 -12477
execute if score thick_a1 tmp_tgttos_bd_rand matches 2 run place template tgttos:breakdown/wall_1/2 -12486 103 -12477
execute if score thick_a1 tmp_tgttos_bd_rand matches 3 run place template tgttos:breakdown/wall_1/3 -12486 103 -12477

execute if score thick_a2 tmp_tgttos_bd_rand matches 1 run place template tgttos:breakdown/wall_1/1 -12494 103 -12477
execute if score thick_a2 tmp_tgttos_bd_rand matches 2 run place template tgttos:breakdown/wall_1/2 -12494 103 -12477
execute if score thick_a2 tmp_tgttos_bd_rand matches 3 run place template tgttos:breakdown/wall_1/3 -12494 103 -12477

execute if score thick_a3 tmp_tgttos_bd_rand matches 1 run place template tgttos:breakdown/wall_1/1 -12502 103 -12477
execute if score thick_a3 tmp_tgttos_bd_rand matches 2 run place template tgttos:breakdown/wall_1/2 -12502 103 -12477
execute if score thick_a3 tmp_tgttos_bd_rand matches 3 run place template tgttos:breakdown/wall_1/3 -12502 103 -12477

execute if score thick_a4 tmp_tgttos_bd_rand matches 1 run place template tgttos:breakdown/wall_1/1 -12510 103 -12477
execute if score thick_a4 tmp_tgttos_bd_rand matches 2 run place template tgttos:breakdown/wall_1/2 -12510 103 -12477
execute if score thick_a4 tmp_tgttos_bd_rand matches 3 run place template tgttos:breakdown/wall_1/3 -12510 103 -12477

execute if score thick_a5 tmp_tgttos_bd_rand matches 1 run place template tgttos:breakdown/wall_1/1 -12518 103 -12477
execute if score thick_a5 tmp_tgttos_bd_rand matches 2 run place template tgttos:breakdown/wall_1/2 -12518 103 -12477
execute if score thick_a5 tmp_tgttos_bd_rand matches 3 run place template tgttos:breakdown/wall_1/3 -12518 103 -12477

## PHASE 2
execute store result score thick_b1 tmp_tgttos_bd_rand run random value 1..3
execute store result score thick_b2 tmp_tgttos_bd_rand run random value 1..3
execute store result score thick_b3 tmp_tgttos_bd_rand run random value 1..3
execute store result score thick_b4 tmp_tgttos_bd_rand run random value 1..3
execute store result score thick_b5 tmp_tgttos_bd_rand run random value 1..3

execute if score thick_b1 tmp_tgttos_bd_rand matches 1 run place template tgttos:breakdown/wall_2/1 -12486 110 -12421
execute if score thick_b1 tmp_tgttos_bd_rand matches 2 run place template tgttos:breakdown/wall_2/2 -12486 110 -12421
execute if score thick_b1 tmp_tgttos_bd_rand matches 3 run place template tgttos:breakdown/wall_2/3 -12486 110 -12421

execute if score thick_b2 tmp_tgttos_bd_rand matches 1 run place template tgttos:breakdown/wall_2/1 -12494 110 -12421
execute if score thick_b2 tmp_tgttos_bd_rand matches 2 run place template tgttos:breakdown/wall_2/2 -12494 110 -12421
execute if score thick_b2 tmp_tgttos_bd_rand matches 3 run place template tgttos:breakdown/wall_2/3 -12494 110 -12421

execute if score thick_b3 tmp_tgttos_bd_rand matches 1 run place template tgttos:breakdown/wall_2/1 -12502 110 -12421
execute if score thick_b3 tmp_tgttos_bd_rand matches 2 run place template tgttos:breakdown/wall_2/2 -12502 110 -12421
execute if score thick_b3 tmp_tgttos_bd_rand matches 3 run place template tgttos:breakdown/wall_2/3 -12502 110 -12421

execute if score thick_b4 tmp_tgttos_bd_rand matches 1 run place template tgttos:breakdown/wall_2/1 -12510 110 -12421
execute if score thick_b4 tmp_tgttos_bd_rand matches 2 run place template tgttos:breakdown/wall_2/2 -12510 110 -12421
execute if score thick_b4 tmp_tgttos_bd_rand matches 3 run place template tgttos:breakdown/wall_2/3 -12510 110 -12421

execute if score thick_b5 tmp_tgttos_bd_rand matches 1 run place template tgttos:breakdown/wall_2/1 -12518 110 -12421
execute if score thick_b5 tmp_tgttos_bd_rand matches 2 run place template tgttos:breakdown/wall_2/2 -12518 110 -12421
execute if score thick_b5 tmp_tgttos_bd_rand matches 3 run place template tgttos:breakdown/wall_2/3 -12518 110 -12421

## PHASE 3
execute store result score thick_c1 tmp_tgttos_bd_rand run random value 4..7
execute store result score thick_c2 tmp_tgttos_bd_rand run random value 4..7
execute store result score thick_c3 tmp_tgttos_bd_rand run random value 4..7
execute store result score thick_c4 tmp_tgttos_bd_rand run random value 4..7
execute store result score thick_c5 tmp_tgttos_bd_rand run random value 4..7
execute store result score thick_c6 tmp_tgttos_bd_rand run random value 4..7

execute if score thick_c1 tmp_tgttos_bd_rand matches 4 run place template tgttos:breakdown/wall_3/4 -12490 101 -12406
execute if score thick_c1 tmp_tgttos_bd_rand matches 5 run place template tgttos:breakdown/wall_3/5 -12490 101 -12406
execute if score thick_c1 tmp_tgttos_bd_rand matches 6 run place template tgttos:breakdown/wall_3/6 -12490 101 -12406
execute if score thick_c1 tmp_tgttos_bd_rand matches 7 run place template tgttos:breakdown/wall_3/7 -12490 101 -12406

execute if score thick_c2 tmp_tgttos_bd_rand matches 4 run place template tgttos:breakdown/wall_3/4 -12490 101 -12393
execute if score thick_c2 tmp_tgttos_bd_rand matches 5 run place template tgttos:breakdown/wall_3/5 -12490 101 -12393
execute if score thick_c2 tmp_tgttos_bd_rand matches 6 run place template tgttos:breakdown/wall_3/6 -12490 101 -12393
execute if score thick_c2 tmp_tgttos_bd_rand matches 7 run place template tgttos:breakdown/wall_3/7 -12490 101 -12393

execute if score thick_c3 tmp_tgttos_bd_rand matches 4 run place template tgttos:breakdown/wall_3/4 -12490 101 -12380
execute if score thick_c3 tmp_tgttos_bd_rand matches 5 run place template tgttos:breakdown/wall_3/5 -12490 101 -12380
execute if score thick_c3 tmp_tgttos_bd_rand matches 6 run place template tgttos:breakdown/wall_3/6 -12490 101 -12380
execute if score thick_c3 tmp_tgttos_bd_rand matches 7 run place template tgttos:breakdown/wall_3/7 -12490 101 -12380

execute if score thick_c4 tmp_tgttos_bd_rand matches 4 run place template tgttos:breakdown/wall_3/4 -12514 101 -12406
execute if score thick_c4 tmp_tgttos_bd_rand matches 5 run place template tgttos:breakdown/wall_3/5 -12514 101 -12406
execute if score thick_c4 tmp_tgttos_bd_rand matches 6 run place template tgttos:breakdown/wall_3/6 -12514 101 -12406
execute if score thick_c4 tmp_tgttos_bd_rand matches 7 run place template tgttos:breakdown/wall_3/7 -12514 101 -12406

execute if score thick_c5 tmp_tgttos_bd_rand matches 4 run place template tgttos:breakdown/wall_3/4 -12514 101 -12393
execute if score thick_c5 tmp_tgttos_bd_rand matches 5 run place template tgttos:breakdown/wall_3/5 -12514 101 -12393
execute if score thick_c5 tmp_tgttos_bd_rand matches 6 run place template tgttos:breakdown/wall_3/6 -12514 101 -12393
execute if score thick_c5 tmp_tgttos_bd_rand matches 7 run place template tgttos:breakdown/wall_3/7 -12514 101 -12393

execute if score thick_c6 tmp_tgttos_bd_rand matches 4 run place template tgttos:breakdown/wall_3/4 -12514 101 -12380
execute if score thick_c6 tmp_tgttos_bd_rand matches 5 run place template tgttos:breakdown/wall_3/5 -12514 101 -12380
execute if score thick_c6 tmp_tgttos_bd_rand matches 6 run place template tgttos:breakdown/wall_3/6 -12514 101 -12380
execute if score thick_c6 tmp_tgttos_bd_rand matches 7 run place template tgttos:breakdown/wall_3/7 -12514 101 -12380

## CLEANUP