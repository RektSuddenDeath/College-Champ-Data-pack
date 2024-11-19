
tellraw @s "Summoned a mob anchor §eRed Vault blaze"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","mob_anchor","redvaultblaze"]}
data modify entity @e[type=marker,tag=redvaultblaze,sort=nearest,limit=1] data.rotation set from entity @s Rotation[0]
