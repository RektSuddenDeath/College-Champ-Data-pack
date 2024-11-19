
# 偏移值（额外算1t的动量的1/20） [0.002->0.0001]
execute store result storage rsr:explode_adjust x double 0.0001 run scoreboard players get @s fixed_rsr_motion_x
execute store result storage rsr:explode_adjust y double 0.0001 run scoreboard players get @s fixed_rsr_motion_y
execute store result storage rsr:explode_adjust z double 0.0001 run scoreboard players get @s fixed_rsr_motion_z

execute store result score result rsr_explode_adjust_success run function rocketspleefrush:weapon/explode_adjust/2 with storage rsr:explode_adjust

# 最多多偏移1t
scoreboard players add @s rsr_explode_adjust_count 1
#execute if score @s rsr_explode_adjust_count matches 20.. run tellraw @a[tag=rsr_debug] "1"
execute if score @s rsr_explode_adjust_count matches 20.. run return 0

# 如果成功返回。
#execute if score result rsr_explode_adjust_success matches 1 run tellraw @a[tag=rsr_debug] "2"
execute if score result rsr_explode_adjust_success matches 1 run return 1

# 都不符合递归。
function rocketspleefrush:weapon/explode_adjust/macro_loop

