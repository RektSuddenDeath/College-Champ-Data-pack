
execute as @a at @s if block ~ ~-1 ~ purpur_block run item replace entity @s container.1 with oak_boat
execute as @a at @s if block ~ ~-1 ~ purpur_block run title @s times 0 20 5
execute as @a at @s if block ~ ~-1 ~ purpur_block run title @s subtitle [{"text":"获得 - 船","color":"green"}]
execute as @a at @s if block ~ ~-1 ~ purpur_block run title @s title " "
execute if score gameflag ar_game matches 1 run schedule function acerace:effectblock/boat 2t