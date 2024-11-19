
# General Anchor

execute positioned ~-12 0 ~-12 as @e[type=marker,tag=pkws_map_flag,tag=generic_checkpoint,tag=!operated,dx=24,dy=320,dz=24] run scoreboard players operation @s pkws_anchor_sequence = $current_flag pkws_anchor_sequence

# Leap Gate Anchor

execute positioned ~-12 0 ~-12 as @e[type=item_display,tag=pkws_map_flag,tag=leap_gate,tag=!operated,dx=24,dy=320,dz=24] run scoreboard players operation @s pkws_anchor_sequence = $current_flag pkws_anchor_sequence_leap_gate
execute positioned ~-12 0 ~-12 as @e[type=block_display,tag=pkws_map_flag,tag=leap_gate,tag=!operated,dx=24,dy=320,dz=24] run scoreboard players operation @s pkws_anchor_sequence = $current_flag pkws_anchor_sequence_leap_gate
execute positioned ~-12 0 ~-12 as @e[type=text_display,tag=pkws_map_flag,tag=leap_gate,tag=!operated,dx=24,dy=320,dz=24] run scoreboard players operation @s pkws_anchor_sequence = $current_flag pkws_anchor_sequence_leap_gate





# cleanup
scoreboard players add $current_flag pkws_anchor_sequence 1

execute positioned ~-12 0 ~-12 if entity @e[type=item_display,tag=pkws_map_flag,tag=leap_gate,tag=!operated,dx=24,dy=320,dz=24] run scoreboard players add $current_flag pkws_anchor_sequence_leap_gate 1