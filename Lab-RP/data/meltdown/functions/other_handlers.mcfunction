
# Arrow
execute as @e[type=arrow,tag=particle_wait_2] at @s run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 0 normal @a
tag @e[type=arrow,tag=particle_wait] add particle_wait_2
tag @e[type=arrow,tag=!particle_wait] add particle_wait


kill @e[type=arrow,nbt={inGround:1b}]

# Frozen Player particle
execute as @a[scores={meltdown_player_is_frozen=1}] at @s run particle snowflake ~ ~1 ~ 0.04 0.04 0.04 0 0


# Crates Broken
execute as @a[scores={meltdown_crates_broken=1..}] run function meltdown:mined_a_crate

scoreboard players set @a meltdown_crates_broken 0
# Room Siren

execute if score gameflag meltdown_game matches 1 run schedule function meltdown:other_handlers 1t