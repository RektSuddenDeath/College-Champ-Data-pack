
tellraw @s "Summoned a score anchor worthy §62 coin(s)"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","value_2"]}
scoreboard players set @e[type=marker,tag=sot_score_anchor,tag=value_2] sot_anchors_scores 2