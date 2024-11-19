
tellraw @s "Began correcting angles of mobs"
scoreboard objectives add temp_sot_anchor_rot dummy
execute as @e[type=marker,tag=origin,tag=mob_anchor] store result score @s temp_sot_anchor_rot run data get entity @s data.rotation
execute as @e[type=marker,tag=origin,tag=mob_anchor] if score @s temp_sot_anchor_rot matches -190..-170 run data modify entity @s data.rotation set value -180f
execute as @e[type=marker,tag=origin,tag=mob_anchor] if score @s temp_sot_anchor_rot matches -145..-125 run data modify entity @s data.rotation set value -135f
execute as @e[type=marker,tag=origin,tag=mob_anchor] if score @s temp_sot_anchor_rot matches -100..-80 run data modify entity @s data.rotation set value -90f
execute as @e[type=marker,tag=origin,tag=mob_anchor] if score @s temp_sot_anchor_rot matches -55..-35 run data modify entity @s data.rotation set value -45f
execute as @e[type=marker,tag=origin,tag=mob_anchor] if score @s temp_sot_anchor_rot matches -10..10 run data modify entity @s data.rotation set value 0f
execute as @e[type=marker,tag=origin,tag=mob_anchor] if score @s temp_sot_anchor_rot matches 35..55 run data modify entity @s data.rotation set value 45f
execute as @e[type=marker,tag=origin,tag=mob_anchor] if score @s temp_sot_anchor_rot matches 80..100 run data modify entity @s data.rotation set value 90f
execute as @e[type=marker,tag=origin,tag=mob_anchor] if score @s temp_sot_anchor_rot matches 125..145 run data modify entity @s data.rotation set value 135f
execute as @e[type=marker,tag=origin,tag=mob_anchor] if score @s temp_sot_anchor_rot matches 170..190 run data modify entity @s data.rotation set value 180f
scoreboard objectives remove temp_sot_anchor_rot
tellraw @s "Completed correcting angles."