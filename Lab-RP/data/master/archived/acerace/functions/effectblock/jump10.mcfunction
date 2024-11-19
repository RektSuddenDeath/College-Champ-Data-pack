
execute as @a at @s if block ~ ~-1 ~ gold_block run effect give @s jump_boost 2 9 true
execute as @a at @s if block ~ ~-1 ~ gold_block run title @s times 0 25 5
execute as @a at @s if block ~ ~-1 ~ gold_block run title @s subtitle [{"text":"获得效果 - 跳跃提升 X","color":"gold"}]
execute as @a at @s if block ~ ~-1 ~ gold_block run title @s title " "
execute if score gameflag ar_game matches 1 run schedule function acerace:effectblock/jump10 2t