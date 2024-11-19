
tellraw @s "Summoned a score anchor worthy §69 coin(s)"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","value_9"]}
scoreboard players set @e[type=marker,tag=sot_score_anchor,tag=value_9] sot_anchors_scores 9