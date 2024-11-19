# Set the block below as T2 chest.

execute if block ~ ~-0.8 ~ chest run summon marker ~ ~-0.8 ~ {Tags:["sgchest","tier2"]}
execute if block ~ ~-0.8 ~ chest run tellraw @s "§aSuccessfully placed a T2 chest."

execute unless block ~ ~-0.8 ~ chest run tellraw @s "§cNot standing on a chest!"