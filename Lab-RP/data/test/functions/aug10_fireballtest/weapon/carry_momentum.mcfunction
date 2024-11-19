
tag @s add momentum_modified

execute store result entity @s Motion[0] double 0.0024 run scoreboard players get @s fixed_rsr_motion_x
execute store result entity @s Motion[1] double 0.0024 run scoreboard players get @s fixed_rsr_motion_y
execute store result entity @s Motion[2] double 0.0024 run scoreboard players get @s fixed_rsr_motion_z

