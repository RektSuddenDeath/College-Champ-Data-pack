
tellraw @s "Summoned a mob anchor §eYellow Vault Husk"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","mob_anchor","yellowvaultmob"]}
data modify entity @e[type=marker,tag=yellowvaultmob,sort=nearest,limit=1] data.rotation set from entity @s Rotation[0]
