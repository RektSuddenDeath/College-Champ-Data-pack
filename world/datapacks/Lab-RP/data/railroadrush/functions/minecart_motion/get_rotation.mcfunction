
execute store result score @s rrr_this_rotation_x run data get entity @s Rotation[0] 1000
execute store result score @s rrr_this_rotation_y run data get entity @s Rotation[1] 1000

# 获取前方的位置
summon marker ^1 ^ ^ {Tags:["rrr_tmp"]}
execute positioned ^1 ^ ^ store result score @s rrr_diff_pos_x run data get entity @e[type=marker,tag=rrr_tmp,sort=nearest,limit=1] Pos[0] 10000
execute positioned ^1 ^ ^ store result score @s rrr_diff_pos_y run data get entity @e[type=marker,tag=rrr_tmp,sort=nearest,limit=1] Pos[1] 10000
execute positioned ^1 ^ ^ store result score @s rrr_diff_pos_z run data get entity @e[type=marker,tag=rrr_tmp,sort=nearest,limit=1] Pos[2] 10000

kill @e[type=marker,tag=rrr_tmp]
# 位置采样
execute store result score @s rrr_this_pos_x run data get entity @s Pos[0] 10000
execute store result score @s rrr_this_pos_y run data get entity @s Pos[1] 10000
execute store result score @s rrr_this_pos_z run data get entity @s Pos[2] 10000

# DIFF
scoreboard players operation @s rrr_diff_pos_x -= @s rrr_this_pos_x
scoreboard players operation @s rrr_diff_pos_y -= @s rrr_this_pos_y
scoreboard players operation @s rrr_diff_pos_z -= @s rrr_this_pos_z

# 铁轨类型采样
scoreboard players set @s rrr_this_rail 0
execute if block ~ ~ ~ rail[shape=north_east] run scoreboard players set @s rrr_this_rail 1
execute if block ~ ~ ~ rail[shape=south_east] run scoreboard players set @s rrr_this_rail 2
execute if block ~ ~ ~ rail[shape=north_west] run scoreboard players set @s rrr_this_rail 3
execute if block ~ ~ ~ rail[shape=south_west] run scoreboard players set @s rrr_this_rail 4

#execute if score @s rrr_diff_pos_x matches 0 if score @s rrr_diff_pos_y matches 0 if score @s rrr_diff_pos_z matches 0 run tellraw @a "WARNING"
# CALCULATE MOTION TO APPLY

execute if score @s rrr_this_rotation_x matches ..-1 run scoreboard players remove @s rrr_this_rotation_x 180
execute if score @s rrr_this_rotation_x matches ..-1 run scoreboard players operation @s rrr_this_rotation_x *= -1 math

scoreboard players operation @s rrr_this_rotation_x %= 360 math
scoreboard players operation @s rrr_this_rotation_y %= 180 math