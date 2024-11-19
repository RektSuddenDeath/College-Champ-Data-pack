tag @s add has_successful_spread

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= central_core meltdown_melt_point_spread_chance run execute positioned ~ ~1 ~ run function meltdown:room_melt/try_spread/block_valid/central_core

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= central_core meltdown_melt_point_spread_chance run execute positioned ~1 ~ ~ run function meltdown:room_melt/try_spread/block_valid/central_core

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= central_core meltdown_melt_point_spread_chance run execute positioned ~ ~ ~-1 run function meltdown:room_melt/try_spread/block_valid/central_core

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= central_core meltdown_melt_point_spread_chance run execute positioned ~ ~ ~1 run function meltdown:room_melt/try_spread/block_valid/central_core

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= central_core meltdown_melt_point_spread_chance run execute positioned ~-1 ~ ~ run function meltdown:room_melt/try_spread/block_valid/central_core

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= central_core meltdown_melt_point_spread_chance run execute positioned ~ ~-1 ~ run function meltdown:room_melt/try_spread/block_valid/central_core

# Try again next cycle if spreading has failed
scoreboard players set @s meltdown_anchor_lifespan 0