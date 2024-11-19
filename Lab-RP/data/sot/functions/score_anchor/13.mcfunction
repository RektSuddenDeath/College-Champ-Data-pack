
tellraw @s "Summoned a score anchor worthy §613 coin(s)"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","value_13"]}
scoreboard players set @e[type=marker,tag=sot_score_anchor,tag=value_13] sot_anchors_scores 13