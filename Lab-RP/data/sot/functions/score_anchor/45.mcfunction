
tellraw @s "Summoned a score anchor worthy §645 coin(s)"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","value_45"]}
scoreboard players set @e[type=marker,tag=sot_score_anchor,tag=value_45] sot_anchors_scores 45