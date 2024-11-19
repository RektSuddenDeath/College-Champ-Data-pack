# 逻辑：房间开始融化后生成8个融化起始点，不在有效方块上的起始点清除，如果最后的有效点不足3个则重复生成一次
# 房间融化开始后X tick，每Y tick会将所有现存的融化点尝试往全部方向扩散一次，并有Z概率成功。每个方向分别计算概率。
# 扩散成功一次的融化点不再扩散。融化点对应的方块固定在扩散成功70ticks后移除
# X   | Y  | Z
# 000 | 100| 0.3
# 200 | 80 | 0.3
# 360 | 60 | 0.3
# 480 | 50 | 0.3
# 600 | 40 | 0.2
# 720 | 25 | 0.2
# 800 | 20 | 0.2
# 880 | 10  | 0.2
# 960 | 5  | 0.2

# Adjust Melt Point Spread times
scoreboard players add outer_corner meltdown_room_melt_time 1
scoreboard players add outer_ring meltdown_room_melt_time 1
scoreboard players add inner_corner meltdown_room_melt_time 1
scoreboard players add inner_ring meltdown_room_melt_time 1
scoreboard players add central_core meltdown_room_melt_time 1

execute if score outer_corner meltdown_room_melt_time matches 200 run scoreboard players set outer_corner meltdown_melt_point_spread_time 80
execute if score outer_corner meltdown_room_melt_time matches 360 run scoreboard players set outer_corner meltdown_melt_point_spread_time 60
execute if score outer_corner meltdown_room_melt_time matches 480 run scoreboard players set outer_corner meltdown_melt_point_spread_time 50
execute if score outer_corner meltdown_room_melt_time matches 600 run scoreboard players set outer_corner meltdown_melt_point_spread_time 40
execute if score outer_corner meltdown_room_melt_time matches 720 run scoreboard players set outer_corner meltdown_melt_point_spread_time 25
execute if score outer_corner meltdown_room_melt_time matches 800 run scoreboard players set outer_corner meltdown_melt_point_spread_time 20
execute if score outer_corner meltdown_room_melt_time matches 880 run scoreboard players set outer_corner meltdown_melt_point_spread_time 10
execute if score outer_corner meltdown_room_melt_time matches 960 run scoreboard players set outer_corner meltdown_melt_point_spread_time 5

execute if score outer_corner meltdown_room_melt_time matches 200 run scoreboard players set outer_corner meltdown_melt_point_spread_chance 3
execute if score outer_corner meltdown_room_melt_time matches 360 run scoreboard players set outer_corner meltdown_melt_point_spread_chance 3
execute if score outer_corner meltdown_room_melt_time matches 480 run scoreboard players set outer_corner meltdown_melt_point_spread_chance 3
execute if score outer_corner meltdown_room_melt_time matches 600 run scoreboard players set outer_corner meltdown_melt_point_spread_chance 2
execute if score outer_corner meltdown_room_melt_time matches 720 run scoreboard players set outer_corner meltdown_melt_point_spread_chance 2
execute if score outer_corner meltdown_room_melt_time matches 800 run scoreboard players set outer_corner meltdown_melt_point_spread_chance 2
execute if score outer_corner meltdown_room_melt_time matches 880 run scoreboard players set outer_corner meltdown_melt_point_spread_chance 2
execute if score outer_corner meltdown_room_melt_time matches 960 run scoreboard players set outer_corner meltdown_melt_point_spread_chance 2

execute if score outer_ring meltdown_room_melt_time matches 200 run scoreboard players set outer_ring meltdown_melt_point_spread_time 80
execute if score outer_ring meltdown_room_melt_time matches 360 run scoreboard players set outer_ring meltdown_melt_point_spread_time 60
execute if score outer_ring meltdown_room_melt_time matches 480 run scoreboard players set outer_ring meltdown_melt_point_spread_time 50
execute if score outer_ring meltdown_room_melt_time matches 600 run scoreboard players set outer_ring meltdown_melt_point_spread_time 40
execute if score outer_ring meltdown_room_melt_time matches 720 run scoreboard players set outer_ring meltdown_melt_point_spread_time 25
execute if score outer_ring meltdown_room_melt_time matches 800 run scoreboard players set outer_ring meltdown_melt_point_spread_time 20
execute if score outer_ring meltdown_room_melt_time matches 880 run scoreboard players set outer_ring meltdown_melt_point_spread_time 10
execute if score outer_ring meltdown_room_melt_time matches 960 run scoreboard players set outer_ring meltdown_melt_point_spread_time 5

execute if score outer_ring meltdown_room_melt_time matches 200 run scoreboard players set outer_ring meltdown_melt_point_spread_chance 3
execute if score outer_ring meltdown_room_melt_time matches 360 run scoreboard players set outer_ring meltdown_melt_point_spread_chance 3
execute if score outer_ring meltdown_room_melt_time matches 480 run scoreboard players set outer_ring meltdown_melt_point_spread_chance 3
execute if score outer_ring meltdown_room_melt_time matches 600 run scoreboard players set outer_ring meltdown_melt_point_spread_chance 2
execute if score outer_ring meltdown_room_melt_time matches 720 run scoreboard players set outer_ring meltdown_melt_point_spread_chance 2
execute if score outer_ring meltdown_room_melt_time matches 800 run scoreboard players set outer_ring meltdown_melt_point_spread_chance 2
execute if score outer_ring meltdown_room_melt_time matches 880 run scoreboard players set outer_ring meltdown_melt_point_spread_chance 2
execute if score outer_ring meltdown_room_melt_time matches 960 run scoreboard players set outer_ring meltdown_melt_point_spread_chance 2

execute if score inner_corner meltdown_room_melt_time matches 200 run scoreboard players set inner_corner meltdown_melt_point_spread_time 80
execute if score inner_corner meltdown_room_melt_time matches 360 run scoreboard players set inner_corner meltdown_melt_point_spread_time 60
execute if score inner_corner meltdown_room_melt_time matches 480 run scoreboard players set inner_corner meltdown_melt_point_spread_time 50
execute if score inner_corner meltdown_room_melt_time matches 600 run scoreboard players set inner_corner meltdown_melt_point_spread_time 40
execute if score inner_corner meltdown_room_melt_time matches 720 run scoreboard players set inner_corner meltdown_melt_point_spread_time 25
execute if score inner_corner meltdown_room_melt_time matches 800 run scoreboard players set inner_corner meltdown_melt_point_spread_time 20
execute if score inner_corner meltdown_room_melt_time matches 880 run scoreboard players set inner_corner meltdown_melt_point_spread_time 10
execute if score inner_corner meltdown_room_melt_time matches 960 run scoreboard players set inner_corner meltdown_melt_point_spread_time 5

execute if score inner_corner meltdown_room_melt_time matches 200 run scoreboard players set inner_corner meltdown_melt_point_spread_chance 3
execute if score inner_corner meltdown_room_melt_time matches 360 run scoreboard players set inner_corner meltdown_melt_point_spread_chance 3
execute if score inner_corner meltdown_room_melt_time matches 480 run scoreboard players set inner_corner meltdown_melt_point_spread_chance 3
execute if score inner_corner meltdown_room_melt_time matches 600 run scoreboard players set inner_corner meltdown_melt_point_spread_chance 2
execute if score inner_corner meltdown_room_melt_time matches 720 run scoreboard players set inner_corner meltdown_melt_point_spread_chance 2
execute if score inner_corner meltdown_room_melt_time matches 800 run scoreboard players set inner_corner meltdown_melt_point_spread_chance 2
execute if score inner_corner meltdown_room_melt_time matches 880 run scoreboard players set inner_corner meltdown_melt_point_spread_chance 2
execute if score inner_corner meltdown_room_melt_time matches 960 run scoreboard players set inner_corner meltdown_melt_point_spread_chance 2

execute if score inner_ring meltdown_room_melt_time matches 200 run scoreboard players set inner_ring meltdown_melt_point_spread_time 80
execute if score inner_ring meltdown_room_melt_time matches 360 run scoreboard players set inner_ring meltdown_melt_point_spread_time 60
execute if score inner_ring meltdown_room_melt_time matches 480 run scoreboard players set inner_ring meltdown_melt_point_spread_time 50
execute if score inner_ring meltdown_room_melt_time matches 600 run scoreboard players set inner_ring meltdown_melt_point_spread_time 40
execute if score inner_ring meltdown_room_melt_time matches 720 run scoreboard players set inner_ring meltdown_melt_point_spread_time 25
execute if score inner_ring meltdown_room_melt_time matches 800 run scoreboard players set inner_ring meltdown_melt_point_spread_time 20
execute if score inner_ring meltdown_room_melt_time matches 880 run scoreboard players set inner_ring meltdown_melt_point_spread_time 10
execute if score inner_ring meltdown_room_melt_time matches 960 run scoreboard players set inner_ring meltdown_melt_point_spread_time 5

execute if score inner_ring meltdown_room_melt_time matches 200 run scoreboard players set inner_ring meltdown_melt_point_spread_chance 3
execute if score inner_ring meltdown_room_melt_time matches 360 run scoreboard players set inner_ring meltdown_melt_point_spread_chance 3
execute if score inner_ring meltdown_room_melt_time matches 480 run scoreboard players set inner_ring meltdown_melt_point_spread_chance 3
execute if score inner_ring meltdown_room_melt_time matches 600 run scoreboard players set inner_ring meltdown_melt_point_spread_chance 2
execute if score inner_ring meltdown_room_melt_time matches 720 run scoreboard players set inner_ring meltdown_melt_point_spread_chance 3
execute if score inner_ring meltdown_room_melt_time matches 800 run scoreboard players set inner_ring meltdown_melt_point_spread_chance 2
execute if score inner_ring meltdown_room_melt_time matches 880 run scoreboard players set inner_ring meltdown_melt_point_spread_chance 2
execute if score inner_ring meltdown_room_melt_time matches 960 run scoreboard players set inner_ring meltdown_melt_point_spread_chance 2

execute if score central_core meltdown_room_melt_time matches 200 run scoreboard players set central_core meltdown_melt_point_spread_time 80
execute if score central_core meltdown_room_melt_time matches 360 run scoreboard players set central_core meltdown_melt_point_spread_time 60
execute if score central_core meltdown_room_melt_time matches 480 run scoreboard players set central_core meltdown_melt_point_spread_time 30
execute if score central_core meltdown_room_melt_time matches 600 run scoreboard players set central_core meltdown_melt_point_spread_time 25
execute if score central_core meltdown_room_melt_time matches 720 run scoreboard players set central_core meltdown_melt_point_spread_time 20
execute if score central_core meltdown_room_melt_time matches 800 run scoreboard players set central_core meltdown_melt_point_spread_time 15
execute if score central_core meltdown_room_melt_time matches 880 run scoreboard players set central_core meltdown_melt_point_spread_time 10
execute if score central_core meltdown_room_melt_time matches 960 run scoreboard players set central_core meltdown_melt_point_spread_time 5

execute if score central_core meltdown_room_melt_time matches 200 run scoreboard players set central_core meltdown_melt_point_spread_chance 8
execute if score central_core meltdown_room_melt_time matches 360 run scoreboard players set central_core meltdown_melt_point_spread_chance 8
execute if score central_core meltdown_room_melt_time matches 480 run scoreboard players set central_core meltdown_melt_point_spread_chance 8
execute if score central_core meltdown_room_melt_time matches 600 run scoreboard players set central_core meltdown_melt_point_spread_chance 8
execute if score central_core meltdown_room_melt_time matches 720 run scoreboard players set central_core meltdown_melt_point_spread_chance 8
execute if score central_core meltdown_room_melt_time matches 800 run scoreboard players set central_core meltdown_melt_point_spread_chance 8
execute if score central_core meltdown_room_melt_time matches 880 run scoreboard players set central_core meltdown_melt_point_spread_chance 8
execute if score central_core meltdown_room_melt_time matches 960 run scoreboard players set central_core meltdown_melt_point_spread_chance 8

# Melt Component
scoreboard players add @e[type=marker,tag=meltdown_melt_point] meltdown_anchor_lifespan 1


execute as @e[type=marker,tag=meltdown_melt_point,tag=!has_successful_spread,tag=outer_corner_melt_point] if score @s meltdown_anchor_lifespan >= outer_corner meltdown_melt_point_spread_time at @s run function meltdown:room_melt/try_spread/outer_corner
execute as @e[type=marker,tag=meltdown_melt_point,tag=!has_successful_spread,tag=outer_ring_melt_point] if score @s meltdown_anchor_lifespan >= outer_ring meltdown_melt_point_spread_time at @s run function meltdown:room_melt/try_spread/outer_ring
execute as @e[type=marker,tag=meltdown_melt_point,tag=!has_successful_spread,tag=inner_corner_melt_point] if score @s meltdown_anchor_lifespan >= inner_corner meltdown_melt_point_spread_time at @s run function meltdown:room_melt/try_spread/inner_corner
execute as @e[type=marker,tag=meltdown_melt_point,tag=!has_successful_spread,tag=inner_ring_melt_point] if score @s meltdown_anchor_lifespan >= inner_ring meltdown_melt_point_spread_time at @s run function meltdown:room_melt/try_spread/inner_ring
execute as @e[type=marker,tag=meltdown_melt_point,tag=!has_successful_spread,tag=central_core_melt_point] if score @s meltdown_anchor_lifespan >= central_core meltdown_melt_point_spread_time at @s run function meltdown:room_melt/try_spread/central_core



execute as @e[type=marker,tag=meltdown_melt_point,tag=central_core_melt_point,tag=has_successful_spread,scores={meltdown_anchor_lifespan=10..}] at @s run function meltdown:room_melt/remove_block
execute as @e[type=marker,tag=meltdown_melt_point,tag=has_successful_spread,tag=!central_core_melt_point,scores={meltdown_anchor_lifespan=70..}] at @s run function meltdown:room_melt/remove_block

execute if score gameflag meltdown_game matches 1 run schedule function meltdown:room_melt/loop 1t 