execute at @s if block ~1 ~ ~ #meltdown:invalid_spread_blocks if block ~ ~1 ~ #meltdown:invalid_spread_blocks if block ~ ~ ~1 #meltdown:invalid_spread_blocks if block ~-1 ~ ~ #meltdown:invalid_spread_blocks if block ~ ~-1 ~ #meltdown:invalid_spread_blocks if block ~ ~ ~-1 #meltdown:invalid_spread_blocks if block ~-1 ~ ~-1 #meltdown:invalid_spread_blocks if block ~1 ~ ~-1 #meltdown:invalid_spread_blocks if block ~-1 ~ ~1 #meltdown:invalid_spread_blocks if block ~1 ~ ~1 #meltdown:invalid_spread_blocks if block ~-1 ~1 ~-1 #meltdown:invalid_spread_blocks if block ~1 ~1 ~-1 #meltdown:invalid_spread_blocks if block ~-1 ~1 ~1 #meltdown:invalid_spread_blocks if block ~1 ~1 ~1 #meltdown:invalid_spread_blocks if block ~-1 ~-1 ~-1 #meltdown:invalid_spread_blocks if block ~1 ~-1 ~-1 #meltdown:invalid_spread_blocks if block ~-1 ~-1 ~1 #meltdown:invalid_spread_blocks if block ~1 ~-1 ~1 #meltdown:invalid_spread_blocks run tag @s add has_successful_spread
execute at @s if block ~1 ~ ~ #meltdown:invalid_spread_blocks if block ~ ~1 ~ #meltdown:invalid_spread_blocks if block ~ ~ ~1 #meltdown:invalid_spread_blocks if block ~-1 ~ ~ #meltdown:invalid_spread_blocks if block ~ ~-1 ~ #meltdown:invalid_spread_blocks if block ~ ~ ~-1 #meltdown:invalid_spread_blocks if block ~-1 ~ ~-1 #meltdown:invalid_spread_blocks if block ~1 ~ ~-1 #meltdown:invalid_spread_blocks if block ~-1 ~ ~1 #meltdown:invalid_spread_blocks if block ~1 ~ ~1 #meltdown:invalid_spread_blocks if block ~-1 ~1 ~-1 #meltdown:invalid_spread_blocks if block ~1 ~1 ~-1 #meltdown:invalid_spread_blocks if block ~-1 ~1 ~1 #meltdown:invalid_spread_blocks if block ~1 ~1 ~1 #meltdown:invalid_spread_blocks if block ~-1 ~-1 ~-1 #meltdown:invalid_spread_blocks if block ~1 ~-1 ~-1 #meltdown:invalid_spread_blocks if block ~-1 ~-1 ~1 #meltdown:invalid_spread_blocks if block ~1 ~-1 ~1 #meltdown:invalid_spread_blocks run return 0

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= outer_ring meltdown_melt_point_spread_chance run execute positioned ~ ~1 ~ run function meltdown:room_melt/try_spread/block_valid/outer_ring

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= outer_ring meltdown_melt_point_spread_chance run execute positioned ~1 ~ ~ run function meltdown:room_melt/try_spread/block_valid/outer_ring

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= outer_ring meltdown_melt_point_spread_chance run execute positioned ~-1 ~ ~ run function meltdown:room_melt/try_spread/block_valid/outer_ring

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= outer_ring meltdown_melt_point_spread_chance run execute positioned ~ ~-1 ~ run function meltdown:room_melt/try_spread/block_valid/outer_ring

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= outer_ring meltdown_melt_point_spread_chance run execute positioned ~ ~ ~1 run function meltdown:room_melt/try_spread/block_valid/outer_ring

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= outer_ring meltdown_melt_point_spread_chance run execute positioned ~ ~ ~-1 run function meltdown:room_melt/try_spread/block_valid/outer_ring

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= outer_ring meltdown_melt_point_spread_chance run execute positioned ~1 ~ ~-1 run function meltdown:room_melt/try_spread/block_valid/outer_ring

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= outer_ring meltdown_melt_point_spread_chance run execute positioned ~-1 ~ ~-1 run function meltdown:room_melt/try_spread/block_valid/outer_ring

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= outer_ring meltdown_melt_point_spread_chance run execute positioned ~1 ~ ~1 run function meltdown:room_melt/try_spread/block_valid/outer_ring

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= outer_ring meltdown_melt_point_spread_chance run execute positioned ~-1 ~ ~1 run function meltdown:room_melt/try_spread/block_valid/outer_ring

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= outer_ring meltdown_melt_point_spread_chance run execute positioned ~1 ~1 ~-1 run function meltdown:room_melt/try_spread/block_valid/outer_ring

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= outer_ring meltdown_melt_point_spread_chance run execute positioned ~-1 ~1 ~-1 run function meltdown:room_melt/try_spread/block_valid/outer_ring

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= outer_ring meltdown_melt_point_spread_chance run execute positioned ~1 ~1 ~1 run function meltdown:room_melt/try_spread/block_valid/outer_ring

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= outer_ring meltdown_melt_point_spread_chance run execute positioned ~-1 ~1 ~1 run function meltdown:room_melt/try_spread/block_valid/outer_ring

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= outer_ring meltdown_melt_point_spread_chance run execute positioned ~1 ~-1 ~-1 run function meltdown:room_melt/try_spread/block_valid/outer_ring

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= outer_ring meltdown_melt_point_spread_chance run execute positioned ~-1 ~-1 ~-1 run function meltdown:room_melt/try_spread/block_valid/outer_ring

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= outer_ring meltdown_melt_point_spread_chance run execute positioned ~1 ~-1 ~1 run function meltdown:room_melt/try_spread/block_valid/outer_ring

execute store result score @s meltdown_melt_point_random run random value 1..10
execute if score @s meltdown_melt_point_random <= outer_ring meltdown_melt_point_spread_chance run execute positioned ~-1 ~-1 ~1 run function meltdown:room_melt/try_spread/block_valid/outer_ring

# Try again next cycle if spreading has failed
scoreboard players set @s meltdown_anchor_lifespan 0