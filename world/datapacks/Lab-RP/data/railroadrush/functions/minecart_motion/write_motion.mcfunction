
forceload add ~ ~
##
tag @s add motion_modified


## DEBUG: AIRBOUND

#execute at @s unless predicate railroadrush:on_straight_rail unless block ~0.49 ~ ~0.49 #minecraft:rails unless block ~-0.49 ~ ~-0.49 #minecraft:rails unless block ~-0.49 ~ ~0.49 #minecraft:rails unless block ~0.49 ~ ~-0.49 #minecraft:rails unless block ~0.49 ~-1 ~0.49 #minecraft:rails unless block ~-0.49 ~-1 ~-0.49 #minecraft:rails unless block ~-0.49 ~-1 ~0.49 #minecraft:rails unless block ~0.49 ~-1 ~-0.49 #minecraft:rails run data modify entity @s Motion[0] set value 0d
#execute at @s unless predicate railroadrush:on_straight_rail unless block ~0.49 ~ ~0.49 #minecraft:rails unless block ~-0.49 ~ ~-0.49 #minecraft:rails unless block ~-0.49 ~ ~0.49 #minecraft:rails unless block ~0.49 ~ ~-0.49 #minecraft:rails unless block ~0.49 ~-1 ~0.49 #minecraft:rails unless block ~-0.49 ~-1 ~-0.49 #minecraft:rails unless block ~-0.49 ~-1 ~0.49 #minecraft:rails unless block ~0.49 ~-1 ~-0.49 #minecraft:rails run data modify entity @s Motion[2] set value 0d
#execute at @s unless predicate railroadrush:on_straight_rail unless block ~0.49 ~ ~0.49 #minecraft:rails unless block ~-0.49 ~ ~-0.49 #minecraft:rails unless block ~-0.49 ~ ~0.49 #minecraft:rails unless block ~0.49 ~ ~-0.49 #minecraft:rails unless block ~0.49 ~-1 ~0.49 #minecraft:rails unless block ~-0.49 ~-1 ~-0.49 #minecraft:rails unless block ~-0.49 ~-1 ~0.49 #minecraft:rails unless block ~0.49 ~-1 ~-0.49 #minecraft:rails run data modify entity @s Motion[1] set value -0.6d

##



#execute at @s unless block ~ ~ ~ #minecraft:rails run data modify entity @s Motion[0] set value 0d
#execute at @s unless block ~ ~ ~ #minecraft:rails run data modify entity @s Motion[2] set value 0d

#execute at @s unless block ~0.49 ~ ~0.49 #minecraft:rails unless block ~-0.49 ~ ~-0.49 #minecraft:rails unless block ~-0.49 ~ ~0.49 #minecraft:rails unless block ~0.49 ~ ~-0.49 #minecraft:rails unless block ~0.49 ~-1 ~0.49 #minecraft:rails unless block ~-0.49 ~-1 ~-0.49 #minecraft:rails unless block ~-0.49 ~-1 ~0.49 #minecraft:rails unless block ~0.49 ~-1 ~-0.49 #minecraft:rails run return 0
execute at @s unless block ~ ~ ~ #minecraft:rails unless block ~ ~-1 ~ #minecraft:rails run return 0
#execute if entity @s[nbt={OnGround:1b}] run return 0
#execute unless predicate railroadrush:on_straight_rail run data modify entity @s Motion[0] set value 0d
#execute unless predicate railroadrush:on_straight_rail run data modify entity @s Motion[2] set value 0d
#execute if predicate railroadrush:on_turning_rail run return 0

# execute if block ~0.49 ~ ~0.49 rail[shape=north_east] run return 0
# execute if block ~-0.49 ~ ~-0.49 rail[shape=north_east] run return 0
# execute if block ~0.49 ~ ~-0.49 rail[shape=north_east] run return 0
# execute if block ~-0.49 ~ ~0.49 rail[shape=north_east] run return 0

# execute if block ~0.49 ~ ~0.49 rail[shape=north_west] run return 0
# execute if block ~-0.49 ~ ~-0.49 rail[shape=north_west] run return 0
# execute if block ~0.49 ~ ~-0.49 rail[shape=north_west] run return 0
# execute if block ~-0.49 ~ ~0.49 rail[shape=north_west] run return 0


#execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s rrr_last_motion_x
#execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s rrr_last_motion_y
#execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s rrr_last_motion_z

execute if block ~ ~ ~ #rails run tp @s ^0.01 ^ ^
#execute if block ~ ~ ~ rail[shape=north_east] run return 0
#execute if block ~ ~ ~ rail[shape=north_west] run return 0
#execute if block ~ ~ ~ rail[shape=south_east] run return 0
#execute if block ~ ~ ~ rail[shape=south_west] run return 0

execute store result entity @s Motion[0] double 0.000050 run scoreboard players get @s rrr_diff_pos_x
execute store result entity @s Motion[1] double 0.000050 run scoreboard players get @s rrr_diff_pos_y
execute store result entity @s Motion[2] double 0.000050 run scoreboard players get @s rrr_diff_pos_z

#execute if entity @s[nbt={OnGround:1b}] run data merge entity @s {Motion:[0d,0d,0d]}
#execute if entity @s[tag=!first_rail_touched] run data modify entity @s Motion set value [0d,-0.6d,0d]
