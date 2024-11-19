
tellraw @s "Summoned a score anchor worthy §68 coin(s)"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","value_8"]}
scoreboard players set @e[type=marker,tag=sot_score_anchor,tag=value_8] sot_anchors_scores 8