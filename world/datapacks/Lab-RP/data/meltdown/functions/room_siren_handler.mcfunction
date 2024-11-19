
# Loop first because the rest can be cancelled
execute if score gameflag meltdown_game matches 1 run schedule function meltdown:room_siren_handler 1t

scoreboard players add siren_period meltdown_game 1
execute if score siren_period meltdown_game matches 0..39 run return 1
# Only execute a siren on tick 40.
scoreboard players set siren_period meltdown_game 0

execute if score outer_corner meltdown_room_melt_time matches 60..1200 run execute as @e[type=marker,tag=room_center_anchor,tag=outer_corner] at @s positioned ~-27 100 ~-27 run execute as @a[dx=54,dy=180,dz=54] at @s run playsound sound.meltdown_siren record @s ~ ~ ~ 1
execute if score outer_ring meltdown_room_melt_time matches 60..1200 run execute as @e[type=marker,tag=room_center_anchor,tag=outer_ring] at @s positioned ~-27 100 ~-27 run execute as @a[dx=54,dy=180,dz=54] at @s run playsound sound.meltdown_siren record @s ~ ~ ~ 1
execute if score inner_ring meltdown_room_melt_time matches 60..1200 run execute as @e[type=marker,tag=room_center_anchor,tag=inner_ring] at @s positioned ~-27 100 ~-27 run execute as @a[dx=54,dy=180,dz=54] at @s run playsound sound.meltdown_siren record @s ~ ~ ~ 1
execute if score inner_corner meltdown_room_melt_time matches 60..1200 run execute as @e[type=marker,tag=room_center_anchor,tag=inner_corner] at @s positioned ~-27 100 ~-27 run execute as @a[dx=54,dy=180,dz=54] at @s run playsound sound.meltdown_siren record @s ~ ~ ~ 1
execute if score central_core meltdown_room_melt_time matches 60..1200 run execute as @e[type=marker,tag=room_center_anchor,tag=central_core] at @s positioned ~-27 100 ~-27 run execute as @a[dx=54,dy=180,dz=54] at @s run playsound sound.meltdown_siren record @s ~ ~ ~ 1


