
scoreboard players add $step meltdown_map_id 1
execute as @r[scores={meltdown_map_id=-1},team=!spec] run scoreboard players operation @s meltdown_map_id = $step meltdown_map_id

execute if entity @a[scores={meltdown_map_id=-1},team=!spec] run function meltdown:map_id/loop_assign