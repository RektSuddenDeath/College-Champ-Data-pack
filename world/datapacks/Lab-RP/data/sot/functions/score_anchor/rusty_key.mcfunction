
tellraw @s "Summoned a score anchor worthy §7a Rusty Key"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","value_rusty"]}
scoreboard players set @e[type=marker,tag=sot_score_anchor,tag=value_rusty] sot_anchors_scores 0