
tellraw @s "Summoned a mob anchor §eFourcreepers Creeper"
summon marker ~ ~ ~ {Tags:["sot_score_anchor","origin","mob_anchor","fourcreepers_mob"]}
data modify entity @e[type=marker,tag=fourcreepers_mob,sort=nearest,limit=1] data.rotation set from entity @s Rotation[0]
