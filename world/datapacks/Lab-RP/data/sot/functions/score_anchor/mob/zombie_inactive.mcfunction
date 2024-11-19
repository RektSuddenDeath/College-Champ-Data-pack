
tellraw @s "Summoned a mob anchor §eZombie, activates when neared"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","mob_anchor","zombie_inactive"]}
data modify entity @e[type=marker,tag=zombie_inactive,sort=nearest,limit=1] data.rotation set from entity @s Rotation[0]
