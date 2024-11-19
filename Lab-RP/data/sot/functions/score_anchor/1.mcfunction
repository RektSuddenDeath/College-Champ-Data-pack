
tellraw @s "Summoned a score anchor worthy §61 coin(s)"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","value_1"]}
scoreboard players set @e[type=marker,tag=sot_score_anchor,tag=value_1] sot_anchors_scores 1