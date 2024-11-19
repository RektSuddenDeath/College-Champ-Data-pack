
execute as @a at @s if block ~ ~-1 ~ emerald_block run effect give @s speed 4 4 true
execute as @a[scores={ar_speedpad=..0}] at @s if block ~ ~-1 ~ emerald_block if score rsound u.launchpad matches 0 run playsound sound.speed_pad_1 record @s
execute as @a[scores={ar_speedpad=..0}] at @s if block ~ ~-1 ~ emerald_block if score rsound u.launchpad matches 1 run playsound sound.speed_pad_2 record @s
execute as @a[scores={ar_speedpad=..0}] at @s if block ~ ~-1 ~ emerald_block if score rsound u.launchpad matches 2 run playsound sound.speed_pad_3 record @s

execute as @a at @s if block ~ ~-1 ~ emerald_block run scoreboard players set @s ar_speedpad 15
scoreboard players remove @a ar_speedpad 1

execute if score gameflag ar_game matches 1 run schedule function acerace2:effectblock/speed5 2t