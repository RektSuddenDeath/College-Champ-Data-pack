
execute unless block ~ ~ ~ #meltdown:meltable_blocks run return 0
summon marker ~ ~ ~ {Tags:["meltdown_melt_point","inner_ring_melt_point"]}
setblock ~ ~ ~ black_concrete

tag @s add has_successful_spread