
execute if block ~ ~-1 ~ #meltdown:non_solid run return 0
execute if block ~ ~-1 ~ iron_trapdoor[half=bottom] run return 0
execute if block ~ ~-1 ~ iron_trapdoor[open=true] run return 0
execute unless block ~ ~ ~ air run return 0
execute unless block ~ ~1 ~ air run return 0
return 1