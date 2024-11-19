
tellraw @s "Summoned a score anchor worthy §610 coin(s)"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","value_10"]}
scoreboard players set @e[type=marker,tag=sot_score_anchor,tag=value_10] sot_anchors_scores 10