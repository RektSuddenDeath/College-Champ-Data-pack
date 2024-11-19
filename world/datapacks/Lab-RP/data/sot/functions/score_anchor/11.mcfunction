
tellraw @s "Summoned a score anchor worthy §611 coin(s)"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","value_11"]}
scoreboard players set @e[type=marker,tag=sot_score_anchor,tag=value_11] sot_anchors_scores 11