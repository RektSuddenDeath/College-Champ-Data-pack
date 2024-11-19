# 位置有关修改信息

execute unless score @s rrr_this_pos_x = @s rrr_last_pos_x run scoreboard players set @s rrr_minecart_stationaries 0
execute unless score @s rrr_this_pos_y = @s rrr_last_pos_y run scoreboard players set @s rrr_minecart_stationaries 0
execute unless score @s rrr_this_pos_z = @s rrr_last_pos_z run scoreboard players set @s rrr_minecart_stationaries 0


execute if score @s rrr_this_pos_x = @s rrr_last_pos_x if score @s rrr_this_pos_y = @s rrr_last_pos_y if score @s rrr_this_pos_z = @s rrr_last_pos_z run scoreboard players add @s rrr_minecart_stationaries 1

# Clear ALL power under certain circumstances
## Not moving for too long
execute at @s if score @s rrr_minecart_stationaries matches 5.. run scoreboard players set @s rrr_minecart_power 0
## In Solid Block
execute at @s unless block ~ ~ ~ air unless block ~ ~ ~ #rails run scoreboard players set @s rrr_minecart_power 0
## Derailed
#execute if entity @s[nbt={OnGround:1b}] at @s unless block ~ ~ ~ #rails unless block ~ ~-1 ~ air unless block ~ ~-1 ~ #rails run scoreboard players set @s rrr_minecart_power 0


## DEBUG
#execute if score @s rrr_minecart_stationaries matches 10 run tellraw @a ["X:",{"score":{"name": "@s","objective": "rrr_this_pos_x"}},"§c/",{"score":{"name": "@s","objective": "rrr_last_pos_x"}},"§b//",{"nbt":"Pos[0]","entity":"@s"},"\nY:",{"score":{"name": "@s","objective": "rrr_this_pos_y"}},"§c/",{"score":{"name": "@s","objective": "rrr_last_pos_y"}},"§b//",{"nbt":"Pos[1]","entity":"@s"},"\nZ:",{"score":{"name": "@s","objective": "rrr_this_pos_z"}},"§c/",{"score":{"name": "@s","objective": "rrr_last_pos_z"}},"§b//",{"nbt":"Pos[2]","entity":"@s"}]
##

scoreboard players operation @s rrr_last_pos_x = @s rrr_this_pos_x
scoreboard players operation @s rrr_last_pos_y = @s rrr_this_pos_y
scoreboard players operation @s rrr_last_pos_z = @s rrr_this_pos_z

# Others
#execute at @s unless block ~0.49 ~ ~0.49 #minecraft:rails unless block ~-0.49 ~ ~-0.49 #minecraft:rails unless block ~-0.49 ~ ~0.49 #minecraft:rails unless block ~0.49 ~ ~-0.49 #minecraft:rails unless block ~0.49 ~-1 ~0.49 #minecraft:rails unless block ~-0.49 ~-1 ~-0.49 #minecraft:rails unless block ~-0.49 ~-1 ~0.49 #minecraft:rails unless block ~0.49 ~-1 ~-0.49 #minecraft:rails run return 0
scoreboard players operation @s rrr_last_rotation_x = @s rrr_this_rotation_x
scoreboard players operation @s rrr_last_rotation_y = @s rrr_this_rotation_y

scoreboard players operation @s rrr_is_straight = @s rrr_last_rotation_x
execute if score @s rrr_is_straight matches ..-1 run scoreboard players operation @s rrr_is_straight *= -1 rrr_is_straight
scoreboard players operation @s rrr_is_straight %= 90 rrr_is_straight

execute store result score @s rrr_last_motion_x run data get entity @s Motion[0] 1000
execute store result score @s rrr_last_motion_y run data get entity @s Motion[1] 1000
execute store result score @s rrr_last_motion_z run data get entity @s Motion[2] 1000

# Rail Type
scoreboard players operation @s rrr_last_rail = @s rrr_this_rail

#execute if score @s rrr_is_straight matches 0 if score @s rrr_last_motion_x matches 0 if score @s rrr_last_motion_z matches 1.. run scoreboard players set @s rrr_last_motion_z 480
#execute if score @s rrr_is_straight matches 0 if score @s rrr_last_motion_x matches 0 if score @s rrr_last_motion_z matches ..-1 run scoreboard players set @s rrr_last_motion_z -480

#execute if score @s rrr_is_straight matches 0 if score @s rrr_last_motion_z matches 0 if score @s rrr_last_motion_x matches 1.. run scoreboard players set @s rrr_last_motion_x 480
#execute if score @s rrr_is_straight matches 0 if score @s rrr_last_motion_z matches 0 if score @s rrr_last_motion_x matches ..-1 run scoreboard players set @s rrr_last_motion_x -480

## DEBUG
#execute as @e[type=minecart,tag=rrr_minecart] at @s run particle cloud ^ ^ ^0.5 0 0 0 0 1
#execute as @e[type=minecart,tag=rrr_minecart] at @s run particle angry_villager ^0.5 ^ ^ 0 0 0 0 1

