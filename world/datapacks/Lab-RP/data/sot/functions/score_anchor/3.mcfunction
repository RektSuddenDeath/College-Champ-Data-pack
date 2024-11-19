
tellraw @s "Summoned a score anchor worthy §63 coin(s)"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","value_3"]}
scoreboard players set @e[type=marker,tag=sot_score_anchor,tag=value_3] sot_anchors_scores 3