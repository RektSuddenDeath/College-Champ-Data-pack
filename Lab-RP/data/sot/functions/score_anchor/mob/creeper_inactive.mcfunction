
tellraw @s "Summoned a mob anchor §eCreeper, activates when neared"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","mob_anchor","creeper_inactive"]}
data modify entity @e[type=marker,tag=creeper_inactive,sort=nearest,limit=1] data.rotation set from entity @s Rotation[0]
