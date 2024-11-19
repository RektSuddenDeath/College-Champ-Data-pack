# Set the block below as T1 chest.

execute if block ~ ~-0.8 ~ chest run summon marker ~ ~-0.8 ~ {Tags:["sgchest","tier1"]}
execute if block ~ ~-0.8 ~ chest run tellraw @s "§aSuccessfully placed a T1 chest."

execute unless block ~ ~-0.8 ~ chest run tellraw @s "§cNot standing on a chest!"