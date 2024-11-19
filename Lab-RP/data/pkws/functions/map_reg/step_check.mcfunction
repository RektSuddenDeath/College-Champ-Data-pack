
execute positioned ~-12 0 ~-12 as @e[type=marker,tag=pkws_map_flag,tag=generic_checkpoint,tag=!operated,dx=24,dy=320,dz=24] run scoreboard players add anchors_found pkws_mapreg_temp 1

execute if score anchors_found pkws_mapreg_temp matches 3.. run function pkws:map_reg/checkpoint_tag
execute positioned ~-12 0 ~-12 if entity @e[type=marker,tag=pkws_map_flag,tag=final_checkpoint,tag=!operated,dx=24,dy=320,dz=24] run function pkws:map_reg/final_tag


execute if score anchors_found pkws_mapreg_temp matches 0 run tp @s ~6 ~ ~
execute if score anchors_found pkws_mapreg_temp matches 1..2 run tp @s ~1 ~ ~
execute if score anchors_found pkws_mapreg_temp matches 3.. run tp @s ~6 ~ ~

execute if entity @e[type=marker,tag=pkws_map_flag,tag=final_checkpoint,tag=operated] run tag @s remove pkws_map_anchor_flag
