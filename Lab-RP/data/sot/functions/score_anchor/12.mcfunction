
tellraw @s "Summoned a score anchor worthy §612 coin(s)"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","value_12"]}
scoreboard players set @e[type=marker,tag=sot_score_anchor,tag=value_12] sot_anchors_scores 12