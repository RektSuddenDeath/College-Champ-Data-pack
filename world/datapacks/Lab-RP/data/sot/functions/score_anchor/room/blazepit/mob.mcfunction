
tellraw @s "Summoned a mob anchor §eBlaze Pit blaze"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","mob_anchor","blazepit_mob"]}
data modify entity @e[type=marker,tag=blazepit_mob,sort=nearest,limit=1] data.rotation set from entity @s Rotation[0]
