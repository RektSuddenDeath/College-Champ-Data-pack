
tellraw @s "Summoned a score anchor worthy §66 coin(s)"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","value_6"]}
scoreboard players set @e[type=marker,tag=sot_score_anchor,tag=value_6] sot_anchors_scores 6