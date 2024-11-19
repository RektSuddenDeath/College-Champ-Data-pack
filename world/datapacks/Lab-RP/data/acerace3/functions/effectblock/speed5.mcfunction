
execute as @a at @s if block ~0.49 ~-1 ~0.49 emerald_block run tag @s add speed_pad_active
execute as @a at @s if block ~-0.49 ~-1 ~0.49 emerald_block run tag @s add speed_pad_active
execute as @a at @s if block ~-0.49 ~-1 ~-0.49 emerald_block run tag @s add speed_pad_active
execute as @a at @s if block ~0.49 ~-1 ~-0.49 emerald_block run tag @s add speed_pad_active

effect give @a[tag=speed_pad_active] speed 4 1 true

execute as @a[scores={ar_speedpad=..0},tag=speed_pad_active] at @s if score rsound u.launchpad matches 0 run playsound sound.speed_pad_1 record @s
execute as @a[scores={ar_speedpad=..0},tag=speed_pad_active] at @s if score rsound u.launchpad matches 1 run playsound sound.speed_pad_2 record @s
execute as @a[scores={ar_speedpad=..0},tag=speed_pad_active] at @s if score rsound u.launchpad matches 2 run playsound sound.speed_pad_3 record @s

scoreboard players set @a[tag=speed_pad_active] ar_speedpad 15
scoreboard players remove @a ar_speedpad 1

tag @a remove speed_pad_active
execute if score gameflag ar_game matches 1 run schedule function acerace3:effectblock/speed5 2t