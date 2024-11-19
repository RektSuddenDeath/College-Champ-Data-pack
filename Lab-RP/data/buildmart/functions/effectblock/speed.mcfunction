

execute as @a at @s if block ~ ~-1 ~ lime_glazed_terracotta[facing=east] run effect give @s speed 4 3 true
execute as @a[scores={bm_spdpad=..0}] at @s if block ~ ~-1 ~ lime_glazed_terracotta[facing=east] if score rsound u.launchpad matches 0 run playsound sound.speed_pad_1 record @s
execute as @a[scores={bm_spdpad=..0}] at @s if block ~ ~-1 ~ lime_glazed_terracotta[facing=east] if score rsound u.launchpad matches 1 run playsound sound.speed_pad_2 record @s
execute as @a[scores={bm_spdpad=..0}] at @s if block ~ ~-1 ~ lime_glazed_terracotta[facing=east] if score rsound u.launchpad matches 2 run playsound sound.speed_pad_3 record @s

execute as @a at @s if block ~ ~-1 ~ lime_glazed_terracotta[facing=east] run scoreboard players set @s bm_spdpad 15
scoreboard players remove @a bm_spdpad 1

