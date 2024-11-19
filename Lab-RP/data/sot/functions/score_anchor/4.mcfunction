
tellraw @s "Summoned a score anchor worthy §64 coin(s)"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","value_4"]}
scoreboard players set @e[type=marker,tag=sot_score_anchor,tag=value_4] sot_anchors_scores 4