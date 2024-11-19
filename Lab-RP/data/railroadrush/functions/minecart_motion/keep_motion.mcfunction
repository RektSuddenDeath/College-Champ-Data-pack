
# Remove Occupier Marker
execute as @e[type=marker,tag=minecart_occupier] at @s unless predicate railroadrush:is_riding_minecart run kill @s
#execute as @e[type=armor_stand,tag=minecart_occupier] at @s unless predicate railroadrush:is_riding_minecart run kill @s
# Keep motion
execute as @e[type=minecart,tag=rrr_minecart] at @s run function railroadrush:minecart_motion/get_rotation

# Set a Default motion if motion is not set
execute as @e[type=minecart,tag=rrr_minecart,tag=!default_motion_set] run scoreboard players set @s rrr_last_motion_x 400
execute as @e[type=minecart,tag=rrr_minecart,tag=!default_motion_set] run scoreboard players set @s rrr_diff_pos_x 40
execute as @e[type=minecart,tag=rrr_minecart,tag=!default_motion_set] run tag @s add default_motion_set


execute as @e[type=minecart,tag=rrr_minecart] at @s if score @s rrr_last_rail matches 1..4 unless score @s rrr_this_rail matches 1..4 if block ~ ~ ~ rail run function railroadrush:minecart_motion/write_motion
execute as @e[type=minecart,tag=rrr_minecart] at @s if score @s rrr_last_rail matches 0 if block ~ ~ ~ rail run function railroadrush:minecart_motion/write_motion

execute as @e[type=minecart,tag=rrr_minecart] at @s if score @s rrr_last_rail matches 1..4 unless score @s rrr_this_rail matches 1..4 if block ~0.49 ~ ~0.49 powered_rail run function railroadrush:minecart_motion/write_motion_enh
execute as @e[type=minecart,tag=rrr_minecart] at @s if score @s rrr_last_rail matches 1..4 unless score @s rrr_this_rail matches 1..4 if block ~-0.49 ~ ~-0.49 powered_rail run function railroadrush:minecart_motion/write_motion_enh
execute as @e[type=minecart,tag=rrr_minecart] at @s if score @s rrr_last_rail matches 1..4 unless score @s rrr_this_rail matches 1..4 if block ~0.49 ~ ~-0.49 powered_rail run function railroadrush:minecart_motion/write_motion_enh
execute as @e[type=minecart,tag=rrr_minecart] at @s if score @s rrr_last_rail matches 1..4 unless score @s rrr_this_rail matches 1..4 if block ~-0.49 ~ ~0.49 powered_rail run function railroadrush:minecart_motion/write_motion_enh

execute as @e[type=minecart,tag=rrr_minecart] at @s if score @s rrr_last_rail matches 0 if block ~0.49 ~ ~0.49 powered_rail run function railroadrush:minecart_motion/write_motion_enh
execute as @e[type=minecart,tag=rrr_minecart] at @s if score @s rrr_last_rail matches 0 if block ~-0.49 ~ ~-0.49 powered_rail run function railroadrush:minecart_motion/write_motion_enh
execute as @e[type=minecart,tag=rrr_minecart] at @s if score @s rrr_last_rail matches 0 if block ~0.49 ~ ~-0.49 powered_rail run function railroadrush:minecart_motion/write_motion_enh
execute as @e[type=minecart,tag=rrr_minecart] at @s if score @s rrr_last_rail matches 0 if block ~-0.49 ~ ~0.49 powered_rail run function railroadrush:minecart_motion/write_motion_enh

# 连续过弯，恢复一点能量。
# 如果此时在连续过弯，不消耗能量
execute as @e[type=minecart,tag=rrr_minecart] at @s if block ~ ~ ~ #rails if score @s rrr_last_rail matches 1..4 if score @s rrr_this_rail matches 1..4 run tag @s add no_consume
# DEBUG
#execute as @e[type=minecart,tag=rrr_minecart] at @s run tellraw @a[distance=0..10] ["","Last: ",{"score":{"name": "@s","objective": "rrr_last_rotation_x"}}," This: ",{"score":{"name": "@s","objective": "rrr_this_rotation_x"}}]

#function railroadrush:minecart_motion/write_motion_queue

execute as @e[type=minecart,tag=rrr_minecart] run function railroadrush:minecart_motion/update_data
execute if score gameflag rrr_game matches 1 run schedule function railroadrush:minecart_motion/keep_motion 1t