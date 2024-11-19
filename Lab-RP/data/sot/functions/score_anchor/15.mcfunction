
tellraw @s "Summoned a score anchor worthy §615 coin(s)"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","value_15"]}
scoreboard players set @e[type=marker,tag=sot_score_anchor,tag=value_15] sot_anchors_scores 15