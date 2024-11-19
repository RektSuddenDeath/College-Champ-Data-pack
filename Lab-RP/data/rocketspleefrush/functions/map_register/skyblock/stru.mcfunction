
execute store result storage rsr:map_reg island_no int 1 run scoreboard players get stru rsr_map_register_global
data modify storage rsr:map_reg type set value "stru"
execute store result storage rsr:map_reg x int 1 run data get entity @s Pos[0]
execute store result storage rsr:map_reg y int 1 run data get entity @s Pos[1]
execute store result storage rsr:map_reg z int 1 run data get entity @s Pos[2]

function rocketspleefrush:map_register/skyblock/macro_template with storage rsr:map_reg