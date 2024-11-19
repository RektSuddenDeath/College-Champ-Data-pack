
execute if block ~ ~-0.93 ~ slime_block unless block ~ ~-2.93 ~ diamond_block run setblock ~ ~-2.93 ~ emerald_block
execute if block ~ ~-0.93 ~ slime_block unless block ~ ~-2.93 ~ diamond_block run setblock ~ ~-0.93 ~ honey_block

execute if block ~ ~-0.93 ~ honey_block unless block ~ ~-2.93 ~ emerald_block run setblock ~ ~-2.93 ~ diamond_block
execute if block ~ ~-0.93 ~ honey_block unless block ~ ~-2.93 ~ emerald_block run setblock ~ ~-0.93 ~ slime_block

clone ~ ~-2.93 ~ ~ ~-2.93 ~ ~ ~-3.93 ~