
execute if score round meltdown_game matches 1 unless predicate meltdown:center_check_round_1 run return 0
execute if score round meltdown_game matches 2 unless predicate meltdown:center_check_round_2 run return 0
execute if score round meltdown_game matches 3 unless predicate meltdown:center_check_round_3 run return 0
execute if block ~ ~ ~ #meltdown:center_melt_ignored run return 0
execute if entity @s[tag=desync_1] run summon marker ~ ~ ~ {Tags:["meltdown_melt_point","central_core_melt_point","desync_1"]}
execute if entity @s[tag=desync_2] run summon marker ~ ~ ~ {Tags:["meltdown_melt_point","central_core_melt_point","desync_2"]}
execute if entity @s[tag=desync_2] run scoreboard players add @e[type=marker,tag=desync_2,sort=nearest,limit=1] meltdown_anchor_lifespan 1
setblock ~ ~ ~ black_concrete

tag @s add has_successful_spread