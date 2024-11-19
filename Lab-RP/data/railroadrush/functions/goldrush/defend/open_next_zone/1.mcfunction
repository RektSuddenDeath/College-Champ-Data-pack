
tag @s add rrr_gold_rush_cp_1

fill ~5 ~5 ~5 ~-5 ~-1 ~-5 air replace oxidized_copper
# Summon mobs for next wave

summon zombie ~4 ~ ~6
summon zombie ~15 ~ ~6
summon zombie ~26 ~ ~6
summon zombie ~5 ~ ~-6
summon zombie ~15 ~ ~-6

summon pillager ~5 ~ ~-6
summon pillager ~15 ~ ~-6

execute as @e[type=villager,tag=rrr_gold_rush_defend,sort=nearest,limit=1] at @s run function railroadrush:goldrush/defend/open_next_zone/aggro