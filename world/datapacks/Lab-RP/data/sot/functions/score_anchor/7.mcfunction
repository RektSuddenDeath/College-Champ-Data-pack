
tellraw @s "Summoned a score anchor worthy §67 coin(s)"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","value_7"]}
scoreboard players set @e[type=marker,tag=sot_score_anchor,tag=value_7] sot_anchors_scores 7