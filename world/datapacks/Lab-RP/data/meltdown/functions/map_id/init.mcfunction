
scoreboard objectives remove meltdown_map_id
scoreboard objectives add meltdown_map_id dummy
scoreboard players set @a[team=!spec] meltdown_map_id -1
scoreboard players set $step meltdown_map_id 0
function meltdown:map_id/loop_assign

execute if score round meltdown_game matches 1 run scoreboard players add @a[team=!spec] meltdown_map_id 131
# 416-422
execute if score round meltdown_game matches 2 run scoreboard players add @a[team=!spec] meltdown_map_id 432
# 426 - 432
execute if score round meltdown_game matches 3 run scoreboard players add @a[team=!spec] meltdown_map_id 712