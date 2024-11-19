
tag @s remove to_explode
# Used for Direct Hit boxes
execute store result score @s rsr_direction_x1 run data get entity @s Pos[0] 500
execute store result score @s rsr_direction_y1 run data get entity @s Pos[1] 500
execute store result score @s rsr_direction_z1 run data get entity @s Pos[2] 500

scoreboard players remove @s rsr_direction_x1 250
scoreboard players remove @s rsr_direction_y1 250
scoreboard players remove @s rsr_direction_z1 250



scoreboard players remove @s fixed_rsr_motion_y 300

# 递归找到正确的落点
## 存储基值
scoreboard players operation x rsr_explode_adjust_loop = @s fixed_rsr_motion_x
scoreboard players operation y rsr_explode_adjust_loop = @s fixed_rsr_motion_y
scoreboard players operation z rsr_explode_adjust_loop = @s fixed_rsr_motion_z
## 递归
function test:aug10_fireballtest/weapon/explode_adjust/1
## 现在获取了正确的偏移量。


execute store result storage rsr:explode_adjust xn double 0.002 run scoreboard players operation @s rsr_direction_x1 += @s fixed_rsr_motion_x
execute store result storage rsr:explode_adjust yn double 0.002 run scoreboard players operation @s rsr_direction_y1 += @s fixed_rsr_motion_y
execute store result storage rsr:explode_adjust zn double 0.002 run scoreboard players operation @s rsr_direction_z1 += @s fixed_rsr_motion_z




execute store result storage rsr:explode_adjust owner_pid int 1 run scoreboard players get @s rsr_fireball_shooter

function test:aug10_fireballtest/weapon/explode_new with storage rsr:explode_adjust
