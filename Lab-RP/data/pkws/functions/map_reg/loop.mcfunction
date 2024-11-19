


scoreboard players set anchors_found pkws_mapreg_temp 0

execute as @a[tag=pkws_map_anchor_flag] at @s run function pkws:map_reg/step_check

execute if entity @e[type=marker,tag=pkws_map_flag,tag=final_checkpoint,tag=operated] run return 1

schedule function pkws:map_reg/loop 1t