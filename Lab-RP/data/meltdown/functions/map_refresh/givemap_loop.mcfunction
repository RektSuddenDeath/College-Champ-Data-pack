execute store result storage temp_meltdown_map mainhand_id int 1 run scoreboard players add current_mainhand_id temp_meltdown_map 2
execute store result storage temp_meltdown_map offhand_id int 1 run scoreboard players add current_offhand_id temp_meltdown_map 2
function meltdown:map_refresh/macro_givemap with storage temp_meltdown_map


execute if score current_mainhand_id temp_meltdown_map matches 78..113 run schedule function meltdown:map_refresh/givemap_loop 1t
execute if score current_mainhand_id temp_meltdown_map matches 78..113 run return 1
scoreboard objectives remove temp_meltdown_map
clear @a[gamemode=spectator] filled_map
clear @a[gamemode=creative] filled_map