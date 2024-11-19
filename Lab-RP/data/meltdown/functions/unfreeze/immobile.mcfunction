
execute as @a[tag=meltdown_frozen,tag=!falling_while_frozen] at @s if block ~ ~-1 ~ air run function meltdown:unfreeze/falling_while_frozen
execute as @a[tag=meltdown_frozen,tag=!falling_while_frozen,scores={meltdown_fall_death_delay=1..},nbt={OnGround:1b}] at @s run function meltdown:unfreeze/late_freeze
execute as @a[tag=meltdown_frozen,tag=!falling_while_frozen] at @s run function meltdown:unfreeze/teleport_to_ice
