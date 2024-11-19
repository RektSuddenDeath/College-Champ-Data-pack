execute if score @s meltdown_fall_death_delay matches 1.. run return 0
execute if block ~ ~-1 ~ air run tag @s add falling_while_frozen
execute if block ~ ~-1 ~ air at @s run fill ~ ~-1 ~ ~ ~5 ~ air replace brown_stained_glass
execute if block ~ ~-1 ~ air at @s positioned ~-0.5 ~ ~-0.5 run kill @e[type=block_display,tag=freeze_ice_block,limit=1,sort=nearest]
execute if block ~ ~-1 ~ air at @s run kill @e[type=marker,tag=freeze_victim_anchor,limit=1,sort=nearest]
execute if block ~ ~-1 ~ air at @s run return 0