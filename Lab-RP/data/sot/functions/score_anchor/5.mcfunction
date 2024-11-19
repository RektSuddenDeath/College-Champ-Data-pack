
tellraw @s "Summoned a score anchor worthy §65 coin(s)"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","value_5"]}
scoreboard players set @e[type=marker,tag=sot_score_anchor,tag=value_5] sot_anchors_scores 5