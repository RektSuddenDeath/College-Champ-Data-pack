
scoreboard players set total_value sot_anchors_scores 0
execute as @e[type=marker,tag=sot_score_anchor,tag=origin] run scoreboard players operation total_value sot_anchors_scores += @s sot_anchors_scores

scoreboard players set rusty_keys sot_anchors_scores 0
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_rusty] run scoreboard players add rusty_keys sot_anchors_scores 1

scoreboard players set arrow sot_anchors_scores 0
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_arrow] run scoreboard players add arrow sot_anchors_scores 1

scoreboard players set torch sot_anchors_scores 0
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=value_torch] run scoreboard players add torch sot_anchors_scores 1

scoreboard players set room sot_anchors_scores 0
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=room_anchor] run scoreboard players add room sot_anchors_scores 1

scoreboard players set mob sot_anchors_scores 0
execute as @e[type=marker,tag=sot_score_anchor,tag=origin,tag=mob_anchor] run scoreboard players add mob sot_anchors_scores 1

tellraw @s ["Total Anchor Scores: ",{"score":{"name": "total_value","objective": "sot_anchors_scores"},"color":"green"}]
tellraw @s ["Total Rusty Keys: ",{"score":{"name": "rusty_keys","objective": "sot_anchors_scores"},"color":"gray"}]
tellraw @s ["Total Sets of Torches: ",{"score":{"name": "torch","objective": "sot_anchors_scores"},"color":"gray"}]
tellraw @s ["Total Sets of Arrows: ",{"score":{"name": "arrow","objective": "sot_anchors_scores"},"color":"gray"}]
tellraw @s ["Total Room Anchors: ",{"score":{"name": "room","objective": "sot_anchors_scores"},"color":"gray"}]
tellraw @s ["Total Preset Mobs: ",{"score":{"name": "mob","objective": "sot_anchors_scores"},"color":"gray"}]