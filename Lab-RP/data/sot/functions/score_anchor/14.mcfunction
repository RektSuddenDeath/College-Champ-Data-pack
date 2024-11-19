
tellraw @s "Summoned a score anchor worthy §614 coin(s)"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","value_14"]}
scoreboard players set @e[type=marker,tag=sot_score_anchor,tag=value_14] sot_anchors_scores 14