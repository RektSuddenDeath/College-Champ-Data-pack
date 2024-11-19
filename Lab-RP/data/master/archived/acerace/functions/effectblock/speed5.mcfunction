
execute as @a at @s if block ~ ~-1 ~ emerald_block run effect give @s speed 5 4 true
execute as @a at @s if block ~ ~-1 ~ emerald_block run title @s times 0 20 5
execute as @a at @s if block ~ ~-1 ~ emerald_block run title @s subtitle [{"text":"获得效果 - 速度 V","color":"aqua"}]
execute as @a at @s if block ~ ~-1 ~ emerald_block run title @s title " "
execute if score gameflag ar_game matches 1 run schedule function acerace:effectblock/speed5 2t