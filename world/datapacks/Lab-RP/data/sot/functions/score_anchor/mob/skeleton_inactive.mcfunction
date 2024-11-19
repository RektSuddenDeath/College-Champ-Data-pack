
tellraw @s "Summoned a mob anchor §eSkeleton, activates when neared"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","mob_anchor","skeleton_inactive"]}
data modify entity @e[type=marker,tag=skeleton_inactive,sort=nearest,limit=1] data.rotation set from entity @s Rotation[0]
